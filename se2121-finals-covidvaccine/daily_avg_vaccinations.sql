CREATE VIEW VaccineAverage AS SELECT AVG(vbl_id) FROM vaccinations_by_location GROUP BY vbl_iso_code, vbl_vaccines;
