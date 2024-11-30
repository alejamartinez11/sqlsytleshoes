create database shoes;
use shoes
create table usuario(
id_usuario int not null,
primary key(id_usuario),
nombre varchar(20) not null,
apellidos varchar(20) not null,
telefono numeric(10) not null,
correoelectr�nico varchar(100) not null,
);
create table Envio(
id_envio int not null,
primary key(id_envio),
ciudad varchar(20) not null,
direcci�n varchar(50) not null,
fechadeenvio date not null,
);

create table producto(
id_producto int not null,
primary key(id_producto),
color varchar(20) not null,
nombre varchar(20) null,
descripci�n varchar(500) not null,
precio int not null,
talla varchar(10) not null,
id_categoria int not null,
foreign key (id_categoria) references categoria (id_categoria),
);

create table categoria(
id_categoria int not null,
primary key(id_categoria),
nombrecategoria varchar(20) null,
);
create table pedido(
id_pedido int not null,
primary key(id_pedido),
id_usuario int not null,
foreign key(id_usuario) references usuario(id_usuario),
id_producto int not null,
foreign key(id_producto) references producto(id_producto),
totaldelpedido int not null,
fechapedido date null,
metododepago varchar(20)
);
create table Envioproducto(
id_envioproducto int not null,
primary key(id_envioproducto),
id_envio int not null,
foreign key(id_envio) references Envio(id_envio),
id_producto int not null,
foreign key(id_producto) references producto(id_producto),
cantidad int not null,
);

