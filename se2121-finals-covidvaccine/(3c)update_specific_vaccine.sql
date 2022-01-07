CREATE PROCEDURE update_vaccine(
    vaccine_name varchar(255),
    vaccine_location varchar(255),
    vaccine_date varchar(255),
    update_vaccination int
)
LANGUAGE plpgsql
AS
$$
BEGIN

   UPDATE vaccinations_by_manufacturer 
   SET vbm_total_vaccinations = update_vaccination 
   WHERE vbm_vaccine = vaccine_name
   AND vbm_location = vaccine_location
   AND vbm_date::varchar(255) = vaccine_date;

END;
$$