SET SQL_SAFE_UPDATES = 0;

USE bibliotecadb_sprint3;
SET SESSION innodb_lock_wait_timeout = 120;
INSERT INTO categorias (NombreCategoria, Descripcion, Activo) VALUES
( 'Ficcion', 'Novelas y cuentos de ficcion', 1),
( 'Ciencia Ficcion', 'Literatura de ciencia ficcion', 1),
( 'Historia', 'Libros de historia', 1),
( 'Tecnologia', 'Libros de tecnologia y programacion', 1),
( 'Filosofia', 'Obras filosoficas', 1),
( 'Poesia', 'Colecciones de poesia', 1);
INSERT INTO autores (Nombre, Apellido, Nacionalidad, FechaNacimiento) VALUES
('George', 'Orwell', 'Britnico', '1903-06-25'),
('J.K.', 'Rowling', 'Britnica', '1965-07-31'),
('Stephen', 'King', 'Estadounidense', '1947-09-21'),
('Agatha', 'Christie', 'Britnica', '1890-09-15'),
('Ernest', 'Hemingway', 'Estadounidense', '1899-07-21'),
('Mark', 'Twain', 'Estadounidense', '1835-11-30'),
('Franz', 'Kafka', 'Checo', '1883-07-03'),
('Albert', 'Camus', 'Francs', '1913-11-07'),
('Virginia', 'Woolf', 'Britnica', '1882-01-25'),
('James', 'Joyce', 'Irlands', '1882-02-02'),
('Dan', 'Brown', 'Estadounidense', '1964-06-22'),
('Paulo', 'Coelho', 'Brasileo', '1947-08-24'),
('Isabel', 'Allende', 'Chilena', '1942-08-02'),
('Carlos', 'Fuentes', 'Mexicano', '1928-11-11'),
('Octavio', 'Paz', 'Mexicano', '1914-03-31'),
('Mario', 'Vargas Llosa', 'Peruano', '1936-03-28'),
('Julio', 'Verne', 'Francs', '1828-02-08'),
('H.G.', 'Wells', 'Britnico', '1866-09-21'),
('Isaac', 'Asimov', 'Estadounidense', '1920-01-02'),
('Arthur', 'Conan Doyle', 'Britnico', '1859-05-22'),
('Laura', 'Esquivel', 'Mexicana', '1950-09-30'),
('Roberto', 'Bolao', 'Chileno', '1953-04-28'),
('Juan', 'Rulfo', 'Mexicano', '1917-05-16'),
('Horacio', 'Quiroga', 'Uruguayo', '1878-12-31'),
('Ernesto', 'Sabato', 'Argentino', '1911-06-24'),
('Mario', 'Benedetti', 'Uruguayo', '1920-09-14'),
('Alejo', 'Carpentier', 'Cubano', '1904-12-26'),
('Jos', 'Donoso', 'Chileno', '1924-10-05'),
('Carlos', 'Ruiz Zafn', 'Espaol', '1964-09-25'),
('Arturo', 'Prez-Reverte', 'Espaol', '1951-11-25');
INSERT INTO libros (ISBN, Titulo, IdCategoria, Editorial, AnioPublicacion, NumeroPaginas, StockTotal, StockDisponible, Ubicacion, Activo) VALUES
('978-0141036144', 'El Gran Gatsby', 1, 'Penguin', 1925, 180, 5, 5, 'Estante F-01', 1),
('978-0061120084', 'Matar a un ruiseor', 1, 'HarperCollins', 1960, 336, 4, 4, 'Estante F-02', 1),
('978-0142437339', 'Crimen y castigo', 1, 'Penguin', 1866, 671, 3, 3, 'Estante F-03', 1),
('978-0679783268', 'Orgullo y prejuicio', 1, 'Random House', 1813, 279, 4, 4, 'Estante F-04', 1),
('978-0451524935', '1984', 1, 'Signet', 1949, 328, 6, 6, 'Estante F-05', 1),
('978-0486284736', 'Grandes esperanzas', 1, 'Dover', 1861, 544, 3, 3, 'Estante F-06', 1),
('978-0307277671', 'El seor de las moscas', 1, 'Penguin', 1954, 224, 4, 4, 'Estante F-07', 1),
('978-0439139595', 'Harry Potter y la piedra filosofal', 1, 'Scholastic', 1997, 309, 8, 7, 'Estante F-08', 1),
('978-0439358071', 'Harry Potter y la cmara secreta', 1, 'Scholastic', 1998, 341, 6, 6, 'Estante F-09', 1),
('978-0439136365', 'Harry Potter y el prisionero de Azkaban', 1, 'Scholastic', 1999, 435, 6, 5, 'Estante F-10', 1),
('978-0743273565', 'El resplandor', 1, 'Doubleday', 1977, 447, 5, 4, 'Estante F-11', 1),
('978-0385333849', 'It (Eso)', 1, 'Viking', 1986, 1138, 4, 3, 'Estante F-12', 1),
('978-0062073556', 'Asesinato en el Orient Express', 1, 'HarperCollins', 1934, 256, 5, 5, 'Estante F-13', 1),
('978-0062073501', 'Muerte en el Nilo', 1, 'HarperCollins', 1937, 288, 4, 4, 'Estante F-14', 1),
('978-0684830490', 'El viejo y el mar', 1, 'Scribner', 1952, 127, 5, 5, 'Estante F-15', 1),
('978-0684801223', 'Por quin doblan las campanas', 1, 'Scribner', 1940, 471, 3, 3, 'Estante F-16', 1),
('978-0486280615', 'Las aventuras de Tom Sawyer', 1, 'Dover', 1876, 274, 4, 4, 'Estante F-17', 1),
('978-0486284712', 'Las aventuras de Huckleberry Finn', 1, 'Dover', 1884, 366, 4, 4, 'Estante F-18', 1),
('978-0805210316', 'La metamorfosis', 1, 'Schocken', 1915, 201, 5, 5, 'Estante F-19', 1),
('978-0679734512', 'El proceso', 1, 'Vintage', 1925, 255, 3, 3, 'Estante F-20', 1),
('978-0679720201', 'El extranjero', 1, 'Vintage', 1942, 123, 5, 5, 'Estante F-21', 1),
('978-0679732761', 'La peste', 1, 'Vintage', 1947, 308, 4, 4, 'Estante F-22', 1),
('978-0156907392', 'La seora Dalloway', 1, 'Harcourt', 1925, 194, 3, 3, 'Estante F-23', 1),
('978-0199536405', 'Al faro', 1, 'Oxford', 1927, 209, 3, 3, 'Estante F-24', 1),
('978-0199535675', 'Ulises', 1, 'Oxford', 1922, 783, 2, 2, 'Estante F-25', 1),
('978-0385504201', 'El cdigo Da Vinci', 1, 'Doubleday', 2003, 454, 6, 5, 'Estante F-26', 1),
('978-0385514231', 'ngeles y demonios', 1, 'Pocket Books', 2000, 616, 5, 4, 'Estante F-27', 1),
('978-0061122415', 'El alquimista', 1, 'HarperOne', 1988, 163, 7, 6, 'Estante F-28', 1),
('978-0062315007', 'Once minutos', 1, 'HarperCollins', 2003, 304, 4, 4, 'Estante F-29', 1),
('978-0060883287', 'La casa de los espritus', 1, 'Plaza & Jans', 1982, 433, 5, 5, 'Estante F-30', 1);
INSERT INTO libros (ISBN, Titulo, IdCategoria, Editorial, AnioPublicacion, NumeroPaginas, StockTotal, StockDisponible, Ubicacion, Activo) VALUES
('978-0553293357', 'Fundacin', 2, 'Bantam', 1951, 255, 4, 4, 'Estante SF-01', 1),
('978-0553293371', 'Fundacin e Imperio', 2, 'Bantam', 1952, 247, 4, 4, 'Estante SF-02', 1),
('978-0553293395', 'Segunda Fundacin', 2, 'Bantam', 1953, 279, 4, 4, 'Estante SF-03', 1),
('978-0553382563', 'Yo, Robot', 2, 'Bantam', 1950, 224, 5, 5, 'Estante SF-04', 1),
('978-0345404473', 'Neuromante', 2, 'Ace', 1984, 271, 3, 3, 'Estante SF-05', 1),
('978-0441569595', 'Dune', 2, 'Ace', 1965, 688, 5, 4, 'Estante SF-06', 1),
('978-0547928227', 'El Hobbit', 2, 'Houghton Mifflin', 1937, 310, 6, 6, 'Estante SF-07', 1),
('978-0618640157', 'El Seor de los Anillos: La Comunidad', 2, 'Houghton Mifflin', 1954, 423, 5, 4, 'Estante SF-08', 1),
('978-0618640164', 'El Seor de los Anillos: Las Dos Torres', 2, 'Houghton Mifflin', 1954, 352, 5, 4, 'Estante SF-09', 1),
('978-0618640171', 'El Seor de los Anillos: El Retorno del Rey', 2, 'Houghton Mifflin', 1955, 416, 5, 4, 'Estante SF-10', 1),
('978-0345391803', 'La gua del autoestopista galctico', 2, 'Del Rey', 1979, 224, 5, 5, 'Estante SF-11', 1),
('978-0062225672', 'La guerra de los mundos', 2, 'Harper Perennial', 1898, 192, 4, 4, 'Estante SF-12', 1),
('978-0486415826', 'La mquina del tiempo', 2, 'Dover', 1895, 118, 4, 4, 'Estante SF-13', 1),
('978-0553213119', 'Veinte mil leguas de viaje submarino', 2, 'Bantam', 1870, 368, 4, 4, 'Estante SF-14', 1),
('978-0553214482', 'Viaje al centro de la Tierra', 2, 'Bantam', 1864, 240, 5, 5, 'Estante SF-15', 1),
('978-0553212167', 'De la Tierra a la Luna', 2, 'Bantam', 1865, 226, 3, 3, 'Estante SF-16', 1),
('978-0441172719', 'Ender el xenocida', 2, 'Tor', 1985, 324, 4, 4, 'Estante SF-17', 1),
('978-0575094192', 'Un mago de Terramar', 2, 'Gollancz', 1968, 183, 3, 3, 'Estante SF-18', 1),
('978-0765348791', 'El nombre del viento', 2, 'DAW Books', 2007, 662, 5, 4, 'Estante SF-19', 1),
('978-0756404741', 'El temor de un hombre sabio', 2, 'DAW Books', 2011, 994, 4, 3, 'Estante SF-20', 1);
INSERT INTO libros (ISBN, Titulo, IdCategoria, Editorial, AnioPublicacion, NumeroPaginas, StockTotal, StockDisponible, Ubicacion, Activo) VALUES
('978-1784701994', 'Homo Deus: Breve historia del maana', 3, 'Debate', 2015, 496, 5, 4, 'Estante H-02', 1),
('978-1524731335', '21 lecciones para el siglo XXI', 3, 'Debate', 2018, 408, 5, 5, 'Estante H-03', 1),
('978-0393356182', 'Armas, grmenes y acero', 3, 'Norton', 1997, 528, 4, 4, 'Estante H-04', 1),
('978-0307475466', 'El laberinto de la soledad', 3, 'FCE', 1950, 191, 4, 4, 'Estante H-05', 1),
('978-8437505473', 'Breve historia de la humanidad', 3, 'Alianza', 2005, 512, 4, 4, 'Estante H-06', 1),
('978-8420689661', 'Historia universal', 3, 'Alianza', 1990, 864, 3, 3, 'Estante H-07', 1),
('978-8437600680', 'Las venas abiertas de Amrica Latina', 3, 'Siglo XXI', 1971, 379, 5, 5, 'Estante H-08', 1),
('978-8431315894', 'Historia de Amrica Latina', 3, 'Crtica', 1985, 624, 3, 3, 'Estante H-09', 1),
('978-8499892535', 'El origen de las especies', 3, 'Debate', 1859, 502, 4, 4, 'Estante H-10', 1),
('978-0062316097', 'El diario de Ana Frank', 3, 'Bantam', 1947, 283, 5, 5, 'Estante H-11', 1),
('978-8420471839', 'La conquista de Amrica', 3, 'Siglo XXI', 1982, 327, 4, 4, 'Estante H-13', 1),
('978-8437604947', 'Breve historia del mundo', 3, 'Alianza', 1928, 384, 4, 4, 'Estante H-14', 1),
('978-8420674261', 'Historia de la filosofa occidental', 3, 'Espasa', 1945, 896, 2, 2, 'Estante H-15', 1);
INSERT INTO libros (ISBN, Titulo, IdCategoria, Editorial, AnioPublicacion, NumeroPaginas, StockTotal, StockDisponible, Ubicacion, Activo) VALUES
('978-0132350884', 'Clean Code', 4, 'Prentice Hall', 2008, 464, 5, 4, 'Estante T-01', 1),
('978-0201633610', 'Design Patterns', 4, 'Addison-Wesley', 1994, 395, 4, 4, 'Estante T-02', 1),
('978-0134685991', 'Effective Java', 4, 'Addison-Wesley', 2017, 416, 4, 3, 'Estante T-03', 1),
('978-0596007126', 'Head First Design Patterns', 4, 'O Reilly', 2004, 638, 5, 5, 'Estante T-04', 1),
('978-0135957059', 'The Pragmatic Programmer', 4, 'Addison-Wesley', 2019, 352, 4, 4, 'Estante T-05', 1),
('978-0321125217', 'Domain-Driven Design', 4, 'Addison-Wesley', 2003, 560, 3, 3, 'Estante T-06', 1),
('978-0201485677', 'Refactoring', 4, 'Addison-Wesley', 1999, 431, 4, 4, 'Estante T-07', 1),
('978-0596517748', 'JavaScript: The Good Parts', 4, 'O Reilly', 2008, 176, 5, 5, 'Estante T-08', 1),
('978-1449355739', 'Learning Python', 4, 'O Reilly', 2013, 1648, 4, 3, 'Estante T-09', 1),
('978-0596809485', 'C# in Depth', 4, 'Manning', 2008, 552, 4, 4, 'Estante T-10', 1),
('978-0321127426', 'Patterns of Enterprise Application', 4, 'Addison-Wesley', 2002, 560, 3, 3, 'Estante T-11', 1),
('978-0134494166', 'Clean Architecture', 4, 'Prentice Hall', 2017, 432, 4, 3, 'Estante T-12', 1),
('978-0321601919', 'The Clean Coder', 4, 'Prentice Hall', 2011, 256, 4, 4, 'Estante T-13', 1),
('978-0596000264', 'Mastering Regular Expressions', 4, 'O Reilly', 2006, 544, 3, 3, 'Estante T-14', 1),
('978-0321601912', 'Programming Pearls', 4, 'Addison-Wesley', 1999, 256, 3, 3, 'Estante T-15', 1),
('978-0201616224', 'The Mythical Man-Month', 4, 'Addison-Wesley', 1975, 322, 3, 3, 'Estante T-16', 1),
('978-0321934116', 'Building Microservices', 4, 'O Reilly', 2015, 280, 4, 4, 'Estante T-17', 1),
('978-1449373320', 'Designing Data-Intensive Applications', 4, 'O Reilly', 2017, 616, 4, 3, 'Estante T-18', 1),
('978-0134757599', 'Refactoring to Patterns', 4, 'Addison-Wesley', 2004, 400, 3, 3, 'Estante T-19', 1),
('978-0321336380', 'Working Effectively with Legacy Code', 4, 'Prentice Hall', 2004, 464, 3, 3, 'Estante T-20', 1);
INSERT INTO libros (ISBN, Titulo, IdCategoria, Editorial, AnioPublicacion, NumeroPaginas, StockTotal, StockDisponible, Ubicacion, Activo) VALUES
('978-8437619767', 'tica a Nicmaco', 5, 'Gredos', -340, 256, 3, 3, 'Estante FIL-04', 1),
('978-8437613482', 'El ser y la nada', 5, 'Losada', 1943, 704, 3, 3, 'Estante FIL-08', 1),
('978-8420412146', 'Discurso del mtodo', 5, 'Alianza', 1637, 112, 4, 4, 'Estante FIL-09', 1),
('978-8497592581', 'Filosofa para principiantes', 5, 'Paids', 2005, 256, 5, 5, 'Estante FIL-10', 1);
;
INSERT INTO usuarios (CI, Nombre, Apellido, Email, Telefono, Direccion, TipoUsuario, FechaNacimiento) VALUES
('10234567', 'Roberto', 'Gmez', 'roberto.gomez@email.com', '555-1001', 'Av. Principal 101', 'Socio', '1985-03-15'),
('10234568', 'Mara', 'Fernndez', 'maria.fernandez@email.com', '555-1002', 'Calle Central 202', 'Socio', '1990-07-22'),
('10234569', 'Carlos', 'Ruiz', 'carlos.ruiz@email.com', '555-1003', 'Plaza Mayor 303', 'Socio', '1988-11-30'),
('10234570', 'Ana', 'Silva', 'ana.silva@email.com', '555-1004', 'Av. Libertad 404', 'Socio', '1992-05-18'),
('10234571', 'Luis', 'Moreno', 'luis.moreno@email.com', '555-1005', 'Calle Luna 505', 'Socio', '1987-09-25'),
('10234572', 'Patricia', 'Castro', 'patricia.castro@email.com', '555-1006', 'Av. Sol 606', 'Socio', '1991-01-12'),
('10234573', 'Jorge', 'Vargas', 'jorge.vargas@email.com', '555-1007', 'Calle Estrella 707', 'Socio', '1989-04-08'),
('10234574', 'Laura', 'Rojas', 'laura.rojas@email.com', '555-1008', 'Plaza Libertad 808', 'Socio', '1993-12-03'),
('10234575', 'Diego', 'Mendoza', 'diego.mendoza@email.com', '555-1009', 'Av. Independencia 909', 'Socio', '1986-08-14'),
('10234576', 'Carmen', 'Herrera', 'carmen.herrera@email.com', '555-1010', 'Calle Victoria 1010', 'Socio', '1994-10-21'),
('10234577', 'Manuel', 'Soto', 'manuel.soto@email.com', '555-1011', 'Av. Progreso 1111', 'Socio', '1990-02-17'),
('10234578', 'Silvia', 'Ortiz', 'silvia.ortiz@email.com', '555-1012', 'Calle Comercio 1212', 'Socio', '1988-06-09'),
('10234579', 'Ricardo', 'Navarro', 'ricardo.navarro@email.com', '555-1013', 'Plaza Central 1313', 'Socio', '1992-07-28'),
('10234580', 'Elena', 'Jimnez', 'elena.jimenez@email.com', '555-1014', 'Av. Coln 1414', 'Socio', '1987-03-05'),
('10234581', 'Andrs', 'Ramrez', 'andres.ramirez@email.com', '555-1015', 'Calle Bolvar 1515', 'Socio', '1991-11-19'),
('10234582', 'Beatriz', 'Cruz', 'beatriz.cruz@email.com', '555-1016', 'Av. Amrica 1616', 'Socio', '1989-05-26'),
('10234583', 'Fernando', 'Reyes', 'fernando.reyes@email.com', '555-1017', 'Calle Sucre 1717', 'Socio', '1993-09-13'),
('10234584', 'Gabriela', 'Flores', 'gabriela.flores@email.com', '555-1018', 'Plaza Ayacucho 1818', 'Socio', '1986-12-30'),
('10234585', 'Hctor', 'Vega', 'hector.vega@email.com', '555-1019', 'Av. Camacho 1919', 'Socio', '1994-04-07'),
('10234586', 'Isabel', 'Medina', 'isabel.medina@email.com', '555-1020', 'Calle Montes 2020', 'Socio', '1990-08-24'),
('10234587', 'Javier', 'Paredes', 'javier.paredes@email.com', '555-1021', 'Av. 6 de Agosto 2121', 'Socio', '1988-01-11'),
('10234588', 'Luca', 'Guzmn', 'lucia.guzman@email.com', '555-1022', 'Calle Potos 2222', 'Socio', '1992-10-18'),
('10234589', 'Miguel', 'Salazar', 'miguel.salazar@email.com', '555-1023', 'Plaza Murillo 2323', 'Socio', '1987-06-25'),
('10234590', 'Natalia', 'Romero', 'natalia.romero@email.com', '555-1024', 'Av. Arce 2424', 'Socio', '1991-02-02'),
('10234591', 'Oscar', 'Aguilar', 'oscar.aguilar@email.com', '555-1025', 'Calle Sagrnaga 2525', 'Socio', '1989-12-09'),
('20234567', 'Pedro', 'Luna', 'pedro.luna@universidad.edu', '555-2001', 'Residencia Universitaria A-101', 'Estudiante', '2000-01-15'),
('20234568', 'Sofa', 'Ros', 'sofia.rios@universidad.edu', '555-2002', 'Residencia Universitaria A-102', 'Estudiante', '2001-03-22'),
('20234569', 'Daniel', 'Campos', 'daniel.campos@universidad.edu', '555-2003', 'Residencia Universitaria A-103', 'Estudiante', '1999-07-30'),
('20234570', 'Valentina', 'Paz', 'valentina.paz@universidad.edu', '555-2004', 'Residencia Universitaria A-104', 'Estudiante', '2002-05-18'),
('20234571', 'Sebastin', 'Corts', 'sebastian.cortes@universidad.edu', '555-2005', 'Residencia Universitaria A-105', 'Estudiante', '2000-09-25'),
('20234572', 'Camila', 'Miranda', 'camila.miranda@universidad.edu', '555-2006', 'Residencia Universitaria B-101', 'Estudiante', '2001-01-12'),
('20234573', 'Mateo', 'Sandoval', 'mateo.sandoval@universidad.edu', '555-2007', 'Residencia Universitaria B-102', 'Estudiante', '1999-04-08'),
('20234574', 'Martina', 'Delgado', 'martina.delgado@universidad.edu', '555-2008', 'Residencia Universitaria B-103', 'Estudiante', '2002-12-03'),
('20234575', 'Nicols', 'Ramos', 'nicolas.ramos@universidad.edu', '555-2009', 'Residencia Universitaria B-104', 'Estudiante', '2000-08-14'),
('20234576', 'Emma', 'Fuentes', 'emma.fuentes@universidad.edu', '555-2010', 'Residencia Universitaria B-105', 'Estudiante', '2001-10-21'),
('20234577', 'Lucas', 'Espinoza', 'lucas.espinoza@universidad.edu', '555-2011', 'Residencia Universitaria C-101', 'Estudiante', '1999-02-17'),
('20234578', 'Olivia', 'Carrillo', 'olivia.carrillo@universidad.edu', '555-2012', 'Residencia Universitaria C-102', 'Estudiante', '2002-06-09'),
('20234579', 'Benjamn', 'Molina', 'benjamin.molina@universidad.edu', '555-2013', 'Residencia Universitaria C-103', 'Estudiante', '2000-07-28'),
('20234580', 'Ma', 'Cabrera', 'mia.cabrera@universidad.edu', '555-2014', 'Residencia Universitaria C-104', 'Estudiante', '2001-03-05'),
('20234581', 'Santiago', 'Iglesias', 'santiago.iglesias@universidad.edu', '555-2015', 'Residencia Universitaria C-105', 'Estudiante', '1999-11-19'),
('20234582', 'Isabella', 'Pea', 'isabella.pena@universidad.edu', '555-2016', 'Residencia Universitaria D-101', 'Estudiante', '2002-05-26'),
('20234583', 'Toms', 'Montoya', 'tomas.montoya@universidad.edu', '555-2017', 'Residencia Universitaria D-102', 'Estudiante', '2000-09-13'),
('20234584', 'Renata', 'Ibez', 'renata.ibanez@universidad.edu', '555-2018', 'Residencia Universitaria D-103', 'Estudiante', '2001-12-30'),
('20234585', 'Emiliano', 'Valdez', 'emiliano.valdez@universidad.edu', '555-2019', 'Residencia Universitaria D-104', 'Estudiante', '1999-04-07'),
('20234586', 'Victoria', 'Palacios', 'victoria.palacios@universidad.edu', '555-2020', 'Residencia Universitaria D-105', 'Estudiante', '2002-08-24'),
('20234587', 'Maximiliano', 'Guerrero', 'maximiliano.guerrero@universidad.edu', '555-2021', 'Residencia Universitaria E-101', 'Estudiante', '2000-01-11'),
('20234588', 'Julieta', 'Domnguez', 'julieta.dominguez@universidad.edu', '555-2022', 'Residencia Universitaria E-102', 'Estudiante', '2001-10-18'),
('20234589', 'Joaqun', 'Castillo', 'joaquin.castillo@universidad.edu', '555-2023', 'Residencia Universitaria E-103', 'Estudiante', '1999-06-25'),
('20234590', 'Antonella', 'Nez', 'antonella.nunez@universidad.edu', '555-2024', 'Residencia Universitaria E-104', 'Estudiante', '2002-02-02'),
('20234591', 'Thiago', 'Figueroa', 'thiago.figueroa@universidad.edu', '555-2025', 'Residencia Universitaria E-105', 'Estudiante', '2000-12-09');
SELECT ' 50 usuarios inyectados correctamente' AS 'RESULTADO';
SELECT 
    TipoUsuario, 
    COUNT(*) as Cantidad 