--registros
insert into usuario(id_usuario, nombre, apellidos, telefono,  correoelectr�nico)
values
(1, 'sara', 'ospina villegas' , '3842973654', 'saraospina@gmail.com'),
(2, 'manuela', 'vargas oquendo', '8731673654', 'moquendo@gmail.com' ),
(3, 'daniel', 'arango ortiz' , '5938532986',  'daniortizarango@gmail.com' ),
(4, 'esteban', 'londo�o mazo' , '4368973654','estebanmazo@hotmail.com' ),
(5, 'nicol', 'arias restrepo' , '3215798491', 'nicolariasarias@gmail.com'),
(6, 'camila', 'rojas medina', '3184567890', 'camilarojas@gmail.com'),
(7, 'andr�s', 'valencia torres', '3172345678', 'andresvalencia@hotmail.com'),
(8, 'sofia', 'moreno casta�o', '3109876543', 'sofiamoreno@gmail.com'),
(9, 'juan', 'gallego salazar', '3165432109', 'juangallego@hotmail.com'),
(10, 'laura', 'mar�n ram�rez', '3194567890', 'lauramarin@gmail.com'),
(11, 'felipe', 'restrepo zapata', '3123456789', 'feliperestrepo@gmail.com'),
(12, 'carolina', 'mej�a alvarez', '3104567890', 'carolinamejia@hotmail.com'),
(13, 'david', 'hern�ndez gomez', '3175678901', 'davidhernandez@gmail.com'),
(14, 'valentina', 'ospina l�pez', '3209876543', 'valentinaospina@gmail.com'),
(15, 'sebasti�n', 'montoya quintero', '3111234567', 'sebastianmontoya@gmail.com'),
(16, 'martina', 'l�pez garc�a', '3145671234', 'martinalopez@gmail.com'),
(17, 'alejandro', 'p�rez g�mez', '3114569872', 'alejandroperez@hotmail.com'),
(18, 'daniela', 'quintero su�rez', '3106781234', 'danielaquintero@gmail.com'),
(19, 'miguel', 's�nchez ortega', '3157896541', 'miguelsanchez@gmail.com'),
(20, 'diana', 'ram�rez gallego', '3123458769', 'dianaramirez@hotmail.com'),
(21, 'ver�nica', 'mart�nez ospina', '3278901234', 'veronica.martinez@gmail.com'),
(22, 'julio', 'castro gonz�lez', '3289012345', 'julio.castro@yahoo.com'),
(23, '�ngela', 'restrepo p�rez', '3290123456', 'angela.restrepo@gmail.com'),
(24, 'santiago', 'g�mez l�pez', '3301234567', 'santiago.gomez@hotmail.com'),
(25, 'luisa', 'cardona arango', '3312345678', 'luisa.cardona@gmail.com'),
(26, 'fernando', 'quintero giraldo', '3323456789', 'fernando.quintero@yahoo.com'),
(27, 'alejandra', 'zapato restrepo', '3334567890', 'alejandra.zapato@gmail.com'),
(28, 'marco', 'vargas su�rez', '3345678901', 'marco.vargas@hotmail.com'),
(29, 'carolina', 'torres mar�n', '3356789012', 'carolina.torres@gmail.com'),
(30, 'eduardo', 'valencia montoya', '3367890123', 'eduardo.valencia@yahoo.com'),
(31, 'margarita', 'c�rdenas l�pez', '3378901234', 'margarita.cardenas@gmail.com'),
(32, 'victoria', 'morales zapata', '3389012345', 'victoria.morales@gmail.com'),
(33, 'ricardo', 'ospina p�rez', '3390123456', 'ricardo.ospina@hotmail.com'),
(34, 'ana', 'p�rez g�mez', '3401234567', 'ana.perez@gmail.com'),
(35, 'daniela', 'gonz�lez arango', '3412345678', 'daniela.gonzalez@yahoo.com'),
(36, 'felipe', 'montoya londo�o', '3423456789', 'felipe.montoya@gmail.com'),
(37, 'gloria', 'salazar ruiz', '3434567890', 'gloria.salazar@hotmail.com'),
(38, 'hugo', 'r�os p�rez', '3445678901', 'hugo.rios@gmail.com'),
(39, 'lorena', 'ospina cardona', '3456789012', 'lorena.ospina@gmail.com'),
(40, 'manuel', 's�nchez restrepo', '3467890123', 'manuel.sanchez@hotmail.com'),
(41, 'natalia', 'g�mez valencia', '3478901234', 'natalia.gomez@yahoo.com'),
(42, 'andrea', 'henao g�mez', '3489012345', 'andrea.henao@gmail.com'),
(43, 'oscar', 'valencia gonz�lez', '3490123456', 'oscar.valencia@gmail.com'),
(44, 'patricia', 'lozano mar�n', '3501234567', 'patricia.lozano@gmail.com'),
(45, 'sergio', 'mart�n salazar', '3512345678', 'sergio.martin@hotmail.com'),
(46, 'paula', 'quintero casta�o', '3523456789', 'paula.quintero@gmail.com'),
(47, 'ximena', 'moreno ospina', '3534567890', 'ximena.moreno@gmail.com'),
(48, 'tom�s', 'morales giraldo', '3545678901', 'tomas.morales@gmail.com'),
(49, 'mariana', 'torres quintero', '3556789012', 'mariana.torres@hotmail.com'),
(50, 'jose', 'valencia g�mez', '3567890123', 'jose.valencia@gmail.com');


