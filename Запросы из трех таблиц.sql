-- запрос из трех таблиц
select cities.city, regions.region, countries.country, countries.date, cities.people from cities 
inner join regions on (regions.id = cities.id_region)
inner join countries on (countries.id = regions.id_country);

-- усложним запрос из трех таблиц, выводя три города (Париж или Москву или в названии города есть "len"), которые занесены в таблицу 18.05.2019 или позже и отсортируем по времени добавления
select cities.city, regions.region, countries.country, countries.date, cities.people from cities 
inner join regions on (regions.id = cities.id_region)
inner join countries on (countries.id = regions.id_country)
where city = 'Paris' or city = 'Moscow' or city like '%len%' and date >= '2019-05-18'
order by date asc;

-- добавим для удобства алиасы в названия "cities", "countries", "regions" и peopleofcity
select cities.city as cities, regions.region as regions, countries.country as countries, countries.date, cities.people as peopleofcity from cities 
inner join regions on (regions.id = cities.id_region)
inner join countries on (countries.id = regions.id_country)
where city = 'Paris' or city = 'Moscow' or city like '%len%' and date >= '2019-05-18'
order by date asc;

-- сгруппируем данные по городам (если сгруппировать по регионам или странам, соответственно, запрос выдаст только три значения, т.к. страны только три и регионов только три) и отсортируем по времени добавления
select cities.city as cities, regions.region as regions, countries.country as countries, countries.date, cities.people as peopleofcity from cities 
inner join regions on (regions.id = cities.id_region)
inner join countries on (countries.id = regions.id_country)
group by cities
order by date;