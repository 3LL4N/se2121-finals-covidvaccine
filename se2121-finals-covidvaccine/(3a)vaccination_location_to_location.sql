CREATE PROCEDURE insert_to_location ()
LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO locations (loc_ios_code, loc_name)
    SELECT DISTINCT vbl_iso_code, vbl_location FROM vaccinations_by_location;
END;
$$