insert into Envio(id_envio, ciudad,direcci�n, fechadeenvio)
values
(10, 'santa marta','cra20#46-10', '05/08/25'),
(20, 'medell�n','cra50#26-15',  '10/02/25' ),
(30, 'cali','cra70#32-9',  '03/07/25' ),
(40, 'cali' , 'cra80#36-10', '04/19/25' ),
(50, 'bogota','cra45#46-12',  '10/02/25'),
(60, 'pereira', 'cra15#12-45', '2025-03-12'),
(70, 'barranquilla', 'cra30#50-20', '2025-06-07'),
(80, 'cartagena', 'cra60#10-25', '2025-09-15'),
(90, 'manizales', 'cra40#22-33', '2025-01-20'),
(100, 'bucaramanga', 'cra35#18-10', '2025-05-10'),
(110, 'neiva', 'cra70#30-55', '2025-08-25'),
(120, 'villavicencio', 'cra45#15-80', '2025-04-05'),
(130, 'ibagu�', 'cra50#40-90', '2025-07-18'),
(140, 'c�cuta', 'cra38#55-22', '2025-02-28'),
(150, 'valledupar', 'cra20#33-44', '2025-03-30'),
(160, 'popay�n', 'cra15#45-12', '2025-04-22'),
(170, 'monter�a', 'cra18#34-56', '2025-08-12'),
(180, 'pasto', 'cra22#67-34', '2025-09-20'),
(190, 'quibd�', 'cra10#23-50', '2025-05-17'),
(200, 'armenia', 'cra25#18-76',�'2025-10-05'),
(210, 'medell�n', 'calle8#35-40', '2025-11-01'),
(220, 'bogot�', 'cra60#20-70', '2025-12-25'),
(230, 'cartagena', 'cra55#18-15', '2025-05-30'),
(240, 'barranquilla', 'calle9#40-60', '2025-06-14'),
(250, 'bucaramanga', 'cra12#15-11', '2025-07-03'),
(260, 'pereira', 'cra10#22-45', '2025-09-01'),
(270, 'manizales', 'calle30#30-60', '2025-08-12'),
(280, 'monter�a', 'cra50#10-80', '2025-07-18'),
(290, 'valledupar', 'calle9#50-40', '2025-11-09'),
(300, 'cali', 'cra7#23-12', '2025-03-14'),
(310, 'medell�n', 'calle17#40-33', '2025-06-30'),
(320, 'bogot�', 'cra60#30-50', '2025-07-01'),
(330, 'ibagu�', 'cra18#20-15', '2025-10-02'),
(340, 'pasto', 'cra25#14-40', '2025-11-15'),
(350, 'villavicencio', 'cra9#19-17',�'2025-09-07'),
(360, 'Cartagena', 'Calle 15 #18-30', '2025-05-10'),
(370, 'Bucaramanga', 'Carrera 25 #34-20', '2025-08-25'),
(380, 'Pereira', 'Calle 8 #10-50', '2025-12-15'),
(390, 'Manizales', 'Carrera 16 #27-18', '2025-01-05'),
(400, 'Ibagu�', 'Calle 20 #5-12', '2025-06-10'),
(410, 'C�cuta', 'Carrera 12 #45-10', '2025-03-20'),
(420, 'Monter�a', 'Calle 50 #10-40', '2025-07-30'),
(430, 'Popay�n', 'Carrera 21 #34-15', '2025-04-12'),
(440, 'Villavicencio', 'Calle 30 #18-22', '2025-09-18'),
(450, 'Pasto', 'Carrera 5 #12-40', '2025-11-05'),
(460, 'Riohacha', 'Calle 14 #18-10', '2025-10-10'),
(470, 'Armenia', 'Carrera 9 #6-25', '2025-02-28'),
(480, 'Santa Rosa de Cabal', 'Calle 3 #7-20', '2025-01-15'),
(490, 'Neiva', 'Carrera 8 #24-30', '2025-07-07'),
(500, 'Barrancabermeja', 'Calle 19 #5-12',�'2025-08-13');

