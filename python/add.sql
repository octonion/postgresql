
create extension if not exists plpython3u;

drop function if exists add(int, int);

create or replace function add
  (x int, y int, OUT z int)
returns int
as $$
z = x+y
return(z)

$$ language plpython3u;
