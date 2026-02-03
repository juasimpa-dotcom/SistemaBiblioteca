SET GLOBAL innodb_lock_wait_timeout = 120;
SET GLOBAL transaction_isolation = 'READ-COMMITTED';

DROP DATABASE IF EXISTS bibliotecadb_sprint3;
CREATE DATABASE bibliotecadb_sprint3 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bibliotecadb_sprint3;

SET SESSION innodb_lock_wait_timeout = 120;

CREATE TABLE categorias (
    IdCategoria INT PRIMARY KEY AUTO_INCREMENT,
    NombreCategoria VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Activo TINYINT DEFAULT 1,
    INDEX idx_activo (Activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE autores (
    IdAutor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Nacionalidad VARCHAR(50),
    FechaNacimiento DATE,
    Activo TINYINT DEFAULT 1,
    INDEX idx_nombre (Nombre, Apellido),
    INDEX idx_activo (Activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE usuarios (
    IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
    CI VARCHAR(20) UNIQUE NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    Direccion VARCHAR(200),
    TipoUsuario VARCHAR(20) DEFAULT 'Socio',
    FechaNacimiento DATE,
    FechaRegistro DATETIME DEFAULT CURRENT_TIMESTAMP,
    Suspendido TINYINT DEFAULT 0,
    FechaFinSuspension DATE,
    MultasPendientes DECIMAL(10,2) DEFAULT 0.00,
    Activo TINYINT DEFAULT 1,
    INDEX idx_ci (CI),
    INDEX idx_nombre (Nombre, Apellido),
    INDEX idx_suspendido (Suspendido),
    INDEX idx_activo (Activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE bibliotecarios (
    IdBibliotecario INT PRIMARY KEY AUTO_INCREMENT,
    NombreUsuario VARCHAR(50) UNIQUE NOT NULL,
    Contrasena VARCHAR(255) NOT NULL,
    NombreCompleto VARCHAR(200) NOT NULL,
    Email VARCHAR(100),
    FechaCreacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    UltimoAcceso DATETIME,
    Activo TINYINT DEFAULT 1,
    INDEX idx_usuario (NombreUsuario),
    INDEX idx_activo (Activo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE libros (
    IdLibro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    IdCategoria INT,
    Editorial VARCHAR(100),
    AnioPublicacion INT,
    NumeroPaginas INT,
    Idioma VARCHAR(50) DEFAULT 'Espanol',
    StockTotal INT DEFAULT 1,
    StockDisponible INT DEFAULT 1,
    Ubicacion VARCHAR(50),
    Descripcion TEXT,
    Activo TINYINT DEFAULT 1,
    INDEX idx_titulo (Titulo),
    INDEX idx_isbn (ISBN),
    INDEX idx_categoria (IdCategoria),
    INDEX idx_stock (StockDisponible),
    INDEX idx_activo (Activo),
    FOREIGN KEY (IdCategoria) REFERENCES categorias(IdCategoria) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE libro_autor (
    IdLibro INT,
    IdAutor INT,
    PRIMARY KEY (IdLibro, IdAutor),
    FOREIGN KEY (IdLibro) REFERENCES libros(IdLibro) ON DELETE CASCADE,
    FOREIGN KEY (IdAutor) REFERENCES autores(IdAutor) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE prestamos (
    IdPrestamo INT PRIMARY KEY AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    IdLibro INT NOT NULL,
    IdBibliotecario INT,
    FechaPrestamo DATETIME DEFAULT CURRENT_TIMESTAMP,
    FechaDevolucionEstimada DATE NOT NULL,
    FechaDevolucionReal DATETIME,
    EstadoPrestamo VARCHAR(20) DEFAULT 'Activo',
    DiasRetraso INT DEFAULT 0,
    MontoMulta DECIMAL(10,2) DEFAULT 0.00,
    MultaPagada TINYINT DEFAULT 0,
    EstadoLibroDevuelto VARCHAR(20),
    Observaciones TEXT,
    INDEX idx_usuario (IdUsuario),
    INDEX idx_libro (IdLibro),
    INDEX idx_estado (EstadoPrestamo),
    INDEX idx_fecha_devolucion (FechaDevolucionEstimada),
    INDEX idx_fecha_prestamo (FechaPrestamo),
    FOREIGN KEY (IdUsuario) REFERENCES usuarios(IdUsuario) ON DELETE RESTRICT,
    FOREIGN KEY (IdLibro) REFERENCES libros(IdLibro) ON DELETE RESTRICT,
    FOREIGN KEY (IdBibliotecario) REFERENCES bibliotecarios(IdBibliotecario) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE reservas (
    IdReserva INT PRIMARY KEY AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    IdLibro INT NOT NULL,
    IdBibliotecario INT,
    FechaReserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    FechaExpiracion DATE NOT NULL,
    EstadoReserva VARCHAR(20) DEFAULT 'Pendiente',
    Estado VARCHAR(20) DEFAULT 'Activa',
    Observaciones TEXT,
    INDEX idx_usuario (IdUsuario),
    INDEX idx_libro (IdLibro),
    INDEX idx_estado (EstadoReserva),
    INDEX idx_fecha_reserva (FechaReserva),
    FOREIGN KEY (IdUsuario) REFERENCES usuarios(IdUsuario) ON DELETE RESTRICT,
    FOREIGN KEY (IdLibro) REFERENCES libros(IdLibro) ON DELETE RESTRICT,
    FOREIGN KEY (IdBibliotecario) REFERENCES bibliotecarios(IdBibliotecario) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE multas (
    IdMulta INT PRIMARY KEY AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    IdPrestamo INT,
    IdBibliotecario INT,
    TipoMulta VARCHAR(50) NOT NULL,
    Monto DECIMAL(10,2) NOT NULL,
    FechaGeneracion DATETIME DEFAULT CURRENT_TIMESTAMP,
    FechaPago DATETIME,
    EstadoMulta VARCHAR(20) DEFAULT 'Pendiente',
    BloqueoUsuario TINYINT DEFAULT 0,
    Motivo TEXT,
    Descripcion TEXT,
    INDEX idx_usuario (IdUsuario),
    INDEX idx_prestamo (IdPrestamo),
    INDEX idx_estado (EstadoMulta),
    INDEX idx_fecha (FechaGeneracion),
    FOREIGN KEY (IdUsuario) REFERENCES usuarios(IdUsuario) ON DELETE RESTRICT,
    FOREIGN KEY (IdPrestamo) REFERENCES prestamos(IdPrestamo) ON DELETE SET NULL,
    FOREIGN KEY (IdBibliotecario) REFERENCES bibliotecarios(IdBibliotecario) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE historial_prestamo (
    IdHistorial INT PRIMARY KEY AUTO_INCREMENT,
    IdPrestamo INT NOT NULL,
    IdUsuario INT NOT NULL,
    IdLibro INT NOT NULL,
    Accion VARCHAR(50) NOT NULL,
    FechaAccion DATETIME DEFAULT CURRENT_TIMESTAMP,
    UsuarioAccion VARCHAR(50),
    Observaciones TEXT,
    INDEX idx_prestamo (IdPrestamo),
    INDEX idx_usuario (IdUsuario),
    INDEX idx_fecha (FechaAccion),
    FOREIGN KEY (IdPrestamo) REFERENCES prestamos(IdPrestamo) ON DELETE CASCADE,
    FOREIGN KEY (IdUsuario) REFERENCES usuarios(IdUsuario) ON DELETE CASCADE,
    FOREIGN KEY (IdLibro) REFERENCES libros(IdLibro) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bibliotecarios (NombreUsuario, Contrasena, NombreCompleto, Email, FechaCreacion, UltimoAcceso, Activo) VALUES
('admin', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Administrador del Sistema', 'admin@biblioteca.com', '2024-01-01 08:00:00', '2026-01-28 08:30:00', 1),
('biblio', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Bibliotecario Principal', 'biblio@biblioteca.com', '2024-01-01 08:00:00', '2026-01-29 08:00:00', 1),
('maria.lopez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Maria Lopez Garcia', 'maria.lopez@biblioteca.com', '2024-01-15 09:00:00', '2026-01-28 09:15:00', 1),
('juan.perez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Juan Perez Martinez', 'juan.perez@biblioteca.com', '2024-02-01 08:30:00', '2026-01-27 16:45:00', 1),
('ana.rodriguez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Ana Rodriguez Sanchez', 'ana.rodriguez@biblioteca.com', '2024-02-15 10:00:00', '2026-01-28 07:30:00', 1),
('carlos.gonzalez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Carlos Gonzalez Fernandez', 'carlos.gonzalez@biblioteca.com', '2024-03-01 09:30:00', '2026-01-27 18:20:00', 1),
('laura.martinez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Laura Martinez Ruiz', 'laura.martinez@biblioteca.com', '2024-03-15 08:00:00', '2026-01-28 10:00:00', 1),
('pedro.sanchez', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Pedro Sanchez Diaz', 'pedro.sanchez@biblioteca.com', '2024-04-01 10:30:00', '2026-01-27 14:30:00', 1),
('sofia.garcia', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Sofia Garcia Lopez', 'sofia.garcia@biblioteca.com', '2024-04-15 09:00:00', '2026-01-28 11:45:00', 1),
('miguel.torres', '$2a$11$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'Miguel Torres Ramirez', 'miguel.torres@biblioteca.com', '2024-05-01 08:30:00', '2026-01-27 15:00:00', 1);

SELECT 'Base de datos creada exitosamente' AS RESULTADO;
SELECT 'TODOS los usuarios usan: 1234' AS Credenciales;
SELECT 'Ejemplos: admin/1234, biblio/1234, maria.lopez/1234' AS Usuarios;
