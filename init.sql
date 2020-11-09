-- guest1
CREATE ROLE guest1 WITH LOGIN PASSWORD 'Test1234' 
NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';
GRANT CONNECT ON DATABASE eosmdbtwo TO guest1;
GRANT USAGE ON SCHEMA public TO guest1;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO guest1;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO guest1;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO guest1;

-- guest2
CREATE ROLE guest2 WITH PASSWORD 'Test1234' LOGIN;
GRANT CONNECT ON DATABASE eosmdbtwo TO guest2;
GRANT USAGE ON SCHEMA public TO guest2;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO guest2;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO guest2;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO guest2;

-- guest3
-- https://giswiki.hsr.ch/PostgreSQL_-_Tipps_und_Tricks#Create_.22Read-only_User.22
REVOKE CREATE ON SCHEMA public FROM public;
REVOKE USAGE  ON SCHEMA public FROM public;

CREATE ROLE guest3 WITH LOGIN PASSWORD 'Test1234';
GRANT USAGE ON SCHEMA public TO guest3;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO guest3;

GRANT USAGE  ON SCHEMA public TO public;
GRANT CREATE ON SCHEMA public TO public;
--

CREATE TABLE already_here (
    id_here INTEGER
);