FROM usuarios 
GROUP BY TipoUsuario;
SELECT 'Datos cargados correctamente' AS RESULTADO;

INSERT INTO prestamos (IdUsuario, IdLibro, FechaPrestamo, FechaDevolucionEstimada, EstadoPrestamo) VALUES

(11, 16, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 9 DAY), 'Activo'),

(12, 20, DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 11 DAY), 'Activo'),

(13, 25, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY), 'Activo'),

(14, 30, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 12 DAY), 'Activo'),

(15, 35, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 4 DAY), 'Activo'),

(16, 40, DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 10 DAY), 'Activo'),

(17, 45, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 8 DAY), 'Activo'),

(18, 50, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 13 DAY), 'Activo'),

(19, 55, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 6 DAY), 'Activo'),

(20, 60, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 9 DAY), 'Activo'),

(21, 65, DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 11 DAY), 'Activo'),

(22, 70, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY), 'Activo'),

(23, 75, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 12 DAY), 'Activo'),

(24, 80, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 8 DAY), 'Activo'),

(25, 85, DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 10 DAY), 'Activo'),

(26, 3, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY), 'Activo'),

(27, 8, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 13 DAY), 'Activo'),

(28, 13, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 4 DAY), 'Activo'),

(29, 18, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 9 DAY), 'Activo'),

