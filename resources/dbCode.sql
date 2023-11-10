-- Database: training_hw_5

-- DROP DATABASE IF EXISTS training_hw_5;

CREATE DATABASE training_hw_5
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table: public.audit_department

-- DROP TABLE IF EXISTS public.audit_department;

CREATE TABLE IF NOT EXISTS public.audit_department
(
    "Ревизионный номер изделия" text COLLATE pg_catalog."default" NOT NULL,
    "Тип изделия " text COLLATE pg_catalog."default" NOT NULL,
    "адрес расположения" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT audit_department_pkey PRIMARY KEY ("Ревизионный номер изделия")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.audit_department
    OWNER to postgres;

ALTER TABLE IF EXISTS public.audit_department
    ADD COLUMN "Ревизионный номер изделия" text COLLATE pg_catalog."default" NOT NULL;

ALTER TABLE IF EXISTS public.audit_department
    ADD COLUMN "Тип изделия " text COLLATE pg_catalog."default" NOT NULL;

ALTER TABLE IF EXISTS public.audit_department
    ADD COLUMN "адрес расположения" text COLLATE pg_catalog."default" NOT NULL;