select*from Envio
insert into producto(id_producto, nombre, descripci�n, precio, talla, color,id_categoria)
values
(12, 'nike', 'se enfoca en el rendimiento deportivo y el estilo casual' , '300', '37-42','negro,verde,rojo','11'),
(13, 'adidas', ' enfoque en la comodidad y la funcionalidad.', '250', '38-42', 'negro,verde,rojo','22'),
(14, 'jordan', ' apreciadas tanto por deportistas como por�coleccionistas.' , '350',  '37-42','negro,blanco,gris','33' ),
(15, 'vans', 'emblem�tica en la cultura juvenil y el estilo urbano' , '210','37-43','negro,blanco,gris','44' ),
(16, 'puma', ' marca deportiva global conocida por combinar rendimiento y estilo en sus productos. Con una fuerte presencia en deportes como el f�tbol y el running, tambi�n ha ganado relevancia en�la�moda�urban' , '230', '38-42','negro,blanco,gris','55'),
(17, 'reebok', 'dise�o innovador para entrenamiento', '200', '36-41', 'blanco,gris,azul','66'),
(18, 'converse', '�cono de la moda urbana',' 190', '37-44', 'negro,blanco,rojo','77'),
(19, 'new balance', 'zapatillas deportivas para correr', '280', '38-45', 'azul,gris,verde','88'),
(20, 'asics', 'especializada en calzado deportivo',' 300', '36-42', 'negro,azul,gris','99'),
(21, 'fila', 'ideal para entrenamiento y uso casual', '220 ', '37-43', 'rojo,negro,blanco','100'),
(22, 'under armour', 'confort y resistencia en el deporte', '270', '38-44', 'negro,azul,verde','101'),
(23, 'skechers', 'comodidad para caminar', '240', '35-41', 'gris,negro,rosa','102'),
(24, 'hoka', 'dise�o ergon�mico para corredores', '320', '36-42', 'amarillo,azul,blanco','103'),
(25, 'mizuno', 'excelencia en calzado deportivo', '310', '37-43', 'negro,gris,azul','104'),
(26, 'brooks', 'dise�ado para rendimiento', '290', '38-45', 'blanco,azul,verde','105'),
(27, 'merrell', 'zapatillas resistentes para senderismo', '330', '36-42', 'gris,negro,verde','106'),
(28, 'adidas', 'calzado t�cnico para aventuras', '350', '37-44', 'negro,rojo,gris','107'),
(29, 'kappa', 'moda deportiva funcional', '200', '37-43', 'negro,blanco,azul','108'),
(30, 'lotto', 'dise�o deportivo cl�sico', '260', '36-42', 'azul,rojo,gris','109'),
(31, 'birkenstock', 'sandalias anat�micas para mayor confort', '250', '37-43', 'marr�n, negro, beige','110'),
(32, 'toms', 'calzado casual con impacto social', '210', '38-42', 'gris, negro, blanco','111'),
(33, 'puma ignite', 'calzado deportivo y elegante', '290', '39-44', 'rojo, negro, blanco','112'),
(34, 'nike air max', '�cono en el dise�o deportivo', '370', '38-44', 'azul, blanco, gris','113'),
(35, 'adidas ultraboost', 'ideal para corredores y estilo urbano', '350', '37-43', 'negro, azul, gris','114'),
(36, 'vans old skool', 'cl�sico dise�o juvenil', '220', '36-42', 'negro, blanco, gris','115'),
(37, 'asics gel', 'excelente amortiguaci�n y dise�o', '320', '38-42', 'blanco, azul, gris','116'),
(38, 'clarks', 'calzado formal y sofisticado', '310', '38-43', 'marr�n, negro, beige','117'),
(39, 'geox', 'calzado transpirable y elegante', '280', '36-42', 'negro, azul, marr�n','118'),
(40, 'merrell', 'especializado en aventuras al aire libre', '260', '39-44', 'marr�n, negro, gris','119'),
(41, 'ecco', 'combinaci�n de confort y estilo', '340', '38-44', 'negro, blanco','120'),
(42, 'columbia', 'calzado para actividades extremas', '300', '39-45', 'gris, negro, azul','121'),
(43, 'rockport', 'elegancia y funcionalidad', '330', '38-44', 'marr�n, negro, gris','122'),
(44, 'north face', 'ideal para trekking y deportes extremos', '380', '39-45', 'negro, azul, gris','123'),
(45, 'diesel', 'dise�os audaces y modernos', '290', '36-42', 'blanco,�negro,�rojo','124'),
(46, 'reebok classic', 'calzado cl�sico y c�modo para uso diario', '220', '36-42', 'negro, blanco, gris','125'),
(47, 'saucony', 'ideal para correr largas distancias', '310', '37-43', 'azul, gris, verde','126'),
(48, 'keds', 'calzado casual y c�modo', '180', '35-40', 'rojo, blanco, negro','127'),
(49, 'converse all star', 'el calzado ic�nico para el estilo urbano', '220', '37-44', 'negro, rojo, azul','128'),
(50, 'reebok nanoflex', 'calzado deportivo dise�ado para entrenamiento de alta intensidad', '300', '37-44', 'gris,rosado','129'),
(51, 'new balance 990', 'calzado t�cnico para corredores exigentes', '400', '38-45', 'negro, blanco, gris','130'),
(52, 'nike free run', 'ligero y flexible para carreras largas', '330', '36-42', 'rojo, negro, gris','131'),
(53, 'puma fenty', 'calzado elegante y moderno para mujer', '380', '36-40', 'blanco, negro','132'),
(54, 'vans slip-on', 'calzado sin cordones c�modo y pr�ctico', '150', '36-42', 'negro, blanco, ','133'),
(55, 'adidas stan smith', 'calzado cl�sico y atemporal', '270', '37-44', 'blanco, verde','134'),
(56, 'salomon speedcross', 'calzado especializado para trail running', '340', '38-44', 'negro, azul, ','135'),
(57, 'nike cortez', 'dise�o retro para un look cl�sico', '290', '37-42', 'blanco, rojo, azul','136'),
(58, 'asics kayano', 'calzado de alta amortiguaci�n para corredores', '350', '37-44', 'negro, gris, azul','137'),
(59, 'brooks adrenaline', 'calzado para correr con gran estabilidad', '320', '38-45', 'blanco, negro, rojo','138'),
(60, 'hoka bondi', 'calzado ultra c�modo para largas distancias', '390', '36-42', 'gris, azul','139'),
(61, 'adidas gazelle', 'calzado deportivo cl�sico para uso diario', '280', '37-42', 'gris, azul, rojo','140');





