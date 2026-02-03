-- Actualizar TODOS los bibliotecarios con el hash verificado
-- Contrasena: 1234

UPDATE bibliotecarios 
SET Contrasena = '$2a$11$5lSWeJfvAH3Kxpk0srz9fOe568./88MbxyTnH5BlE9Nf6Dx/3.WKC';

-- Verificar
SELECT NombreUsuario, LEFT(Contrasena, 30) AS HashInicio, NombreCompleto, Activo
FROM bibliotecarios;

-- Todos los usuarios ahora usan la contrasena: 1234
