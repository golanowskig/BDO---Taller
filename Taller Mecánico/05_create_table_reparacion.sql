--create tabla reparaciones--

USE TallerDatabase
CREATE TABLE Reparaciones
(
	Reparación_ID INT IDENTITY(1,1) PRIMARY KEY,
	Fecha FechaReparacion_type , 
	Matrícula VARCHAR(8) NOT NULL,
	CONSTRAINT Matrícula_const FOREIGN KEY (Matrícula) REFERENCES Vehiculos(Matrícula),
	Descripción Descripcion_type, 
	Valor_Materiales ValorMateriales_type ,
	Horas_Reparación HorasReparacion_type DEFAULT 0.5, 
	Precio_Reparacion AS (Horas_Reparación * 50),
	Importe_Total AS ((Horas_Reparación * 50) + Valor_Materiales),
	Factura_ID FacturaID_type,
	CONSTRAINT Factura_ID FOREIGN KEY (Factura_ID) REFERENCES Facturas(Facturas_ID),
	CONSTRAINT HorasMinimo_const CHECK (Horas_Reparación >= 0.25),
);