delete from producto
select*from categoria

insert into categoria(id_categoria,nombrecategoria)
values
(11,'mujeres'),
(22,'hombres'),
(33,'ni�os'),
(44, 'deportivos'),
(55, 'casuales'),
(66, 'formales'),
(77, 'tendencias'),
(88, 'aventura'),
(99, 'infantiles'),
(100, 'running'),
(101, 'skate'),
(102, 'senderismo'),
(103, 'moda urbana'),
(104, 'f�tbol'),
(105, 'tenis'),
(106, 'baloncesto'),
(107, 'trail running'),
(108, 'ejercicio'),
(109, 'oficina'),
(110,�'viajes'),
(111, 'calzado deportivo'),
(112, 'calzado urbano'),
(113, 'calzado formal'),
(114, 'calzado de trekking'),
(115, 'elegante'),
(116, ' c�modo'),
(117, 'de moda'),
(118, ' casual'),
(119, ' gimnasio'),
(120, 'invierno'),
(121, 'verano'),
(122,'primavera'),
(123, 'tacones'),
(124, 'ligero'),
(125, 'premium'),
(126, 'botines'),
(127, 'sandalias'),
(128, 'cross'),
(129, 'alto rendimiento'),
(130, 'trabajo'),
(131, 'cuero'),
(132, ' antideslizante'),
(133, 'goma'),
(134, 'botas'),
(135, ' lujo'),
(136, ' correr'),
(137, 'bajitos'),
(138, ' flexible'),
(139, 'moda 2024'),
(140, 'tela');

select * from categoria

