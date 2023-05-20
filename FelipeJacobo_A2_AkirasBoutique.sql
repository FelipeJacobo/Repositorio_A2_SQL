USE [AkirasBoutiques]

GO
/****** Object:  Database [AkirasBoutiques]    Script Date: 26/7/2022 17:11:20 ******/
CREATE DATABASE [AkirasBoutiques]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AkirasBoutiques', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AkirasBoutiques.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AkirasBoutiques_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AkirasBoutiques_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AkirasBoutiques] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AkirasBoutiques].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ARITHABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AkirasBoutiques] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET  MULTI_USER 
GO
ALTER DATABASE [AkirasBoutiques] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AkirasBoutiques] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AkirasBoutiques] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AkirasBoutiques] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AkirasBoutiques] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AkirasBoutiques] SET QUERY_STORE = OFF
GO
USE [AkirasBoutiques]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 26/7/2022 17:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Con esta instruccion usamos la base de datos para poder consultar o cambiar los registros.
USE [AkirasBoutiques]

--Con esta instrucion se crea la tabla empleados.
CREATE TABLE empleados(
    num_Empleado INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido_Paterno VARCHAR(25) NOT NULL,
    apellido_Materno VARCHAR(25) NOT NULL,
    fecha_Nacimiento DATE NOT NULL,
    RFC VARCHAR(25) NOT NULL,
	telefono VARCHAR(10) NOT NULL,
	num_sucursal INT,
	nom_sucursal VARCHAR(50) NOT NULL,
	encargado VARCHAR(50) NOT NULL,
)
--Con esta instruccion se altera la tabla empleados y agrega una columna con un tipo de dato y una restriccion.
ALTER TABLE empleados
ADD encargado VARCHAR(50) NOT NULL 

