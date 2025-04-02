--create tabla vehiculos

USE TallerDatabase
CREATE TABLE Vehiculos
(
	Matrícula Matricula_type PRIMARY KEY,
	Marca Marca_type,
	Modelo Modelo_type,
	AñoMatriculacion YearMatriculacion_type,
	Kilometraje Kilometraje_type,
	Combustible Combustible_type,
	TipoCambio TipoCambio_type,
	PotenciaMotor PotenciaMotor_type,
	NIF NIF_type, 
	CONSTRAINT CombustibleTipos_const CHECK (Combustible IN ('Gasolina', 'Diesel', 'Híbrido', 'Eléctrico')),
	CONSTRAINT TipoCambio_const CHECK (TipoCambio IN ('Manual', 'Automático')),
);