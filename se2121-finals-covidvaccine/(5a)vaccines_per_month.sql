CREATE FUNCTION get_vaccine_per_month()
RETURNS TABLE(
    iso_code varchar(255),
    vaccines_used varchar(255)
)
LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY

        SELECT 
            vbl_iso_code, vbl_vaccines 
        FROM 
            vaccinations_by_location;
END;
$$