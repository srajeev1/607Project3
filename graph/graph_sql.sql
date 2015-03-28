

-- get clean movies and nominations
DROP TABLE IF EXISTS academy_data_clean;

select distinct trim(movie_name) movie_name,trim(category_name) category_name,won
INTO TEMPORARY TABLE academy_data_clean
from nominations n
INNER JOIN category c ON c.category_id = n.category_id + 1
INNER JOIN movie m ON m.movie_id = n.movie_id
order by movie_name, category_name;

-- get all nomination permutations
DROP TABLE IF EXISTS academy_data_perms;

SELECT 
        n.movie_name movie0,
            n1.movie_name movie1,
            n.category_name
                || CASE
                WHEN n.won = 1 THEN ' - WON'
                ELSE ''
            END node0,
            n1.category_name
                || CASE
                WHEN n1.won = 1 THEN ' - WON'
                ELSE ''
            END node1
INTO TEMPORARY TABLE academy_data_perms
FROM
    academy_data_clean n
INNER JOIN academy_data_clean n1 ON n.movie_name = n1.movie_name
    AND n1.category_name <> n.category_name
ORDER BY n.movie_name;

-- ADD movies that only got one nomination
INSERT INTO academy_data_perms 
select movie_name ,'none',category_name,'No other nominations'
from academy_data_clean 
where movie_name not in (select movie0 from academy_data_perms);


-- ADD movies that only got one nomination
INSERT INTO academy_data_perms 
select movie_name ,'none',category_name,'No other nominations'
from academy_data_clean 
where movie_name not in (select movie0 from academy_data_perms);


-- get all nominations for a movie
DROP TABLE IF EXISTS academy_graph_data;

SELECT 
    node0 source,
    node1 target,
    COUNT(*) as count
INTO TABLE academy_graph_data
FROM
    academy_data_perms
GROUP BY node0 , node1
ORDER BY 3 DESC;

DROP SEQUENCE IF EXISTS user_id_seq;
CREATE SEQUENCE user_id_seq;
ALTER TABLE academy_graph_data ADD record_id BIGINT PRIMARY KEY DEFAULT NEXTVAL('user_id_seq');

-- get repeated permutations 2-way nodes
DROP TABLE IF EXISTS academy_graph_dups;

select distinct record_id
into temporary table academy_graph_dups
from (
	select g1.source, g1.target, least(min(g0.record_id),min(g1.record_id)) record_id
	from academy_graph_data g0
	INNER join academy_graph_data g1 on g0.source = g1.target and g0.target=g1.source and g0.count = g1.count
	group by g1.source,g1.target
)as t;

-- delete dups form table 
DELETE FROM academy_graph_data t
where record_id in  (Select record_id from academy_graph_dups);

-- get grand total
DROP TABLE IF EXISTS total_count;

SELECT sum(count)
INTO TEMPORARY TABLE total_count 
FROM academy_graph_data;

-- add weight of edge
ALTER TABLE academy_graph_data add weight DECIMAL(6,2);

UPDATE academy_graph_data
SET weight = count;

alter TABLE academy_graph_data DROP record_id;

select * from academy_graph_data;


