# Lenguaje SQL-LDD (create, alter, drop)

# Crear la base de datos empresag2
CREATE DATABASE empresag2;


# Utilizar la base de datos
USE empresag2;

-- Crear la tabla Categorias
CREATE TABLE Categorias
(
  CategoriaId int primary key, 
  nombrecategoria nvarchar(30) not null unique
);

# Crear tabla empleado
CREATE TABLE Empleado
(
  EmpleadoId int not null auto_increment, 
  Nombre nvarchar(20) not null, 
  ApellidoPaterno nvarchar(15) not null, 
  curp char(18) not null, 
  telefono char(15),
  sexo char(1) not null, 
  activo boolean not null, 
  CONSTRAINT pk_empleado
  PRIMARY KEY (EmpleadoId), 
  CONSTRAINT unique_curp
  UNIQUE(curp),
  CONSTRAINT chk_sexo 
  CHECK(sexo in ('M','F'))
);



# Insertar en Categorias
INSERT INTO Categorias (CategoriaId, nombrecategoria)
VALUES(1, 'CARNES FRIAS');


INSERT INTO Categorias (CategoriaId, nombrecategoria)
VALUES(2, 'VINOS Y LICORES');


SELECT * FROM Categorias;

# INSERTAR EMPLEADO
INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, activo)
VALUES ('Monico', 'Panfilo', 'sdfsfsdfs', '23435335', 'M', 1);


INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, activo)
VALUES ('Sarai', 'Vitoria', 'tretertet', '56578', 'F', 1);

SELECT * FROM Empleado;





# creación de primary keys compuestas
CREATE TABLE Tabla1
(
   Tabla1id1 int not null, 
   Tabla1id2 int not null, 
   Nombre nvarchar(20) not null, 
   CONSTRAINT pk_tabla1
   PRIMARY KEY(Tabla1id1, Tabla1id2)
);

# Razon de cardinalidad 1:N
CREATE TABLE Tabla2(
   Tabla2id int not null auto_increment,
   Nombre varchar(20),
   Tabla1id1 int, 
   Tabla1id2 int,
   CONSTRAINT pk_tabla2
   PRIMARY KEY(Tabla2id), 
   CONSTRAINT fk_tabla2_tabla1
   FOREIGN KEY (Tabla1id1,Tabla1id2)
   REFERENCES Tabla1(Tabla1id1,Tabla1id2)
);

# Razon de cardinalidad 1:1 (Fidelidad)
CREATE TABLE Employee
(
  Id int not null auto_increment, 
  Nombre varchar(20) not null, 
  Ap1 varchar(15) not null, 
  Ap2 varchar(15), 
  Sexo char(1) not null, 
  Salario Numeric(10,2) not null, 
  CONSTRAINT pk_employee
  PRIMARY KEY(Id),
  CONSTRAINT chk_Sexo2 
  CHECK(Sexo in ('M','F')),
  CONSTRAINT chk_salario
  CHECK (Salario>0.0)
);


CREATE TABLE Department(
  Id int not null auto_increment, 
  NombreProyecto varchar(20) not null, 
  Ubicacion varchar(15) not null,
  FechaInicio Date not null,
  IdEmployee int not null, 
  CONSTRAINT pk_department 
  PRIMARY KEY(Id), 
  CONSTRAINT unique_nombreproyecto
  UNIQUE(NombreProyecto), 
  CONSTRAINT unique_idemployee
  UNIQUE(IdEmployee), 
  CONSTRAINT fk_department_employee
  FOREIGN KEY (IdEmployee)
  REFERENCES Employee(Id)
);

# Razon de Cardinalidad M:N

CREATE TABLE Proyect(
  proyectid int not null auto_increment, 
  NameProyect varchar(20) not null, 
  CONSTRAINT pk_proyect
  PRIMARY KEY(proyectid), 
  CONSTRAINT Unique_nameproyect
  UNIQUE(NameProyect)
);

# Razon de Cardinalidad M:N
CREATE TABLE Works_ON(
	EmployeeId int not null, 
	ProjectId int not null, 
	Horas int not null, 
	CONSTRAINT pk_works_on
	PRIMARY KEY(EmployeeId,ProjectId), 
	CONSTRAINT fk_works_on_Employee
	FOREIGN KEY(EmployeeId)
	REFERENCES Employee(Id), 
	CONSTRAINT fk_works_on_Project
	FOREIGN KEY(ProjectId)
	REFERENCES Proyect(proyectid)
);




