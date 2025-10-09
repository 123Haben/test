CREATE TABLE parking (
    id INT PRIMARY KEY AUTO_INCREMENT,
    place_name VARCHAR(50),
    status ENUM('free', 'occupied', 'reserved') DEFAULT 'free'
);

CREATE TABLE car (
    id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(20),
    owner_name VARCHAR(100),
    rf_id_tag VARCHAR(100) UNIQUE
);

CREATE TABLE device (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    type ENUM('motion', 'rfid', 'light', 'distance', 'get'),
    parking_id INT,
    FOREIGN KEY (parking_id) REFERENCES parking(id)
);

CREATE TABLE motion_sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    data_time DATETIME,
    value BOOLEAN,
    FOREIGN KEY (device_id) REFERENCES device(id)
);

CREATE TABLE rf_id (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    data_time DATETIME,
    value VARCHAR(100), -- RFID-Tag erkannt
    FOREIGN KEY (device_id) REFERENCES device(id)
);

CREATE TABLE reservation (
    id INT PRIMARY KEY AUTO_INCREMENT,
    car_id INT,
    parking_id INT,
    start_time DATETIME,
    end_time DATETIME,
    status ENUM('active', 'completed', 'cancelled'),
    FOREIGN KEY (car_id) REFERENCES car(id),
    FOREIGN KEY (parking_id) REFERENCES parking(id)
);

CREATE TABLE light (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    data_time DATETIME,
    value FLOAT,
    FOREIGN KEY (device_id) REFERENCES device(id)
);

CREATE TABLE get_sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    data_time DATETIME,
    value BOOLEAN,
    FOREIGN KEY (device_id) REFERENCES device(id)
);

