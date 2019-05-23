-- запрос из трех таблиц
select cities.city, regions.region, countries.country from cities 
inner join regions on (regions.id = cities.id_region)
inner join countries on (countries.id = regions.id_country);