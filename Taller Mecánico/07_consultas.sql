--8.Crea una consulta para saber el valor de todas las reparaciones de un vehículo--

USE TallerDatabase
SELECT Matrícula, SUM(Importe_Total) AS Importe_total_reparaciones FROM Reparaciones
GROUP BY Matrícula


--9.Crea una consulta para saber las reparaciones pendientes de facturar--

USE TallerDatabase
SELECT Reparación_ID, Matrícula, Factura_ID FROM Reparaciones
WHERE Factura_ID IS NULL

--10.Crea una consulta para saber qué vehículos aún no han sido reparados--

USE TallerDatabase
SELECT Reparación_ID, Matrícula, Factura_ID FROM Reparaciones
WHERE Factura_ID IS NULL