(30, 23, DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 11 DAY), 'Activo');

INSERT INTO prestamos (IdUsuario, IdLibro, FechaPrestamo, FechaDevolucionEstimada, EstadoPrestamo, DiasRetraso, MontoMulta, MultaPagada) VALUES

(31, 17, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Activo', 11, 22.00, 0),

(32, 22, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), 'Activo', 16, 32.00, 0),

(33, 27, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), 'Activo', 8, 16.00, 0),

(34, 32, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), 'Activo', 14, 28.00, 0),

(35, 37, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), 'Activo', 6, 12.00, 0),

(36, 42, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), 'Activo', 12, 24.00, 0),

(37, 47, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), 'Activo', 10, 20.00, 0),

(38, 52, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), 'Activo', 21, 42.00, 0),

(39, 57, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), 'Activo', 4, 8.00, 0),

(40, 62, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), 'Activo', 13, 26.00, 0),

(41, 67, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), 'Activo', 9, 18.00, 0),

(42, 72, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Activo', 5, 10.00, 0),

(43, 77, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), 'Activo', 18, 36.00, 0),

(44, 82, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), 'Activo', 7, 14.00, 0),

(45, 87, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), 'Activo', 15, 30.00, 0),

(46, 5, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), 'Activo', 3, 6.00, 0),