--Con esta consulta se agrega un nuevo registro a la tabla empleados.
INSERT INTO empleados (num_Empleado,nombre,apellido_Paterno,apellido_Materno,fecha_Nacimiento,RFC,telefono,num_sucursal,nom_sucursal,encargado)
VALUES
(1,'Luis Alonso','Zanchez','Cuadras','07/26/1999','ZACL992607HSL','6674869521','1','Akiras Boutique: LasMercedes','Sonia 
Alejandra Fernández Moreno'),
(2,'Daniel Alejandro','Torres','Hernández','27/05/1992','TOHD920527L84','6665432190','1','Akiras Boutique: LasMercedes','Sonia 
Alejandra Fernández Moreno'),
(3,'Laura Daniela','Gómez','Ramírez','06/09/1987','GORL870906JC6','6678901234','1','Akiras Boutique: LasMercedes','Sonia 
Alejandra Fernández Moreno'),
(4,'Ricardo Andrés','Moreno','Torres','12/11/1990','MOTR901112LQ2','6667890123','1','Akiras Boutique: LasMercedes','Sonia 
Alejandra Fernández Moreno'),
(5,'Ana Karen','Mendoza','Ortiz','23/07/1994','MEAO940723LN8','6678901234','1','Akiras Boutique: LasMercedes','Sonia 
Alejandra Fernández Moreno'), 
('6','Juan Antonio','Flores','García','01/03/1991','FOGJ910301LK3 ','6612345678','2','Akira’s Boutique:Obraje','Fernando 
Calderón Ayala'),
('7','Karla Patricia','Cruz','Pérez','05/12/1988','CUZP881205MS8 ','6665432190','2','Akira’s Boutique:Obraje','Fernando 
Calderón Ayala'),
('8','Marco Antonio','Vargas','Jiménez','18/06/1995','VAJM950618DG1 ','6678901234','2','Akira’s Boutique:Obraje','Fernando 
Calderón Ayala'),
('9','Estefanía','García','Hernández','10/04/1993','GAHE930410M41 ','6667890123','2','Akira’s Boutique:Obraje','Fernando 
Calderón Ayala'),
('10','José Luis','González','Torres','29/08/1996','GOTJ960829SL2 ','6678901234','2','Akira’s Boutique:Obraje','Fernando 
Calderón Ayala'),
('11','Ana Sofía','Hernández','Martínez','17/01/1999','HEMA990117QG8','6612345678','3','Akira’s Boutique: Galerías Mazatlán','Daniela 
Fernanda Díaz Ordaz'),
('12','Luis Enrique','Pérez','Castro','02/12/1991','PECL911202FR1','6665432190','3','Akira’s Boutique: Galerías Mazatlán','Daniela 
Fernanda Díaz Ordaz'),
('13','Mariana','Rodríguez','Flores ','29/05/1993','ROFM930529LV3 ','6678901234','3','Akira’s Boutique: Galerías Mazatlán','Daniela 
Fernanda Díaz Ordaz'),
('14','Jorge Alberto','Nava','Salazar','09/03/1986','NASJ860309KT5 ','6667890123','3','Akira’s Boutique: Galerías Mazatlán','Daniela 
Fernanda Díaz Ordaz'),
('15','Ana Cecilia','Sánchez','Cruz','04/07/1997','SACJ970704DG9 ','6678901234','3','Akira’s Boutique: Galerías Mazatlán','Daniela 
Fernanda Díaz Ordaz'),
('16','Rodrigo','Hernández','González','22/11/1990','HEGR901122BM8','6612345678','4','Akira’s Boutique: Zapopan','Mario 
Alberto Jiménez Salcido'),
('17','Paola','Jiménez','López','13/02/1996','JILP9602138K0 ','6665432190','4','Akira’s Boutique: Zapopan','Mario 
Alberto Jiménez Salcido'),
('18','David Alejandro','Castillo','Martínez','07/06/1992','CAMD920607GJ8','6678901234','4','AAkira’s Boutique: Zapopan','Mario 
Alberto Jiménez Salcido'),
('19','Gabriela','Martínez','González','30/09/1994','MAGG940930MV1','6667890123','4','Akira’s Boutique: Zapopan','Mario 
Alberto Jiménez Salcido'),
('20','Edgar Eduardo','Ortiz','Sánchez','24/12/1999','OSEE991224IM5','6678901234','4','Akira’s Boutique: Zapopan','Mario 
Alberto Jiménez Salcido'),
('21','Karen Elizabeth','García','Ruiz','08/07/1991','GARK910708GP9','6612345678','5','Akira´s Boutique: Melchor','Yesenia
Guadalupe Campos Rojo'),
('22','Alejandro','Flores','Hernández','15/04/1997','FOHA970415LX5','6665432190','5','Akira´s Boutique: Melchor','Yesenia
Guadalupe Campos Rojo'),
('23','Andrea Fernanda','Morales','Flores','26/08/1998','MOFA9808268U7','6678901234','5','Akira´s Boutique: Melchor','Yesenia
Guadalupe Campos Rojo'),
('24','Arturo','Hernández','García','03/11/1989','HEGA891103KD6','6667890123','5','Akira´s Boutique: Melchor','Yesenia
Guadalupe Campos Rojo'),
('25','Roberto Eduardo','Martinez','Aguilar','12/03/1985','AGRM85031266','6612345678','5','Akira´s Boutique: Melchor','Yesenia
Guadalupe Campos Rojo'),
('26','Juan','García','Ruiz','15/07/1985','GARJ850715EJ3','6612345678','6','Akira’s
Boutique:Constitución','Tamara Alejandra Bernal Ramos'),
('27','Ana María','García','González','07/04/1990','GOGA900407KG','6667890123','6','Akira’s
Boutique:Constitución','Tamara Alejandra Bernal Ramos'),
('28','Juan Carlos','Torres','Ramírez','15/10/1985','TORA851015DZG','6662345678','6','Akira’s
Boutique:Constitución','Tamara Alejandra Bernal Ramos'),
('29','Rosa Elena','Martínez','Martínez','26/02/1993','MAME930226JKF','6663456789','6','Akira’s
Boutique:Constitución','Tamara Alejandra Bernal Ramos'),
('30','Luis Alberto','Sánchez','Aguilar','18/06/1988','SAAL880618DSA','6664567890','6','Akira’s
Boutique:Constitución','Tamara Alejandra Bernal Ramos'),
('31','Andrea Isabel','Hernández','Gutiérrez','09/09/1995','HEGI950909IUY','6665678901','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('32','José Antonio','López','Hernández','30/11/1987','LOHJ871130ÑKJ','6666789012','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('33','María Fernanda','Castro','Ortiz','22/03/1992','CAOF920322DSD','6667890123','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('34','Juan Manuel','Rivera','Reyes','14/05/1986','RIRE860514HFD','6662345678','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('35','Ana Karen','González','Pérez','25/08/1994','GOPE940825LOI','6663456789','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('36','Sergio Alejandro','Méndez ','Rodríguez','06/01/1989','MERI890106JMN','6664567890','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('37','Ana Paola','Flores','Vázquez','17/07/1991','FLOA910717POL','6665678901','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('38','Luis Angel','Ortiz','Torres','08/12/1985','ORTL851208LPO','6666789012','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('39','Ana Isabel','Rodríguez','Hernández','19/09/1993','ROHI930919ZSD','6667890123','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso'),
('40','Karla Elizabeth','Pérez','González','04/11/1986','PEGK861104TRE','6665678901','7','Akira’s
Boutique:Centro','Samuel Enrique Barrios Enciso')

/* Con esta sentencia se establece el idioma español como 
tambien cambia el "date" para que se pueda utilizar en ese formato "04/11/1986" */

set language spanish
--Con esta consulta se puede ver los registros de la tabla empleados.
SELECT * FROM empleados;
--Con esta consulta se elimina de la tabla empleados el empleado "numero 1".
DELETE FROM empleados WHERE num_Empleado = 1 ;
--Con esta consulta se puede ver los registros de la tabla sucursal.
SELECT * FROM sucursal;
/*Con eso cambiamos los datos de la tabla empleados y
de la tabla sucursal y agrega un tipo de dato para que sean iguales en ambas*/
ALTER TABLE AkirasBoutiques.dbo.empleados
ALTER COLUMN num_sucursal VARCHAR(50);

    ALTER TABLE AkirasBoutiques.dbo.sucursal
    ALTER COLUMN num_sucursal VARCHAR(50);

    --Con esta instrucion se crea la tabla sucursal.

    CREATE TABLE sucursal(
    num_sucursal INT PRIMARY KEY,
	nom_sucursal VARCHAR(50) NOT NULL,
	encargado VARCHAR(50) NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	telefono VARCHAR(25) NOT NULL,
	ciudad VARCHAR(25) NOT NULL,
	estado VARCHAR(25) NOT NULL,
	)
	--Con esta consulta se agrega un nuevo registro a la tabla sucursal.
	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('1','Akira s Boutique: Las Mercedes','Sonia Alejandra Fernández Moreno','Calle Roble #507 Fracc. Las Mercedes',
	'444 7831225','San Luis Potosí','San LuisPotosí')

	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('2','Akira s Boutique: Obraje','Fernando Calderon Ayala','Calle Dr. Jesús Díaz de León #438 col. Obraje',
	'449 3780921','Aguascalientes','Aguascalientes')

	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('3','Akira s Boutique: Galerías Mazatlán','Daniela Fernanda Díaz Ordaz','Av. de la Marina #6204, Marina, local 35',
	'669 2932059','Mazatlán','Sinaloa')

	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('4','Akiras Boutique: Zapopan','Mario Alberto Jiménez Salcido','Av. Manuel J. Clouthier 525 col. Benito Juárez',
	'333 7841230','Zapopan','Jalisco')
	  
	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('5','Akiras Boutique: Melchor','Yesenia Guadalupe Campos Rojo','Av. Melchor Ocampo #2528 ZonaCentro',
	'614 3906721','Chihuahua','Chihuahua')

    INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('6','Akiras Boutique: Constitución','Tamara Alejandra Bernal Ramos','Calle Constitución #106 Zona Centro',
	'618 1962954','Durango','Durango')

	INSERT INTO sucursal (num_sucursal,nom_sucursal,encargado,direccion,telefono,ciudad,estado)
	VALUES ('7','Akiras Boutique: Centro','Samuel Enrique Barrios Enciso','Av. Hidalgo #338 Zacatecas Centro',
	'492 9301250','Zacatecas','Zacatecas')

	--Con esta consulta se puede ver los registros de la tabla sucursal.
	SELECT * FROM sucursal;

/*	Con esta instruccion crea una nueva restricción de clave foranea (foreign key constraint) 
llamada "fk_num_sucursal" en la tabla "empleados".*/
	ALTER TABLE empleados
	ADD CONSTRAINT fk_num_sucursal
	FOREIGN KEY (num_sucursal) REFERENCES sucursal (num_sucursal)
	ON UPDATE CASCADE
	ON DELETE CASCADE

	--Con esta consulta podemos obtener todos los empleados.
	SELECT * FROM empleados;

	--Con esta consulta podemos obtener los registros de empleados que corresponden a cada sucursal
SELECT empleados.nombre, sucursal.nom_sucursal, empleados.encargado
FROM empleados
JOIN sucursal ON empleados.num_sucursal = sucursal.num_sucursal;

    --Con esta consulta obtenemos el empleado numero 1 que que trabaja en la sucursal numero 1
    SELECT TOP 1 nombre, apellido_Paterno, fecha_Nacimiento FROM empleados WHERE num_sucursal = 1;

	--Con esta consulta obtenemos empleados que tienen una fecha anterior a esta "22/03/1992".
	SELECT COUNT(*) FROM empleados WHERE fecha_Nacimiento < '22/03/1992';

	SELECT * FROM cliente

	SELECT * FROM producto
	 
	SELECT * FROM sucursal

	ALTER TABLE producto
    add id_sucursal_fk INT 

ALTER TABLE producto 
ADD CONSTRAINT FK_Producto_Sucursal 
FOREIGN KEY (id_sucursal_fk) 
REFERENCES sucursal(num_sucursal);


CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[descripcion] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 26/7/2022 17:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[apellido] [text] NOT NULL,
	[direccion] [text] NOT NULL,
	[fec_nac] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[email] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 26/7/2022 17:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[id_detalle] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 26/7/2022 17:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[id_factura] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [date] NULL,
	[id_detalle] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 26/7/2022 17:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[precio] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (1, N'Blusa', N'Prenda abierta de tela fina , similar a la camisa , que usan las mujeres y los niños , y que cubre la parte superior del cuerpo')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (2, N'Falda', N'Prenda de vestir que cuelga de la cintura y cubre las piernas, al menos en parte. ')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (3, N'Pantalón', N'Prenda de vestir que se ajusta a la cintura y llega generalmente hasta el pie , cubriendo cada pierna separadamente .')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (4, N'Pijama', N'Conjunto de chaqueta o camiseta y pantalón a juego que se usa para dormir.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (5, N'Camisa', N'Prenda de vestir que cubre el tronco hasta la cadera o medio muslo, con cuello, manga corta o larga, que se abrocha por delante con botones; suele llevar un canesú en la espalda que permite dar amplitud al cuerpo de la prenda.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (6, N'Zapato', N'pieza de calzado que protege al pie, brindándole comodidad a la persona a la hora de llevar a cabo diferentes acciones')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (7, N'Chamarra', N'Prenda amplia de vestir, rústica, de abrigo, que cubre el cuerpo hasta medio muslo, hecha de piel con lana o pelo por fuera o por dentro.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (8, N'Suéter', N'Prenda de punto elástico, manual o mecánico, de lana, algodón o alguna fibra sintética, cerrado o abierto por delante, con escote o cuello de distinto tipo y generalmente manga larga, que cubre el cuerpo hasta la cadera o medio muslo.')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (9, N'Vestido', N'Prenda que se asocia con la elegancia femenina y clásica. ')
INSERT [dbo].[categoria] ([id_categoria], [nombre], [descripcion]) VALUES (10, N'Accesorios', N'Completan el look, le dan un aire renovado a nuestras prendas. Collares, accesorios para el pelo, joyas, zapatos, carteras, cinturones')
GO
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (0, N'María Antonieta', N'García Meléndez ', N'Calle las Girasol #305 col. Jardines ', CAST(N'1989-06-15' AS Date), 1828921321, N'mariantonia@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (1, N'Óscar Germán', N'Wong Tabares ', N'Calle Revolución #879 col. México', CAST(N'1994-01-28' AS Date), 2035672143, N'germanwong@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (2, N'Valentina Anastasia', N'Huerta Corral', N'Calle Flamenco #3493 col. Aviar', CAST(N'1992-07-03' AS Date), 0, N'valehue92@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (3, N'Luisa Beatriz ', N'Rodríguez Estrada', N'Calle Ruiseño #1903 col. Aviar', CAST(N'1995-02-21' AS Date), 2034598383, N'betyrodri@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (4, N'Ana Maribel ', N'Cedillo Núñez ', N'Calle Ecuador #278 col. Latinoamérica', CAST(N'1986-09-25' AS Date), 1783920982, N'anamari86@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (5, N'Sara Valeria ', N'Jiménez Sánchez', N'calle Amarillo #890 col. Colores', CAST(N'1990-10-23' AS Date), 1025675109, N'valesarita@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (6, N'Rodrigo Enrique', N'García Monreal ', N'Calle Guadiana #905 fracc. Guadiana', CAST(N'1993-03-29' AS Date), 2146982372, N'rodrimonreal@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (7, N'Marina Gabriela', N'Villanueva Barrios', N'Calle Luna #560 fracc. Cosmos', CAST(N'1993-06-04' AS Date), 1161728372, N'marigaby@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (8, N'Luis Francisco', N'Bernal Casas', N'Calle Porfirio #246 col. Revolución', CAST(N'1996-01-22' AS Date), 2034573621, N'luispacober@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (9, N'Rebeca Elizabeth ', N'Puentes Ríos', N'Calle Domingo #1929 col. Buendia', CAST(N'1988-10-18' AS Date), 123459834, N'rebepuentes88@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (10, N'Yesenia Beatriz', N'Quintanilla Torres', N'Calle Roble #405 col. Singapur', CAST(N'1984-01-24' AS Date), 1328902183, N'betyquintanilla@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (11, N'Rodrigo Ismael', N'Silva Ugarte', N'Calle Tamarino #1209 fracc. Mezquital', CAST(N'1996-05-14' AS Date), 1436784145, N'rodriisma@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (12, N'Rosa Hortencia ', N'Rosas Morales', N'Calle Margarita #2892 col Jardines', CAST(N'1983-01-15' AS Date), 1923925489, N'rositarosas@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (13, N'Gabriela Cassandra', N'Quiñones Escobar', N'Calle Dolores #239 col. Del Río', CAST(N'1987-11-15' AS Date), 2113840192, N'cassqui87@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (14, N'Sara Roberta ', N'Moreno Moreno', N'Calle Colinas #912 col. Colinas del norte', CAST(N'1982-12-14' AS Date), 1244930285, N'saritarober@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (15, N'María Fernanda', N'Ávila Nuñez', N'Calle Nunó #594 col. Personajes', CAST(N'1995-09-13' AS Date), 1207583929, N'mariafer95@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (16, N'Camilo Isaac', N'Peña Huerta', N'Calle Niños Héroes #1239 col. México ', CAST(N'1987-01-20' AS Date), 1293904389, N'camisac@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (17, N'Zayra Manuela', N'Gómez López ', N'Calle Rosales #390 Fracc. Las flores', CAST(N'1977-10-28' AS Date), 1283094033, N'zaygom77@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (18, N'Rosa Alicia ', N'Reyes Nájera ', N'Calle Flautín #1459 col. La Orquesta', CAST(N'1984-11-20' AS Date), 125940940, N'rosealice84@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (19, N'Juan Roberto  ', N'Ortega Rincón', N'Calle Los Álamos #4902 Fracc. Monreal', CAST(N'1986-07-31' AS Date), 1489328581, N'roberortega@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (21, N'Sandra Isabella ', N'Pereyra Félix ', N'Calle Azalea #901 Fracc. Las Flores', CAST(N'1990-04-09' AS Date), 1289394301, N'peyfex90@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (22, N'Rogelia Margarita ', N'Cruz Santos ', N'Calle Golondrinas #9023 col. Felipe Ángeles', CAST(N'1986-05-11' AS Date), 1925678302, N'margaritacruz@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (23, N'Julieta Odette ', N'Rocha Ramazzoti', N'Calle Río Bravo #2013 Fracc. TierraBlanca', CAST(N'1993-07-16' AS Date), 1293391028, N'julyramazzoti@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (24, N'Dante Eduardo', N'Dolores Meza', N'Calle Miguel Ángel #439 col. Renacimiento', CAST(N'1993-07-15' AS Date), 2023950349, N'danteduardo93@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (25, N'Bianca Alejandra', N'Rosales Rosas', N'Calle Rueda #1924 col. Emprendedores ', CAST(N'1987-06-26' AS Date), 1821039583, N'rosasbianca@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (26, N'Fabiola Elena', N'Reséndiz Amador ', N'Calle Melchor Ocampo #901 col. Libertadores', CAST(N'1994-08-18' AS Date), 1294024901, N'fabielle94@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (27, N'Miriam Karina', N'Lara Ruíz', N'Sta. María del Oro #423 col. Nazas', CAST(N'1990-07-26' AS Date), 2014893018, N'mirilara@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (28, N'Valeria Jimena', N'De la O Tabares ', N'Calle Crisantema #311 col. PRI Amp', CAST(N'1986-08-15' AS Date), 1024792478, N'valejimena@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (29, N'Juan Humberto', N'Martínez Fuentes', N'Calle Agustín de Anda #608 fracc. Valle del Guadiana', CAST(N'1989-10-17' AS Date), 1924802840, N'juanmar@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (30, N'Melissa Ximena', N'Zaragoza Suárez', N'Calle Río Piaxtla #4380 col Valle del Sur', CAST(N'1986-05-15' AS Date), 2018438929, N'melizara@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (31, N'Cristina Miranda ', N'Morales Rueda ', N'Calle Magnolia #113 Fracc Jardines', CAST(N'1987-08-16' AS Date), 1034920394, N'crismiranda@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (32, N'Bruno Alejandro', N'Miranda López', N'Calle del Roble #702, fracc. Jardines del Real IV', CAST(N'1988-06-29' AS Date), 1893019749, N'brunomiranda@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (33, N'Helena Emilia', N'Robles Espinoza ', N'Calle Plan de Agua Prieta #128 Col Emiliano Zapata', CAST(N'1987-10-28' AS Date), 1892081803, N'helenarobles@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (34, N'Teresa Renata', N'Zavala Piña', N'Calle Chiapas #205 col. Morga', CAST(N'1985-02-20' AS Date), 1029482019, N'terezavala@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (35, N'Wendy Carolina ', N'Piña Quiñones', N'Calle Gral Fco. Arrieta #211 col. Gral Domingo Arrieta', CAST(N'1995-07-19' AS Date), 1928001001, N'carowendy@gmail.com')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [direccion], [fec_nac], [telefono], [email]) VALUES (36, N'Jesús Alberto', N'Hidalgo Correa ', N'Calle 3 de Agosto #308, col Tierra y Libertad', CAST(N'1985-01-18' AS Date), 1890290832, N'chuybeto@gmail.com')
GO
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (1, 32, 4, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (2, 8, 3, 690)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (3, 39, 4, 200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (4, 26, 1, 110)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (5, 30, 4, 1800)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (6, 2, 5, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (7, 14, 4, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (8, 36, 2, 1500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (9, 25, 1, 1050)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (10, 34, 1, 1350)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (11, 12, 6, 1500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (12, 13, 1, 150)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (13, 21, 1, 150)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (14, 24, 8, 1600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (15, 31, 2, 900)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (16, 22, 1, 600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (17, 5, 7, 1750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (18, 3, 4, 400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (19, 11, 2, 558)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (20, 4, 6, 600)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (21, 7, 6, 720)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (22, 10, 4, 1200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (23, 33, 4, 2400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (24, 39, 10, 500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (25, 20, 8, 2400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (26, 27, 2, 1400)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (27, 35, 4, 4200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (28, 29, 4, 1200)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (29, 38, 6, 450)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (30, 28, 1, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (31, 18, 6, 1620)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (32, 25, 6, 6300)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (33, 30, 3, 1350)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (34, 26, 5, 5500)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (35, 40, 10, 1000)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (36, 21, 9, 4950)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (37, 12, 3, 750)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (38, 8, 6, 1380)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (39, 11, 4, 1116)
INSERT [dbo].[detalle] ([id_detalle], [id_producto], [cantidad], [precio]) VALUES (40, 4, 8, 800)
GO
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (1, 9, CAST(N'2021-12-22' AS Date), 1)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (2, 9, CAST(N'2021-10-11' AS Date), 2)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (3, 4, CAST(N'2021-12-07' AS Date), 3)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (4, 4, CAST(N'2021-08-24' AS Date), 4)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (5, 1, CAST(N'2021-09-24' AS Date), 5)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (6, 1, CAST(N'2022-01-08' AS Date), 6)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (7, 0, CAST(N'2022-01-01' AS Date), 7)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (8, 0, CAST(N'2021-12-28' AS Date), 8)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (9, 3, CAST(N'2022-01-11' AS Date), 9)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (10, 3, CAST(N'2022-01-16' AS Date), 10)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (11, 2, CAST(N'2021-07-13' AS Date), 11)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (12, 2, CAST(N'2022-01-05' AS Date), 12)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (13, 6, CAST(N'2022-01-12' AS Date), 13)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (14, 6, CAST(N'2021-12-22' AS Date), 14)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (15, 5, CAST(N'2021-11-18' AS Date), 15)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (16, 5, CAST(N'2022-01-09' AS Date), 16)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (17, 7, CAST(N'2021-10-12' AS Date), 17)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (18, 7, CAST(N'2021-12-30' AS Date), 18)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (19, 8, CAST(N'2022-01-17' AS Date), 19)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (20, 8, CAST(N'2021-12-21' AS Date), 20)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (21, 26, CAST(N'2021-10-08' AS Date), 21)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (22, 30, CAST(N'2022-01-19' AS Date), 22)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (23, 31, CAST(N'2021-07-16' AS Date), 23)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (24, 35, CAST(N'2021-09-23' AS Date), 24)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (25, 25, CAST(N'2021-06-14' AS Date), 25)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (26, 29, CAST(N'2021-08-19' AS Date), 26)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (27, 27, CAST(N'2021-11-10' AS Date), 27)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (28, 24, CAST(N'2022-01-22' AS Date), 28)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (29, 26, CAST(N'2022-01-11' AS Date), 29)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (30, 36, CAST(N'2022-01-04' AS Date), 30)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (31, 12, CAST(N'2021-12-07' AS Date), 31)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (32, 14, CAST(N'2022-01-06' AS Date), 32)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (33, 24, CAST(N'2022-01-03' AS Date), 33)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (34, 17, CAST(N'2021-11-11' AS Date), 34)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (35, 31, CAST(N'2021-11-16' AS Date), 35)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (36, 36, CAST(N'2022-01-10' AS Date), 36)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (37, 23, CAST(N'2021-11-17' AS Date), 37)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (38, 29, CAST(N'2022-01-03' AS Date), 38)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (39, 26, CAST(N'2021-12-14' AS Date), 39)
INSERT [dbo].[factura] ([id_factura], [id_cliente], [fecha], [id_detalle]) VALUES (40, 18, CAST(N'2022-01-20' AS Date), 40)
GO
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (1, N'Blusa de flores', 200, 70, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (2, N'Blusa tipo escocesa ', 150, 35, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (3, N'Blusa rayada manga larga', 100, 37, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (4, N'Blusa con estampado animado', 100, 26, 1)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (5, N'Falda larga', 200, 45, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (6, N'Falda tipo escocesa ', 250, 12, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (7, N'Falda tipo escolar ', 120, 68, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (8, N'Falda ejecutiva ', 230, 20, 2)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (9, N'Pantalón acampanado ', 350, 23, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (10, N'Skinny Jeans', 300, 56, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (11, N'Pantalón Pants ', 279, 30, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (12, N'Shorts de Mezclilla', 250, 48, 3)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (13, N'Camisón', 150, 9, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (14, N'Conjunto de pijama', 400, 26, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (15, N'Blusa de pijama', 100, 45, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (16, N'Pantalón de pijama', 150, 20, 4)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (17, N'Camisa ejecutiva ', 240, 36, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (18, N'Camisa de flores', 270, 40, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (19, N'Camisa tipo escolar', 290, 59, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (20, N'Camisa con bordado', 300, 10, 5)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (21, N'Tennis suela alta', 550, 9, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (22, N'Zapato de tacón ', 600, 23, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (23, N'Bota alta', 650, 1, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (24, N'Pantuflas', 200, 24, 6)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (25, N'Abrigo largo', 1050, 3, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (26, N'Chamarra pluma de ganso', 1100, 17, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (27, N'Chamarra delgada ', 700, 20, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (28, N'Cazadora', 750, 12, 7)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (29, N'Suéter cerrado', 300, 23, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (30, N'Sudadera deportiva', 450, 45, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (31, N'Suéter tejido', 450, 35, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (32, N'Suéter estampado', 400, 19, 8)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (33, N'Vestido corto de día', 600, 3, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (34, N'Vestido de noche largo ', 1350, 23, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (35, N'Vestido ejecutivo', 1050, 67, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (36, N'Vestido fantasía para niña', 750, 5, 9)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (37, N'Collar', 150, 9, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (38, N'Pulseras', 75, 78, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (39, N'Aretes', 50, 59, 10)
INSERT [dbo].[producto] ([id_producto], [nombre], [precio], [stock], [id_categoria]) VALUES (40, N'Accesorios para el cabello ', 100, 30, 10)
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [id_producto]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_cliente]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_detalle] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle] ([id_detalle])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_detalle]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [id_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [id_categoria]
GO
USE [master]
GO
ALTER DATABASE [AkirasBoutiques] SET  READ_WRITE 
GO

SELECT * FROM cliente

--Seleccionar los clientes del año 2021 en base a la fecha de la factura.
SELECT * FROM factura WHERE fecha BETWEEN '2021-01-01' AND '2021-12-31'; 

/*Seleccionar los clientes de 2022 (hasta el momento) en base a la fecha de la
factura.*/

SELECT * FROM factura WHERE fecha BETWEEN '2022-01-01' AND '2022-12-31'



--Seleccionar los clientes de diciembre de 2021.
SELECT * FROM factura WHERE fecha BETWEEN '2021-12-01' AND '2021-12-31'

--¿Qué compras han realizado los siguientes clientes?:
--Valentina Anastasia Huerta Corral
CREATE VIEW vw_cliente_factura
AS
SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.fecha
FROM cliente as c
INNER JOIN factura AS f
    ON f.id_cliente = c.id_cliente where c.id_cliente = 2
GO

SELECT * FROM vw_cliente_factura

--Zayra Manuela Gómez López
CREATE VIEW vw_cliente_factura1
AS
SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.fecha
FROM cliente as c
INNER JOIN factura AS f
    ON f.id_cliente = c.id_cliente where c.id_cliente = 17
GO

SELECT * FROM vw_cliente_factura1

-- Dante Eduardo Dolores Meza
CREATE VIEW vw_cliente_factura2
AS
SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.fecha
FROM cliente as c
INNER JOIN factura AS f
    ON f.id_cliente = c.id_cliente where c.id_cliente = 24
GO

SELECT * FROM vw_cliente_factura2

-- Ana Maribel Cedillo Núñez
CREATE VIEW vw_cliente_factura3
AS
SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.fecha
FROM cliente as c
INNER JOIN factura AS f
    ON f.id_cliente = c.id_cliente where c.id_cliente = 4
GO
SELECT * FROM vw_cliente_factura3

--Rodrigo Ismael Silva Ugarte
CREATE VIEW vw_cliente_factura4
AS
SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.fecha
FROM cliente as c
INNER JOIN factura AS f
    ON f.id_cliente = c.id_cliente where c.id_cliente = 11
GO

SELECT * FROM vw_cliente_factura4



--Seleccionar el producto que más ventas ha tenido.
SELECT id_producto, count (*) FROM detalle 
GROUP BY id_producto
     HAVING COUNT(*)>1;

--¿Qué producto tienen más cantidad en stock?
SELECT id_producto, nombre, stock
FROM producto
WHERE stock = (SELECT MAX(stock ) FROM producto)

--Ordenar, de la más antigua a la más reciente, las compras que ha habido en la tienda.
SELECT * FROM factura
ORDER BY fecha ASC; 

--Ordenar alfabéticamente los nombres de todos los clientes de la tienda.
SELECT * FROM cliente
ORDER BY CAST(nombre AS VARCHAR(100))

--Seleccionar cuántos productos hay en cada categoría: falda.
CREATE VIEW vw_producto_categoria
AS
SELECT c.id_categoria, p.id_producto, p.nombre
FROM categoria as c
INNER JOIN producto AS p
    ON c.id_categoria = p.id_categoria  where c.id_categoria = 2
GO
SELECT * FROM vw_producto_categoria

--Seleccionar cuántos productos hay en cada categoría: pantalón.
CREATE VIEW vw_producto_categoria1
AS
SELECT c.id_categoria, p.id_producto, p.nombre
FROM categoria as c
INNER JOIN producto AS p
    ON c.id_categoria = p.id_categoria  where c.id_categoria = 3
GO

SELECT * FROM vw_producto_categoria1

--Seleccionar cuántos productos hay en cada categoría: chamarra.
CREATE VIEW vw_producto_categoria2
AS
SELECT c.id_categoria, p.id_producto, p.nombre
FROM categoria as c
INNER JOIN producto AS p
    ON c.id_categoria = p.id_categoria  where c.id_categoria = 7
GO

SELECT * FROM vw_producto_categoria2

--Seleccionar cuántos productos hay en cada categoría: zapatos.
CREATE VIEW vw_producto_categoria3
AS
SELECT c.id_categoria, p.id_producto, p.nombre
FROM categoria as c
INNER JOIN producto AS p
    ON c.id_categoria = p.id_categoria  where c.id_categoria = 6
GO

SELECT * FROM vw_producto_categoria3

--Seleccionar cuántos productos hay en cada categoría: accesorios.
CREATE VIEW vw_producto_categoria4
AS
SELECT c.id_categoria, p.id_producto, p.nombre
FROM categoria as c
INNER JOIN producto AS p
    ON c.id_categoria = p.id_categoria  where c.id_categoria = 10
GO

SELECT * FROM vw_producto_categoria4

--Cuáles son los encargados en cada sucursal de Akira's Boutique?
SELECT num_sucursal, nom_sucursal, encargado from sucursal


--Cuáles son los empleados que trabajan en la sucursal de Akira's Boutique sucursal Constitución?
select * from empleados where num_empleado IN (26, 27, 28, 29, 30)

--¿Cuáles clientes son mayores de 30 años?
SELECT 
DATEDIFF(YEAR, fec_nac, GETDATE()) AS 'Edad'
FROM cliente;



