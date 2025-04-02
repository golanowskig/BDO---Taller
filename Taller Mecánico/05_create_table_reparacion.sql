--create tabla reparaciones--

USE TallerDatabase
CREATE TABLE Reparaciones
(
	Reparaci�n_ID INT IDENTITY(1,1) PRIMARY KEY,
	Fecha FechaReparacion_type , 
	Matr�cula VARCHAR(8) NOT NULL,
	CONSTRAINT Matr�cula_const FOREIGN KEY (Matr�cula) REFERENCES Vehiculos(Matr�cula),
	Descripci�n Descripcion_type, 
	Valor_Materiales ValorMateriales_type ,
	Horas_Reparaci�n HorasReparacion_type DEFAULT 0.5, 
	Precio_Reparacion AS (Horas_Reparaci�n * 50),
	Importe_Total AS ((Horas_Reparaci�n * 50) + Valor_Materiales),
	Factura_ID FacturaID_type,
	CONSTRAINT Factura_ID FOREIGN KEY (Factura_ID) REFERENCES Facturas(Facturas_ID),
	CONSTRAINT HorasMinimo_const CHECK (Horas_Reparaci�n >= 0.25),
);

