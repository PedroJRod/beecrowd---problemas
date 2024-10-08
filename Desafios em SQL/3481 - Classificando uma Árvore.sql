SELECT DISTINCT node_id, 
case
WHEN node_id = 50 THEN 'ROOT'
WHEN pointer IS NULL THEN 'LEAF'
ELSE 'INNER'
END AS type
FROM nodes
ORDER BY node_id;