(47, 10, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), 'Activo', 19, 38.00, 0),

(48, 15, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Activo', 11, 22.00, 0),

(49, 20, DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), 'Activo', 17, 34.00, 0),

(50, 25, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), 'Activo', 26, 52.00, 0);

INSERT INTO prestamos (IdUsuario, IdLibro, FechaPrestamo, FechaDevolucionEstimada, FechaDevolucionReal, EstadoPrestamo, EstadoLibroDevuelto) VALUES

(11, 18, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), 'Devuelto', 'Excelente'),

(12, 23, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), 'Devuelto', 'Excelente'),

(13, 28, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), 'Devuelto', 'Bueno'),

(14, 33, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), 'Devuelto', 'Excelente'),

(15, 38, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), 'Devuelto', 'Bueno'),

(16, 43, DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), 'Devuelto', 'Excelente'),

(17, 48, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), 'Devuelto', 'Excelente'),

(18, 53, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), 'Devuelto', 'Bueno'),

(19, 58, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), 'Devuelto', 'Excelente'),

(20, 63, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Devuelto', 'Bueno'),

(21, 68, DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), 'Devuelto', 'Excelente'),

(22, 73, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), 'Devuelto', 'Bueno'),

(23, 78, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Devuelto', 'Excelente'),

(24, 83, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), 'Devuelto', 'Excelente'),

