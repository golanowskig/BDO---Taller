--create tabla vehiculos

USE TallerDatabase
CREATE TABLE Vehiculos
(
	Matr�cula Matricula_type PRIMARY KEY,
	Marca Marca_type,
	Modelo Modelo_type,
	A�oMatriculacion YearMatriculacion_type,
	Kilometraje Kilometraje_type,
	Combustible Combustible_type,
	TipoCambio TipoCambio_type,
	PotenciaMotor PotenciaMotor_type,
	NIF NIF_type, 
	CONSTRAINT CombustibleTipos_const CHECK (Combustible IN ('Gasolina', 'Diesel', 'H�brido', 'El�ctrico')),
	CONSTRAINT TipoCambio_const CHECK (TipoCambio IN ('Manual', 'Autom�tico')),
);