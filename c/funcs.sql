CREATE FUNCTION add_one(integer) RETURNS integer
     AS '/usr/local/lib/postgresql/funcs', 'add_one'
     LANGUAGE C STRICT;

-- note overloading of SQL function name "add_one"
CREATE FUNCTION add_one(double precision) RETURNS double precision
     AS '/usr/local/lib/postgresql/funcs', 'add_one_float8'
     LANGUAGE C STRICT;

CREATE FUNCTION makepoint(point, point) RETURNS point
     AS '/usr/local/lib/postgresql/funcs', 'makepoint'
     LANGUAGE C STRICT;

CREATE FUNCTION copytext(text) RETURNS text
     AS '/usr/local/lib/postgresql/funcs', 'copytext'
     LANGUAGE C STRICT;

CREATE FUNCTION concat_text(text, text) RETURNS text
     AS '/usr/local/lib/postgresql/funcs', 'concat_text'
     LANGUAGE C STRICT;
