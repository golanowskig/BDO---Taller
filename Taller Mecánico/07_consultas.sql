--8.Crea una consulta para saber el valor de todas las reparaciones de un veh�culo--

USE TallerDatabase
SELECT Matr�cula, SUM(Importe_Total) AS Importe_total_reparaciones FROM Reparaciones
GROUP BY Matr�cula


--9.Crea una consulta para saber las reparaciones pendientes de facturar--

USE TallerDatabase
SELECT Reparaci�n_ID, Matr�cula, Factura_ID FROM Reparaciones
WHERE Factura_ID IS NULL

--10.Crea una consulta para saber qu� veh�culos a�n no han sido reparados--

USE TallerDatabase
SELECT Reparaci�n_ID, Matr�cula, Factura_ID FROM Reparaciones
WHERE Factura_ID IS NULL