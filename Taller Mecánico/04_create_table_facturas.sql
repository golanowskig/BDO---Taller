--create tabla facturas--

USE TallerDatabase
CREATE TABLE Facturas
(
	Facturas_ID INT IDENTITY(1,1) PRIMARY KEY,
	Teléfono Telefono_type,
	FechaFactura FechaFactura_type,
	Cliente_ID INT NOT NULL,
	CONSTRAINT ClienteID_const FOREIGN KEY (Cliente_ID) REFERENCES Clientes(Cliente_ID),
	Matrícula VARCHAR(8) NOT NULL,
	CONSTRAINT Matrícula FOREIGN KEY (Matrícula) REFERENCES Vehiculos(Matrícula),
	Kilometraje Kilometraje_type,
	Importe_sinIVA ImporteSinIVA_type,
	IVA AS (Importe_sinIVA *0.21),
	ImporteTotal AS (Importe_sinIVA *1.21)
);