(25, 1, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), 'Devuelto', 'Bueno'),

(26, 6, DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), 'Devuelto', 'Excelente'),

(27, 11, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), 'Devuelto', 'Bueno'),

(28, 16, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), 'Devuelto', 'Excelente'),

(29, 21, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), 'Devuelto', 'Excelente'),

(30, 26, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), 'Devuelto', 'Bueno'),

(31, 19, DATE_SUB(CURRENT_DATE(), INTERVAL 50 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), 'Devuelto', 'Excelente'),

(32, 24, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), 'Devuelto', 'Bueno'),

(33, 29, DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), 'Devuelto', 'Excelente'),

(34, 34, DATE_SUB(CURRENT_DATE(), INTERVAL 48 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), 'Devuelto', 'Excelente'),

(35, 39, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), 'Devuelto', 'Bueno'),

(36, 44, DATE_SUB(CURRENT_DATE(), INTERVAL 47 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), 'Devuelto', 'Excelente'),

(37, 49, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), 'Devuelto', 'Bueno'),

(38, 54, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), 'Devuelto', 'Excelente'),

(39, 59, DATE_SUB(CURRENT_DATE(), INTERVAL 46 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 32 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), 'Devuelto', 'Excelente'),

(40, 64, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 31 DAY), 'Devuelto', 'Bueno');

