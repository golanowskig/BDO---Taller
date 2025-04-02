--Inserta 4 clientes--

INSERT INTO Clientes
VALUES ('12345678A', 'Juan', 'P�rez', 'G�mez', 'Calle Mayor, 10', 'Barcelona', '08001', '612345678', 'juanperez@gmail.com'),
('87654321B', 'Mar�a', 'L�pez', 'Mart�nez', 'Avenida Sol, 25', 'Madrid', '28013', '622345678', 'marialopez@hotmail.com'),
('11223344C', 'Luis', 'Mart�n', 'S�nchez', 'Calle Luna, 7', 'Valencia', '46001', '632345678', 'luismartin@yahoo.com'),
('44332211D', 'Ana', 'Garc�a', 'Fern�ndez', 'Paseo Mar�timo, 12', 'M�laga', '29015', '642345678', 'anagarcia@gmail.com');

--Inserta 4 veh�culos--

INSERT INTO Vehiculos
VALUES ('8888ABC', 'Toyota', 'Corolla', 2018, 50000, 'Gasolina', 'Manual', 120, '12345678A'),
('5678DEF', 'Tesla', 'Model 3', 2021, 20000, 'El�ctrico', 'Autom�tico', 258, '87654321B'),
('9101GHI', 'BMW', 'X5', 2019, 35000, 'H�brido', 'Autom�tico', 286, '11223344C'),
('1213JKL', 'Ford', 'Focus', 2017, 80000, 'Diesel', 'Manual', 150, '44332211D')

--Inserta 4 reparaciones a dos veh�culos--

INSERT INTO Reparaciones
VALUES 
('2025-04-01', '8888ABC', 'Cambio de frenos', 1200, 1.5, NULL),
('2025-04-03', '5678DEF', 'Revisi�n general', 200, 3, NULL),
('2025-04-05', '9101GHI', 'Cambio de bater�a', 180, 2.5, NULL),
('2025-04-07', '1213JKL', 'Reparaci�n de aire acondicionado', 250, 4, NULL);

--inserta 2 facturas para dos reparaciones--

INSERT INTO Facturas
VALUES ('612345678', '2025-03-27', '1', '8888ABC', 50000, 1275),
('622345678', '2025-03-28', '2', '5678DEF', 20000, 350);

--HAGO UN UPDATE DE LA TABLA DE REPARACIONES--
UPDATE Reparaciones
SET Factura_ID = 1 WHERE Matr�cula = '8888ABC';

UPDATE Reparaciones
SET Factura_ID = 2 WHERE Matr�cula = '5678DEF';
