CREATE DATABASE TallerDatabase
ON 
( NAME = Taller, 
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Taller.mdf', 
  SIZE = 3MB, 
  FILEGROWTH = 1MB )
LOG ON
( NAME = Taller_Log, 
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Taller_log.ldf', 
  SIZE = 1MB, 
  FILEGROWTH = 1MB );

  BACKUP DATABASE Biblioteca
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Taller.bak'
WITH FORMAT,
MEDIANAME = 'TallerBackup',
NAME = 'Copia de seguridad de Taller';