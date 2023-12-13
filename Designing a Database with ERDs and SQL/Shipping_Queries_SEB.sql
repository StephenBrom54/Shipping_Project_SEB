USE shipping;
-- Query 1: Count the number of containers for each ship
SELECT ship_id, COUNT(container_id) AS num_containers
FROM containers
GROUP BY ship_id;

-- Query 2: List the names of ships that have containers with weight greater than 5000 pounds
SELECT ship_name
FROM ships
WHERE ship_id IN (
    SELECT ship_id
    FROM containers
    WHERE weight > 5000
);

-- Query 3: Calculate the volume of a container (assuming volume = height * width * length)
SELECT container_id, height * width * length AS volume
FROM containers
WHERE container_id = 1;

-- Query 4: List ship names and weights of containers currently on ships
SELECT ships.ship_name, containers.weight
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id;

-- Query 5: List port names and weights of containers currently in ports
SELECT ports.port_name, containers.weight
FROM ports
JOIN containers ON ports.port_id = containers.port_id;

-- Query 6: List ship names, container weights, and port names for each container
SELECT ships.ship_name, containers.weight, ports.port_name
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id
JOIN ports ON ports.port_id = containers.port_id;

-- Query 7: List ship names and weights of containers with weight greater than 5000 pounds
SELECT ships.ship_name, containers.weight
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id
WHERE containers.weight > 5000;

-- Query 8: List port names and weights of containers with weight greater than 5000 pounds
SELECT ports.port_name, containers.weight
FROM ports
JOIN containers ON ports.port_id = containers.port_id
WHERE containers.weight > 5000;

-- Query 9: List ship names, container weights, and port names for containers with weight greater than 5000 pounds
SELECT ships.ship_name, containers.weight, ports.port_name
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id
JOIN ports ON ports.port_id = containers.port_id
WHERE containers.weight > 5000;

-- Query 10: List ship names, container weights, and port names for containers with weight greater than 5000 pounds, ordered by container weight descending
SELECT ships.ship_name, containers.weight, ports.port_name
FROM ships
JOIN containers ON ships.ship_id = containers.ship_id
JOIN ports ON ports.port_id = containers.port_id
WHERE containers.weight > 5000
ORDER BY containers.weight DESC;