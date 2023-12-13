CREATE DATABASE shipping;
USE shipping;

CREATE TABLE shipments (
    shipment_id INT AUTO_INCREMENT,
    origin VARCHAR(255),
    destination VARCHAR(255),
    weight DECIMAL(10, 2),
    shipment_date DATE,
    PRIMARY KEY (shipment_id)
);
USE shipping;

CREATE TABLE ports (
    port_id INT AUTO_INCREMENT,
    port_name VARCHAR(255),
    country VARCHAR(255),
    PRIMARY KEY (port_id)
);
USE shipping;

CREATE TABLE ships (
    ship_id INT AUTO_INCREMENT,
    ship_name VARCHAR(255) UNIQUE,
    displacement INT NOT NULL,
    captain_name VARCHAR(255) NOT NULL,
    num_crew INT NOT NULL,
    home_port VARCHAR(255) NOT NULL,
    year_built INT NOT NULL,
    capacity INT,
    PRIMARY KEY (ship_id)
);
USE shipping;

CREATE TABLE containers (
    container_id INT AUTO_INCREMENT,
    ship_id INT,
    port_id INT,
    height INT,
    width INT,
    length INT,
    weight DECIMAL(10, 2),
    container_date DATE,
    PRIMARY KEY (container_id),
    FOREIGN KEY (ship_id) REFERENCES ships(ship_id),
    FOREIGN KEY (port_id) REFERENCES ports(port_id)
);