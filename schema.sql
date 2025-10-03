-- Parkplätze
CREATE TABLE parking_slots (
    id SERIAL PRIMARY KEY,
    slot_name VARCHAR(10) UNIQUE NOT NULL,
    status VARCHAR(10) NOT NULL DEFAULT 'frei'
);

-- Historie
CREATE TABLE parking_history (
    id SERIAL PRIMARY KEY,
    slot_id INT REFERENCES parking_slots(id) ON DELETE CASCADE,
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP,
    duration INTERVAL
);

-- Reservierungen
CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    slot_id INT REFERENCES parking_slots(id) ON DELETE CASCADE,
    reserved_from TIMESTAMP NOT NULL,
    reserved_until TIMESTAMP NOT NULL,
    reserved_by VARCHAR(50)
);

-- Startdaten für 3 Plätze
INSERT INTO parking_slots (slot_name, status) VALUES
('P1', 'frei'),
('P2', 'frei'),
('P3', 'frei');
