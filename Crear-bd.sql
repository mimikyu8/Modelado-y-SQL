--Creamos el esquema
create schema nuria_orgaz authorization myjvgguw;

--Creamos la tabla de coches
create table nuria_orgaz.cars(
	id_car varchar(100) not null, --pk 
	id_model varchar(100) not null, --fk -> models -> id_model
	id_color varchar(100) not null, --fk -> colors -> id_color
	license varchar(10)  not null,
	total_km integer not null,
	purch_date date  not null,
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.cars
add constraint car_PK primary key (id_car);


--Creamos la tabla de modelos
create table nuria_orgaz.models(
	id_model varchar(100) not null, --pk 
	model varchar(100) not null,
	id_brand varchar(100) not null, --fk -> brands -> id_brand
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.models
add constraint model_PK primary key (id_model);

--Creamos la tabla de colores
create table nuria_orgaz.colors(
	id_color varchar(100) not null, --pk 
	color varchar(100) not null,
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.colors
add constraint color_PK primary key (id_color);

--Creamos la tabla de marcas
create table nuria_orgaz.brands(
	id_brand varchar(100) not null, --pk 
	brand varchar(100) not null,
	id_cargroup varchar(100) not null, --fk -> car_groups -> id_cargroup
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.brands
add constraint brand_PK primary key (id_brand);

--Creamos la tabla de grupos empresariales 
create table nuria_orgaz.car_groups(
	id_cargroup varchar(100) not null, --pk 
	car_group varchar(100) not null,
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.car_groups
add constraint cargroup_PK primary key (id_cargroup);


--Creamos la tabla de revisiones
create table nuria_orgaz.revisions(
	id_car varchar(100) not null, --pk, fk -> cars -> id_car
	dt_revision date not null, --pk
	car_km integer not null,
	price integer not null,
	id_currency varchar(100) not null, --fk -> currencies -> id_currency
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.revisions
add constraint car_PK primary key (id_car, dt_revision);

--Creamos la tabla de monedas
create table nuria_orgaz.currencies(
	id_currency varchar(100) not null, --pk 
	currency varchar(3) not null,
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.currencies
add constraint currency_PK primary key (id_currency);


--Creamos la tabla de seguros
create table nuria_orgaz.insurances(
	id_car varchar(100) not null, --pk, fk -> cars -> id_car
	ins_policy varchar(100) not null, --pk
	ins_company varchar(100) not null,
	coment varchar(500) null
);

--Creamos la PK de la tabla
alter table nuria_orgaz.insurances
add constraint insurance_PK primary key (id_car, ins_policy);

--Creamos la FK de la tabla seguros
alter table nuria_orgaz.insurances
add constraint insurance_car_FK foreign key (id_car)
references nuria_orgaz.cars (id_car);

--Creamos la FK de la tabla coches
alter table nuria_orgaz.cars
add constraint car_models_FK foreign key (id_model)
references nuria_orgaz.models (id_model);

alter table nuria_orgaz.cars
add constraint car_colors_FK foreign key (id_color)
references nuria_orgaz.colors (id_color);

--Creamos la FK de la tabla modelos
alter table nuria_orgaz.models
add constraint model_brands_FK foreign key (id_brand)
references nuria_orgaz.brands (id_brand);

--Creamos la FK de la tabla marcas
alter table nuria_orgaz.brands
add constraint brand_cargroups_FK foreign key (id_cargroup)
references nuria_orgaz.car_groups (id_cargroup);

--Creamos la FK de la tabla revisiones
alter table nuria_orgaz.revisions
add constraint insurance_car_FK foreign key (id_car)
references nuria_orgaz.cars (id_car);

alter table nuria_orgaz.revisions
add constraint insurance_currency_FK foreign key (id_currency)
references nuria_orgaz.currencies (id_currency);

------DML-----------------------------------------

--Llenamos la tabla de coches

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0001', '01', '01', '6578-DTG', 125893, 2015-12-09);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0002', '01', '03', '6579-DTG', 124893, 2018-10-19);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0003', '02', '02', '4682-KYS', 269789, 2010-02-08);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0004', '03', '04', '4576-BMW', 157963, 2009-01-08);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0005', '04', '05', '8197-HGH', 256873, 2012-06-24);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0006', '05', '04', '4685-KPI', 59236, 2015-12-9);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0007', '06', '02', '7896-CPD', 924786, 2015-09-14);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0008', '07', '02', '1236-HNY', 136985, 2016-02-14);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0009', '08', '02', '8953-GHD', 197386, 2019-05-29);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0010', '03', '02', '7935-FGT', 113698, 2017-12-01);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0011', '06', '02', '9738-JKL', 100193, 2015-05-18);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0012', '06', '01', '6579-JKM', 142893, 2019-03-26);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0013', '02', '04', '5682-DTG', 187965, 2015-01-27);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0014', '04', '04', '5872-FGT', 64893, 2021-12-09);

