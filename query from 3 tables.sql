select cities.city, cities.datetime as alltime,regions.region, regions.time, countries.country, countries.date from cities 
left outer join regions on (cities.id_region = regions.id) 
left outer join countries on (regions.id_country = countries.id)
order by datetime asc;