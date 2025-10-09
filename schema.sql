CREATE TABLE motion_sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    device_name VARCHAR(100),
    data_time DATETIME,
    value BOOLEAN
);

CREATE TABLE distance_sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    device_name VARCHAR(100),
    data_time DATETIME,
    value FLOAT
);

CREATE TABLE rf_id (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    device_name VARCHAR(100),
    data_time DATETIME,
    value TEXT
);

CREATE TABLE light (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    device_name VARCHAR(100),
    data_time DATETIME,
    value TEXT
);

CREATE TABLE get_sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    device_name VARCHAR(100),
    data_time DATETIME,
    value BOOLEAN
);

CREATE TABLE parking (
    id INT PRIMARY KEY AUTO_INCREMENT,
    place_name VARCHAR(100),
    status VARCHAR(50)
);