INSERT INTO prestamos (IdUsuario, IdLibro, FechaPrestamo, FechaDevolucionEstimada, FechaDevolucionReal, EstadoPrestamo, DiasRetraso, MontoMulta, MultaPagada, EstadoLibroDevuelto) VALUES

(41, 21, DATE_SUB(CURRENT_DATE(), INTERVAL 60 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 46 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), 'Devuelto', 6, 12.00, 1, 'Regular'),

(42, 26, DATE_SUB(CURRENT_DATE(), INTERVAL 55 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), 'Devuelto', 4, 8.00, 1, 'Bueno'),

(43, 31, DATE_SUB(CURRENT_DATE(), INTERVAL 52 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), 'Devuelto', 5, 10.00, 1, 'Bueno'),

(44, 36, DATE_SUB(CURRENT_DATE(), INTERVAL 58 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), 'Devuelto', 3, 6.00, 1, 'Excelente'),

(45, 41, DATE_SUB(CURRENT_DATE(), INTERVAL 51 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), 'Devuelto', 7, 14.00, 1, 'Regular'),

(46, 46, DATE_SUB(CURRENT_DATE(), INTERVAL 57 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), 'Devuelto', 5, 10.00, 1, 'Bueno'),

(47, 51, DATE_SUB(CURRENT_DATE(), INTERVAL 53 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), 'Devuelto', 4, 8.00, 1, 'Excelente'),

(48, 56, DATE_SUB(CURRENT_DATE(), INTERVAL 59 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), 'Devuelto', 6, 12.00, 1, 'Bueno'),

(49, 61, DATE_SUB(CURRENT_DATE(), INTERVAL 54 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), 'Devuelto', 4, 8.00, 1, 'Excelente'),

