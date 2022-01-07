CREATE FUNCTION most_vax_in_order()
    RETURNS TABLE(
        vac_location varchar(255),
        vac_per_day bigint,
        vac_date varchar(255)
    )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY

    SELECT * FROM (
        SELECT DISTINCT ON (loc_vax) * FROM (
            SELECT * FROM(
                SELECT 
                    vbm_location AS loc_vax,
                    SUM(vbm_total_vaccinations) AS total_vax,
                    vbm_date::varchar(255) AS date_vax
                    FROM vaccinations_by_manufacturer
                    GROUP BY loc_vax,date_vax
                ) sorted
            ORDER BY total_vax DESC
        ) semifinal_sorted
        ORDER BY loc_vax, total_vax DESC
    ) final_sorted
    ORDER BY total_vax DESC
    LIMIT 10;
END;
$$