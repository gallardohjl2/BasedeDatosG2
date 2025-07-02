```sql

-- Lenguaje SQL-LDD (create, alter, drop)

-- Crear la base de datos empresag2
CREATE DATABASE empresag2;
GO

-- Utilizar la base de datos
USE empresag2;

-- Crear la tabla Categorias
CREATE TABLE Categorias
(
  CategoriaId int primary key, 
  nombrecategoria nvarchar(30) not null unique
);
GO

-- Crear tabla empleado
CREATE TABLE Empleado
(
  EmpleadoId int not null identity(1,1), 
  Nombre nvarchar(20) not null, 
  ApellidoPaterno nvarchar(15) not null, 
  curp char(18) not null, 
  telefono char(15),
  sexo char(1) not null, 
  activo bit not null, 
  CONSTRAINT pk_empleado
  PRIMARY KEY (EmpleadoId), 
  CONSTRAINT unique_curp
  UNIQUE(curp),
  CONSTRAINT chk_sexo 
  CHECK(sexo in ('M','F'))
);
GO

-- Insertar en Categorias
INSERT INTO Categorias (CategoriaId, nombrecategoria)
VALUES(1, 'CARNES FRIAS');
GO

INSERT INTO Categorias (CategoriaId, nombrecategoria)
VALUES(2, 'VINOS Y LICORES');
GO

SELECT * FROM Categorias;
GO
-- INSERTAR EMPLEADO
INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, activo)
VALUES ('Monico', 'Panfilo', 'sdfsfsdfs', '23435335', 'M', 1);
go

INSERT INTO Empleado (Nombre, ApellidoPaterno, curp, telefono, sexo, activo)
VALUES ('Sarai', 'Vitoria', 'tretertet', '56578', 'F', 1);
go
SELECT * FROM Empleado;
Go
```