-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id INT4 PRIMARY KEY,
  first_name VARCHAR(80),
  last_name VARCHAR(80)
);

CREATE TABLE employee_department (
  id INT4 PRIMARY KEY,
  name VARCHAR(80),
  description VARCHAR(150)
);

CREATE TABLE employee_hobby (
  id INT4 PRIMARY KEY,
  name VARCHAR(80),
  description VARCHAR(150)
);


ALTER TABLE employee add COLUMN id_department INT4;
ALTER TABLE employee add CONSTRAINT id_department FOREIGN KEY (id_department) REFERENCES employee_department(id);


-- se insertan registros para la tabla employee_department
INSERT INTO employee_department(id, name, description) VALUES (1,'Administracion','Departamento administrativo');
INSERT INTO employee_department(id, name, description) VALUES (2,'RRHH','Departamento relaciones Humanas');
INSERT INTO employee_department(id, name, description) VALUES (3,'Informatica','Departamento Informatico para tecnologia de la informacion');
INSERT INTO employee_department(id, name, description) VALUES (4,'Presupuesto','Departamento de presupuesto');
INSERT INTO employee_department(id, name, description) VALUES (5,'Prensa','Departamento de prensa y comunicacion');
INSERT INTO employee_department(id, name, description) VALUES (6,'Coordinacion General','Departamento de coordinacion General de Operaciones');

-- se insertan registros para la tabla employee
INSERT INTO employee(id, first_name, last_name,id_department) VALUES (1,'Angel','Gonzalez',3);
INSERT INTO employee(id, first_name, last_name,id_department) VALUES (2,'Pedro','Perez',1);
INSERT INTO employee(id, first_name, last_name,id_department) VALUES (3,'Carlos','Gonzalez',2);
INSERT INTO employee(id, first_name, last_name,id_department) VALUES (4,'Daniel','Rojas',4);


-- Creacion de Tabla pivote para adicionar hobit a los empleados

CREATE TABLE employee_hobby_pivot
(
  employee_id integer NOT NULL,
  hobby_id integer NOT NULL,
  CONSTRAINT employee_hobby_pivot_pkey PRIMARY KEY (employee_id,hobby_id),
  CONSTRAINT employee_hobby_employee FOREIGN KEY (employee_id)
  REFERENCES employee (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT employee_hobby_fkey FOREIGN KEY (hobby_id)
  REFERENCES employee_hobby (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Se Crean los 3 hobby
INSERT into employee_hobby (id, name, description) VALUES (1,'Futbol','Deporte');
INSERT into employee_hobby (id, name, description) VALUES (2,'Musica','Escuchar musica');
INSERT into employee_hobby (id, name, description) VALUES (3,'Lectura','Leer libros diversos');

-- se adicionan dos hobby por empleado
INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (1,1);
INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (1,2);

INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (2,1);
INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (2,3);

INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (3,2);
INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (3,1);

INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (4,3);
INSERT into employee_hobby_pivot(employee_id, hobby_id) VALUES (4,1);


-- SE ADICIONA EL CAMPO ID_JEFE
ALTER TABLE employee add COLUMN id_jefe INT4;
ALTER TABLE employee add CONSTRAINT id_department_fkey FOREIGN KEY (id_jefe) REFERENCES employee(id);