insert into pedido(id_pedido, id_usuario, id_producto, totaldelpedido, fechapedido, metododepago)
values
(21, '1', '12' , '380', '2025-08-29','efectivo'),
(31, '2', ' 13', '350', '2025-03-1', 'efectivo'),
(41, '3', '14' , '400',  '2025-07-20','transferencia' ),
(51, '4', '15' , '350','2025-04-30','transferencia' ),
(61, '5', ' 16','340', '2025-03-2', 'transferencia'),
(71, 6 ,    17, 410, '2025-05-15', 'efectivo'),
(81, 7, 18, 290, '2025-09-10', 'tarjeta de cr�dito'),
(91, 8, 19, 320, '2025-02-25', 'efectivo'),
(101, 9, 20, 450, '2025-07-05', 'tarjeta de cr�dito'),
(111, 10, 21, 230, '2025-04-18', 'efectivo'),
(121, 11, 22, 400, '2025-06-01', 'transferencia'),
(131, 12, 23, 250, '2025-03-30', 'tarjeta de d�bito'),
(141, 13, 24, 470, '2025-08-15', 'transferencia'),
(151, 14, 25, 390, '2025-10-02', 'tarjeta de cr�dito'),
(161, 15, 26, 420, '2025-01-25', 'efectivo'),
(171, 16, 27, 340, '2025-11-05', 'transferencia'),
(181, 17, 28, 510, '2025-03-12', 'tarjeta de d�bito'),
(191, 18, 29, 260, '2025-06-30', 'efectivo'),
(201, 19, 30, 330, '2025-09-18', 'transferencia'),
(211, 20, 12, 350, '2025-10-20',�'efectivo'),
(221, 21, 14, 380, '2025-05-02', 'efectivo'),
(231, 22, 15, 400, '2025-03-12', 'transferencia'),
(241, 23, 16, 320, '2025-07-22', 'tarjeta de cr�dito'),
(251, 24, 17, 360, '2025-04-08', 'efectivo'),
(261, 25, 18, 410, '2025-06-14', 'transferencia'),
(271, 26, 19, 340, '2025-08-10', 'tarjeta de d�bito'),
(281, 27, 20, 430, '2025-09-18', 'efectivo'),
(291, 28, 21, 390, '2025-10-25', 'transferencia'),
(301, 29, 22, 470, '2025-02-04', 'tarjeta de cr�dito'),
(311, 30, 23, 250, '2025-11-16', 'tarjeta de d�bito'),
(321, 31, 24, 360, '2025-01-10', 'transferencia'),
(331, 32, 25, 280, '2025-07-11', 'efectivo'),
(341, 33, 26, 350, '2025-06-25', 'tarjeta de cr�dito'),
(351, 34, 27, 410, '2025-12-09', 'transferencia'),
(361, 35, 28, 400, '2025-04-30', 'tarjeta de d�bito'),
(371, 36, 29, 370, '2025-09-15', 'efectivo'),
(381, 37, 30, 330, '2025-08-08', 'transferencia'),
(391, 38, 12, 340, '2025-05-05', 'tarjeta de cr�dito'),
(401, 39, 13, 420, '2025-03-17', 'efectivo'),
(411, 40, 14, 310, '2025-06-21', 'tarjeta de d�bito'),
(421, 41, 15, 280, '2025-08-30', 'transferencia'),
(431, 42, 16, 390, '2025-11-07', 'efectivo'),
(441, 43, 17, 470, '2025-02-14', 'tarjeta de cr�dito'),
(451, 44, 18, 450, '2025-03-29', 'transferencia'),
(461, 45, 19, 260, '2025-10-03', 'tarjeta de d�bito'),
(471, 46, 20, 330, '2025-09-09', 'efectivo'),
(481, 47, 21, 410, '2025-05-01', 'transferencia'),
(491, 48, 22, 350, '2025-01-20', 'tarjeta de cr�dito'),
(501, 49, 23, 310, '2025-07-30', 'efectivo'),
(511, 50, 24, 290, '2025-11-15', 'transferencia');
select * from pedido

insert into Envioproducto(id_envioproducto,id_envio,id_producto,cantidad)
values
(100,'10','12','2'),
(110,'20','13','3'),
(120,'30','14','4'),
(130,'40','15','3'),
(140,'50','16','3'),
(150, 60, 17, 2),
(160, 70, 18, 3),
(170, 80, 19, 1),
(180, 90, 20, 5),
(190, 100, 21, 4),
(200, 110, 22, 2),
(210, 120, 23, 3),
(220, 130, 24, 6),
(230, 140, 25, 2),
(240, 150, 26, 3),
(250, 160, 27, 1),
(260, 170, 28, 4),
(270, 180, 29, 3),
(280, 190, 30, 2),
(290,�200,�31,�3),
(300, 210, 31, 1),
(310, 220, 33, 2),
(320, 230, 34, 3),
(330, 240, 35, 4),
(340, 250, 36, 5),
(350, 260, 37, 2),
(360, 270, 38, 3),
(370, 280, 39, 4),
(380, 290, 40, 1),
(390, 300, 41, 2),
(400, 310, 42, 3),
(410, 320, 43, 4),
(420, 330, 44, 5),
(430, 340, 45, 1),
(440, 350, 46, 2),
(450, 360, 47, 3),
(460, 370, 48, 4),
(470, 380, 49, 5),
(480, 390, 50, 1),
(490, 400, 51, 2),
(500, 410, 52, 3),
(510, 420, 53, 4),
(520, 430, 54, 5),
(530, 440, 55, 1),
(540, 450, 56, 2),
(550, 460, 57, 3),
(560, 470, 58, 4),
(570, 480, 59, 5),
(580, 490, 60, 1),
(590,�450,�61,�2);

--consulta quienes pagan con transferencia
select * from pedido where metododepago = 'transferencia';

