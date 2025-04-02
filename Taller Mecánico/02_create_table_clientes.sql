--CREATE TABLE CLIENTES--

USE TallerDatabase
CREATE TABLE Clientes
(
	Cliente_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	NIF NIF_Type,
	Nombre Nombre_type,
	Apellido1 Apellido1_type,
	Apellido2 Apellido2_type,
	Direcci�n Direccion_type,
	Poblaci�n Poblacion_type,
	CP CP_type,
	Tel�fono Telefono_type,
	Correo Correo_type,
	CONSTRAINT Mail_const CHECK (Correo LIKE ('%_@_%_._%'))
);
