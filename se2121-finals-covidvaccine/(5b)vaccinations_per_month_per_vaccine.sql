CREATE FUNCTION vaccine_per_month(
    location_name varchar(255),
    location_date varchar(255)
)
    RETURNS TABLE(
        vacc_date varchar(255),
        vacc_brand varchar(255),
        vacc_total bigint
    )
    LANGUAGE plpgsql
AS
$$
BEGIN

    RETURN QUERY

    SELECT vbm_date, vbm_vaccine, SUM(vbm_total_vaccinations) AS brand_total
    FROM vaccinations_by_manufacturer
    WHERE vbm_location = location_name 
        AND date_trunc('year',  TO_TIMESTAMP(vbm_date, 'YYYY-MM-DD HH:MI:SS'))::varchar(255)= location_date
        AND date_trunc('month',  TO_TIMESTAMP(vbm_date, 'YYYY-MM-DD HH:MI:SS'))::varchar(255) = location_date
    GROUP BY vbm_date, vbm_vaccine;
END;
$$