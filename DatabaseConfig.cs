namespace SistemaBiblioteca.AccesoDatos;

public static class DatabaseConfig
{
    public static string ConnectionString { get; set; } = 
        "Server=localhost;Database=bibliotecadb_sprint3;User=root;Password=12345678;ConnectionTimeout=60;DefaultCommandTimeout=60;AllowUserVariables=True;AutoEnlist=false;";
}