(50, 66, DATE_SUB(CURRENT_DATE(), INTERVAL 56 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 42 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 34 DAY), 'Devuelto', 8, 16.00, 1, 'Regular');

UPDATE libros l

SET StockDisponible = StockDisponible - 1

WHERE IdLibro IN (SELECT IdLibro FROM prestamos WHERE EstadoPrestamo = 'Activo');

UPDATE usuarios u

SET MultasPendientes = (

    SELECT COALESCE(SUM(p.MontoMulta), 0)

    FROM prestamos p

    WHERE p.IdUsuario = u.IdUsuario 

    AND p.EstadoPrestamo = 'Activo' 

    AND p.MultaPagada = 0

);

UPDATE usuarios

SET Suspendido = 1, FechaFinSuspension = DATE_ADD(CURRENT_DATE(), INTERVAL 30 DAY)

WHERE MultasPendientes > 50.00;

SELECT ' 80 prstamos inyectados correctamente' AS 'RESULTADO';

SELECT 

    EstadoPrestamo, 

    COUNT(*) as Cantidad,

    SUM(CASE WHEN DiasRetraso > 0 THEN 1 ELSE 0 END) as ConRetraso

FROM prestamos 

GROUP BY EstadoPrestamo;


INSERT INTO reservas (IdUsuario, IdLibro, FechaReserva, FechaExpiracion, EstadoReserva, Estado) VALUES

(11, 17, CURRENT_DATE, DATE_ADD(CURRENT_DATE(), INTERVAL 3 DAY), 'Pendiente', 'Activa'),

(12, 22, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 2 DAY), 'Pendiente', 'Activa'),

(13, 27, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 1 DAY), 'Pendiente', 'Activa'),

(14, 32, CURRENT_DATE, DATE_ADD(CURRENT_DATE(), INTERVAL 3 DAY), 'Pendiente', 'Activa'),

(15, 37, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 2 DAY), 'Pendiente', 'Activa'),

(1, 42, CURRENT_DATE, DATE_ADD(CURRENT_DATE(), INTERVAL 3 DAY), 'Pendiente', 'Activa'),

(2, 47, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 2 DAY), 'Pendiente', 'Activa'),

(3, 52, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 1 DAY), 'Pendiente', 'Activa'),

(4, 57, CURRENT_DATE, DATE_ADD(CURRENT_DATE(), INTERVAL 3 DAY), 'Pendiente', 'Activa'),

(5, 62, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 2 DAY), 'Pendiente', 'Activa'),

(6, 67, CURRENT_DATE, DATE_ADD(CURRENT_DATE(), INTERVAL 3 DAY), 'Pendiente', 'Activa'),

(7, 72, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), DATE_ADD(CURRENT_DATE(), INTERVAL 2 DAY), 'Pendiente', 'Activa');

INSERT INTO reservas (IdUsuario, IdLibro, FechaReserva, FechaExpiracion, EstadoReserva, Estado, Observaciones) VALUES

(16, 16, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(17, 20, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(18, 25, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(19, 30, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(20, 35, DATE_SUB(CURRENT_DATE(), INTERVAL 7 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(8, 40, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(9, 45, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(10, 50, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(21, 55, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente'),

(22, 60, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), 'Completada', 'Retirada', 'Libro retirado exitosamente');

INSERT INTO reservas (IdUsuario, IdLibro, FechaReserva, FechaExpiracion, EstadoReserva, Estado, Observaciones) VALUES

(23, 1, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), 'Cancelada', 'Cancelada', 'Usuario no retir el libro a tiempo'),

(24, 5, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), 'Cancelada', 'Cancelada', 'Reserva expirada'),

(25, 10, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), 'Cancelada', 'Cancelada', 'Cancelada por el usuario'),

(26, 15, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), 'Cancelada', 'Cancelada', 'Usuario no retir el libro'),

(27, 21, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), 'Cancelada', 'Cancelada', 'Reserva expirada'),

(28, 26, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), 'Cancelada', 'Cancelada', 'Cancelada por el bibliotecario'),

(29, 31, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), 'Cancelada', 'Cancelada', 'Usuario solicit cancelacin'),

(30, 36, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), 'Cancelada', 'Cancelada', 'Reserva expirada');

SELECT ' 30 reservas inyectadas correctamente' AS 'RESULTADO';

SELECT 

    EstadoReserva, 

    COUNT(*) as Cantidad 

FROM reservas 

GROUP BY EstadoReserva;


INSERT INTO multas (IdUsuario, IdPrestamo, TipoMulta, Monto, FechaGeneracion, EstadoMulta, BloqueoUsuario, Motivo, Descripcion) VALUES

(31, 21, 'Retraso en devolucin', 22.00, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Pendiente', 0, 'Atraso en devolucin', '11 das de retraso  $2.00'),

(32, 22, 'Retraso en devolucin', 32.00, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), 'Pendiente', 0, 'Atraso en devolucin', '16 das de retraso  $2.00'),

(33, 23, 'Retraso en devolucin', 16.00, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), 'Pendiente', 0, 'Atraso en devolucin', '8 das de retraso  $2.00'),

(34, 24, 'Retraso en devolucin', 28.00, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), 'Pendiente', 0, 'Atraso en devolucin', '14 das de retraso  $2.00'),

(35, 25, 'Retraso en devolucin', 12.00, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), 'Pendiente', 0, 'Atraso en devolucin', '6 das de retraso  $2.00'),