--a�adir campo a tabla usuario
alter table usuario add fecha_nacimiento date not null default '2000-10-10' ;
select* from usuario

--producto que su precio sea menor a 300
select*from producto where precio<300;

-- vamos a consultar cu�les productos tienen un precio menor a 300
-- y en caso de no existir, mostrar un mensaje que diga: 
-- "No hay productos con precio menor a 300".

if exists (select * from producto where precio < 200)
   ( select id_producto, nombre, precio from producto where precio < 200)
else
    select 'No hay productos con precio menor a 200' as resultado;

-- Se requiere saber qu� productos tienen disponibilidad en la talla 38
--Si no hay, mostrar un mensaje que diga:
-- "No hay productos disponibles en esta talla, vuelva despues".

if exists (select * from producto where talla like '%38%')
   ( select id_producto, nombre, talla  from producto 
 where talla like '%38%')
else
    select 'No hay productos disponibles en esta talla, intente m�s tarde'�as�resultado;


    
--pedidos realizados por los ussuarios 
create view pedidos_por_usuarios as
select  p.id_pedido,  p.totaldelpedido,  p.fechapedido,  p.metododepago, 
u.nombre as nombre_usuario, u.apellidos, pr.nombre as nombre_producto, pr.precio
from pedido p
inner join usuario u on p.id_usuario = u.id_usuario
inner join producto pr on p.id_producto =�pr.id_producto;

--envio de zapatos
create view detalle_envio as
select e.id_envio, e.ciudad, e.direcci�n, e.fechadeenvio, 
p.nombre as nombre_producto, p.talla, ep.cantidad
from Envioproducto ep
join Envio e on ep.id_envio = e.id_envio
join producto p on ep.id_producto =�p.id_producto;

select*from detalle_envio;

select name from sys.views;

--procedimientos almacenados
-- Metodo de pago utilizado por los clientes (efectivo)
create procedure P_metodoPago
	@metodopago varchar(20)
as
if exists (select * from pedido where metododepago like @metodopago)
			select * from pedido where metododepago like @metodopago
else
    select 'No hay productos disponibles en este metodo de pago'�as�metodo;

exec P_metodoPago 'efectivo';

--Promedio 

--Promedio de precio de zapatos adidas

create or alter proc P_promedio
	@num1 int,
	@num2 int,
	@suma int output,
	@promedio numeric(10,2) output
as
	select @suma = @num1 + @num2;
	select @promedio = @suma/2;

create or alter proc P_PromedioPrecio
	@nombre varchar(10),
	@suma int output,
	@promedio numeric(10,2) output
as
select*from producto where nombre like @nombre;
select @suma = sum(precio) from producto where nombre like @nombre;
select @promedio = avg(precio) from producto where nombre like @nombre;


declare
	@sum int,
	@prom numeric(10,2)

exec P_PromedioPrecio 'adidas', @sum output , @prom output
	select @sum as 'Preciototal', @prom as 'Promedio Precio';

--Se requiere saber el nombre de las personas, seg�n la marca de zapatos compraron (reebok)
create or alter proc P_UsuarioMarca
@marca varchar(20)
as
select u.nombre, p.id_producto, p.nombre
	from usuario u
	inner join producto p
	on u.id_usuario = p.id_producto
	where p.nombre like @marca;

exec P_UsuarioMarca 'reebok';

-- Se requiere saber que tallas pidio determinado usuario
create or alter proc P_TallaUsuario
@NombreUsuario varchar(20),
@ApellidoUsuario varchar(20)
as
select u.nombre, u.apellidos, p.talla
	from usuario u
	inner join producto p
	on u.id_usuario = p.id_producto
	where u.nombre like @NombreUsuario and u.apellidos like @ApellidoUsuario;

	exec P_TallaUsuario 'carolina', 'mej�a alvarez';

create proc P_ColorMarca
  @color varchar(20)
as
if exists(select id_producto, nombre, color from producto where color like @color)
 select id_producto, nombre, color from producto where color like @color
else
    select 'No hay productos disponibles en este color, intente m�s tarde'�as�resultado;

exec P_ColorMarca 'blanco,�negro,�rojo';