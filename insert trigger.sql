delimiter $$
create trigger  update_country after insert on regions
for each row
begin
insert into countries(id) values (new.id);
end $$
delimiter $$;