(36, 26, 'Retraso en devolucin', 24.00, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), 'Pendiente', 0, 'Atraso en devolucin', '12 das de retraso  $2.00'),

(37, 27, 'Retraso en devolucin', 20.00, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), 'Pendiente', 0, 'Atraso en devolucin', '10 das de retraso  $2.00'),

(38, 28, 'Retraso en devolucin', 42.00, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY), 'Pendiente', 1, 'Atraso prolongado', '21 das de retraso  $2.00'),

(39, 29, 'Retraso en devolucin', 8.00, DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), 'Pendiente', 0, 'Atraso en devolucin', '4 das de retraso  $2.00'),

(40, 30, 'Retraso en devolucin', 26.00, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY), 'Pendiente', 0, 'Atraso en devolucin', '13 das de retraso  $2.00'),

(41, 31, 'Retraso en devolucin', 18.00, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY), 'Pendiente', 0, 'Atraso en devolucin', '9 das de retraso  $2.00'),

(42, 32, 'Retraso en devolucin', 10.00, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Pendiente', 0, 'Atraso en devolucin', '5 das de retraso  $2.00'),

(43, 33, 'Retraso en devolucin', 36.00, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), 'Pendiente', 0, 'Atraso en devolucin', '18 das de retraso  $2.00'),

(50, NULL, 'Prdida de material', 85.00, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Pendiente', 1, 'Libro no devuelto', 'Libro "Clean Code" reportado como perdido'),

(48, 38, 'Retraso en devolucin', 22.00, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Pendiente', 0, 'Atraso en devolucin', '11 das de retraso  $2.00');

INSERT INTO multas (IdUsuario, IdPrestamo, TipoMulta, Monto, FechaGeneracion, FechaPago, EstadoMulta, BloqueoUsuario, Motivo, Descripcion) VALUES

(41, 51, 'Retraso en devolucin', 12.00, DATE_SUB(CURRENT_DATE(), INTERVAL 46 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), 'Pagada', 0, 'Atraso en devolucin', '6 das de retraso  $2.00'),

(42, 52, 'Retraso en devolucin', 8.00, DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), 'Pagada', 0, 'Atraso en devolucin', '4 das de retraso  $2.00'),

(43, 53, 'Retraso en devolucin', 10.00, DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 33 DAY), 'Pagada', 0, 'Atraso en devolucin', '5 das de retraso  $2.00'),

(44, 54, 'Retraso en devolucin', 6.00, DATE_SUB(CURRENT_DATE(), INTERVAL 44 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 41 DAY), 'Pagada', 0, 'Atraso en devolucin', '3 das de retraso  $2.00'),

(45, 55, 'Retraso en devolucin', 14.00, DATE_SUB(CURRENT_DATE(), INTERVAL 37 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), 'Pagada', 0, 'Atraso en devolucin', '7 das de retraso  $2.00'),

(46, 56, 'Retraso en devolucin', 10.00, DATE_SUB(CURRENT_DATE(), INTERVAL 43 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 38 DAY), 'Pagada', 0, 'Atraso en devolucin', '5 das de retraso  $2.00'),

(47, 57, 'Retraso en devolucin', 8.00, DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), 'Pagada', 0, 'Atraso en devolucin', '4 das de retraso  $2.00'),

(48, 58, 'Retraso en devolucin', 12.00, DATE_SUB(CURRENT_DATE(), INTERVAL 45 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 39 DAY), 'Pagada', 0, 'Atraso en devolucin', '6 das de retraso  $2.00'),

(41, 51, 'Dao al material', 15.00, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), 'Pagada', 0, 'Libro en mal estado', 'Libro devuelto en estado Regular'),

(49, 59, 'Retraso en devolucin', 8.00, DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 36 DAY), 'Pagada', 0, 'Atraso en devolucin', '4 das de retraso  $2.00');

SELECT ' 25 multas inyectadas correctamente' AS 'RESULTADO';

SELECT EstadoMulta, COUNT(*) as Cantidad, SUM(Monto) as TotalMonto FROM multas GROUP BY EstadoMulta;


INSERT INTO historial_prestamo (IdPrestamo, IdUsuario, IdLibro, Accion, FechaAccion, UsuarioAccion, Observaciones) VALUES

(41, 11, 18, 'Prstamo registrado', DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), 'biblio', 'Prstamo inicial'),

(41, 11, 18, 'Devolucin registrada', DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY), 'biblio', 'Devuelto a tiempo'),

(1, 41, 21, 'Prstamo registrado', DATE_SUB(CURRENT_DATE(), INTERVAL 60 DAY), 'biblio', 'Prstamo inicial'),

(1, 41, 21, 'Multa generada', DATE_SUB(CURRENT_DATE(), INTERVAL 46 DAY), 'Sistema', 'Multa por retraso: $12.00'),

(1, 41, 21, 'Devolucin registrada', DATE_SUB(CURRENT_DATE(), INTERVAL 40 DAY), 'biblio', 'Devuelto con retraso, multa pagada'),

(21, 31, 17, 'Prstamo registrado', DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY), 'biblio', 'Prstamo inicial'),

(21, 31, 17, 'Multa generada', DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY), 'Sistema', 'Multa por retraso: $22.00'),

(21, 31, 17, 'Notificacin enviada', DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Sistema', 'Email de recordatorio enviado');

SELECT ' Historial inyectado correctamente' AS 'RESULTADO';

SELECT 'Datos cargados correctamente' AS RESULTADO;