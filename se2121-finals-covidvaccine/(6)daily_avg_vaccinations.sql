CREATE VIEW vaccine_average AS 
SELECT loc_ios_code, vbm_vaccine, AVG(vbm_total_vaccinations) 
FROM vaccinations_by_manufacturer
INNER JOIN locations
ON vaccinations_by_manufacturer.vbm_location = locations.loc_name
GROUP BY loc_ios_code, vbm_location, vbm_vaccine
ORDER BY vbm_location;