insert into nuria_orgaz.cars
(id_car, id_model, id_color, license, total_km, purch_date)
values ('0015', '01', '04', '7933-HLY', 94895, 2012-02-09);

--Llenamos la tabla de modelos

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('01', 'Micra', '02');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('02', 'QASHQAI', '02');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('03', 'JUKE', '02');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('04', 'Soreto', '01');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('05', 'Picanto', '01');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('06', 'Rio', '01');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('07', 'Duster', '03');

insert into nuria_orgaz.models
(id_model, model, id_brand)
values ('08', 'Sandero', '03');

--Llenamos la tabla de colores

insert into nuria_orgaz.colors
(id_color, color)
values ('01', 'Blanco');

insert into nuria_orgaz.colors
(id_color, color)
values ('02', 'Negro');

insert into nuria_orgaz.colors
(id_color, color)
values ('03', 'Rojo');

insert into nuria_orgaz.colors
(id_color, color)
values ('04', 'Gris');

insert into nuria_orgaz.colors
(id_color, color)
values ('05', 'Azul');

--Llenamos la tabla de marcas

insert into nuria_orgaz.brands
(id_brand, brand, id_cargroup)
values ('01', 'Kia', '01');

insert into nuria_orgaz.brands
(id_brand, brand, id_cargroup)
values ('02', 'Nissan', '02');

insert into nuria_orgaz.brands
(id_brand, brand, id_cargroup)
values ('03', 'Dacia', '02');


--Llenamos la tabla de grupos empresariales 

insert into nuria_orgaz.car_groups
(id_cargroup, car_group)
values ('01', 'Hyundai');

insert into nuria_orgaz.car_groups
(id_cargroup, car_group)
values ('02', 'Renault Nissan');


--Llenamos la tabla de revisiones

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0001', 2021-06-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0001', 2019-06-06, 140000, 85, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0002', 2021-07-06, 150697, 89, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0003', 2021-11-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0004', 2022-12-06, 150697, 80, '02');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0005', 2021-03-26, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0006', 2021-07-16, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0007', 2021-11-15, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0008', 2021-11-16, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0009', 2021-11-11, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0010', 2022-10-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0011', 2022-06-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0012', 2022-01-30, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0013', 2021-03-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0014', 2021-02-06, 150697, 75, '01');

insert into nuria_orgaz.revisions
(id_car, dt_revision, car_km, price, id_currency)
values ('0015', 2022-02-22, 150697, 75, '01');


--Llenamos la tabla de monedas

insert into nuria_orgaz.currencies
(id_currency, currency, coment)
values ('01', 'EUR', "Euros");

insert into nuria_orgaz.currencies
(id_currency, currency, coment)
values ('02', 'USD', "Dolares estadounidenses");


--Llenamos la tabla de seguros

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0001', '52586186', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0002', '97643528', "Allianz Direct");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0003', '58586186', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0004', '976435872', "Allianz Direct");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0005', '25794316', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0006', '65831257', "Allianz Direct");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0007', '69715632', "Génesis");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0008', '79846523', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0009', '36479512', "Génesis");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0010', '36412879', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0011', '45127213', "Génesis");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0012', '49763589', "Mapfre");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0013', '39765842', "Pelayo");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0014', '29765894', "Pelayo");

insert into nuria_orgaz.insurances
(id_car, ins_policy, ins_company)
values ('0015', '39785643', "Mapfre");

