CREATE PROCEDURE insert_to_vaccines ()
LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE vaccinations_by_location SET vbl_vaccines = replace(vbl_vaccines, ' ', '');

    INSERT INTO vaccines
    SELECT DISTINCT regexp_split_to_table(vbl_vaccines, ',') AS vaccinesUsed FROM vaccinations_by_location;
END;
$$
