USE shipping;

INSERT INTO ports (port_name, country)
VALUES ('Port of Los Angeles', 'USA'),
       ('Port of Shanghai', 'China'),
       ('Port of Singapore', 'Singapore'),
       ('Port of Antwerp', 'Belgium'),
       ('Port of Hamburg', 'Germany');

INSERT INTO ships (ship_name, displacement, captain_name, num_crew, home_port, year_built, capacity)
VALUES
    ('MSC Gulsun', 5000, 'Captain A', 150, 'Port of Los Angeles', 2018, 23000),
    ('OOCL Hong Kong', 5500, 'Captain B', 160, 'Port of Shanghai', 2019, 21000),
    ('COSCO Shipping Universe', 6000, 'Captain C', 170, 'Port of Singapore', 2020, 21000),
    ('CMA CGM Antoine de Saint Exupery', 6500, 'Captain D', 180, 'Port of Antwerp', 2021, 20000),
    ('Madrid Maersk', 7000, 'Captain E', 190, 'Port of Hamburg', 2022, 20000),
    ('Ever Golden', 7500, 'Captain F', 200, 'Port of Los Angeles', 2023, 20000),
    ('MOL Truth', 8000, 'Captain G', 210, 'Port of Shanghai', 2017, 20000),
    ('MOL Triumph', 8500, 'Captain H', 220, 'Port of Singapore', 2016, 20000),
    ('Cosco Shipping Taurus', 9000, 'Captain I', 230, 'Port of Antwerp', 2015, 20000),
    ('Barzan', 9500, 'Captain J', 240, 'Port of Hamburg', 2014, 20000);

INSERT INTO containers (container_id, ship_id, port_id, height, width, length, weight, container_date)
VALUES
    (1, 1, 1, 8, 10, 20, 2000, '2023-12-01'),
    (2, 1, 2, 8, 8, 10, 2500, '2023-12-02'),
    (3, 2, 3, 10, 12, 25, 3000, '2023-12-03'),
    (4, 2, 4, 9, 11, 22, 3500, '2023-12-04'),
    (5, 3, 5, 7, 9, 18, 4000, '2023-12-05'),
    (6, 3, 1, 8, 10, 20, 4500, '2023-12-06'),
    (7, 4, 2, 8, 8, 10, 5000, '2023-12-07'),
    (8, 4, 3, 10, 12, 25, 5500, '2023-12-08'),
    (9, 5, 4, 9, 11, 22, 6000, '2023-12-09'),
    (10, 5, 5, 7, 9, 18, 6500, '2023-12-10'),
    (11, 6, 1, 8, 10, 20, 7000, '2023-12-11'),
    (12, 6, 2, 8, 8, 10, 7500, '2023-12-12'),
    (13, 7, 3, 10, 12, 25, 8000, '2023-12-13'),
    (14, 7, 4, 9, 11, 22, 8500, '2023-12-14'),
    (15, 8, 5, 7, 9, 18, 9000, '2023-12-15'),
    (16, 8, 1, 8, 10, 20, 9500, '2023-12-16'),
    (17, 9, 2, 8, 8, 10, 10000, '2023-12-17'),
    (18, 9, 3, 10, 12, 25, 10500, '2023-12-18'),
    (19, 10, 4, 9, 11, 22, 11000, '2023-12-19'),
    (20, 10, 5, 7, 9, 18, 11500, '2023-12-20');