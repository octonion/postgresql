
create extension if not exists plpython3u;

drop function if exists add(int, int);

create or replace function add
  (x int, y int, OUT z int)
returns int
as $$

from ctypes import cdll,POINTER,c_int

lib = cdll.LoadLibrary(("/usr/local/lib/postgresql/libadd.so"))
lib.add.argtypes = [c_int, c_int]
lib.add.restype = c_int

z = lib.add(c_int(x), c_int(y))

return(z)

$$ language plpython3u;
