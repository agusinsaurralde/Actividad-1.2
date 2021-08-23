--Contexto: una fabrica de printuras fabrica y envasa la pintura--
use master
GO
CREATE DATABASE relacion1a1
GO
USE relacion1a1
GO
CREATE TABLE color(
    NombreColor VARCHAR(15) NOT NULL,
    IdColor INT NOT NULL PRIMARY KEY
)
GO
CREATE TABLE envase(
    CodigoDeBarras INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    IdColor INT NOT NULL UNIQUE FOREIGN KEY REFERENCES color(IdColor),
    NombreDeEmpresa VARCHAR (12) NOT NULL,
    Precio MONEY NOT NULL

)
GO
ALTER TABLE envase
ADD CONSTRAINT CK_Precio CHECK(Precio > 0)
GO