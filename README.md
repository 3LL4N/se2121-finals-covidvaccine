# se2121-finals-covidvaccine
Dieron, Joeviemar Ellan T.

(1)
All respective columns on each table have been assigned their respective data types,
with all primary keys being NOT NULL and int primary keys are BIGSERIALS which allows
the database to auto-generate the IDs and has a higher int limit than SERIALS.

All varchar data types have been set to (255) since this is also the limit by which
a computer can read information.

(2)
--I M P O R T A N T--
On the import files, make sure to replace the locations of locations.csv and vaccinations-by-manufacturer.csv
with the COMPLETE location of it on your own device and enclose it with '' (e.g: FROM 'C:this\is\location.csv')

COPY was used to directly insert all the values from the csv files to the database since
the two have an exact match in-terms of columns.

(3)
For item 3b, UPDATE was used to remove all spaces from the vaccine column which makes it easier
to split all the data separated with a ',' in the column to be assigned to a table to insert
the data in the needed table.

For 3c, vbm_date was converted to varchar and the input for date is a varchar data type to make it easier
comparing the records.

(5)

(6)
Create view is used for the creation of view.
AVG gets the average of the specified column.
GROUP BY groups average per iso, code per vaccines
