CREATE TABLE vehiculo (
    id SERIAL PRIMARY KEY,
    placa VARCHAR(15) UNIQUE NOT NULL,
    propietario VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    hora_ingreso VARCHAR(10) NOT NULL,
    horas_utilizadas INT NOT NULL CHECK (horas_utilizadas > 0),
    costo NUMERIC(10, 2) NOT NULL CHECK (costo >= 0),
    activo BOOLEAN DEFAULT TRUE NOT NULL
);



INSERT INTO vehiculo (placa, propietario, tipo, hora_ingreso, horas_utilizadas, costo)
VALUES 
('P-123ABC', 'Juan Perez', 'Automovil', '08:00', 3, 30.00),
('M-987XYZ', 'Maria Lopez', 'Motocicleta', '09:15', 6, 32.40),
('P-456DEF', 'Carlos Gomez', 'Automovil', '10:30', 6, 54.00),
('M-654CBA', 'Ana Martinez', 'Motocicleta', '11:00', 2, 12.00),
('P-789GHI', 'Luis Ramirez', 'Automovil', '12:00', 4, 40.00);



SELECT id, placa, propietario, tipo, hora_ingreso, horas_utilizadas, costo, activo FROM vehiculo;
SELECT * FROM vehiculo WHERE tipo = 'Automovil';
SELECT * FROM vehiculo WHERE costo > 35.00;
SELECT * FROM vehiculo ORDER BY costo DESC;



UPDATE vehiculo SET horas_utilizadas = 5, costo = 50.00 WHERE placa = 'P-123ABC';
UPDATE vehiculo SET activo = FALSE WHERE placa = 'M-654CBA';
DELETE FROM vehiculo WHERE placa = 'P-789GHI';

SELECT * FROM vehiculo;

INSERT INTO vehiculo (placa, propietario, tipo, hora_ingreso, horas_utilizadas, costo)
VALUES ('P-123ABC', 'Pedro Marmol', 'Automovil', '14:00', 2, 20.00);



INSERT INTO vehiculo (placa, propietario, tipo, hora_ingreso, horas_utilizadas, costo)
VALUES ('P-000ERR', 'Error Test', 'Automovil', '15:00', -2, 20.00);
