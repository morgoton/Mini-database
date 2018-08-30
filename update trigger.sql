delimiter $$
create trigger delete_regions before delete on countries
for each row
begin
delete from regions  where id = old.id;
end $$
delimiter $$
