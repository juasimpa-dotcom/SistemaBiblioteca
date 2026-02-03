using MySqlConnector;
using System.Data;

namespace SistemaBiblioteca.AccesoDatos;

public abstract class BaseRepository
{
    protected IDbConnection CreateConnection()
    {
        return new MySqlConnection(DatabaseConfig.ConnectionString);
    }

    protected IDbTransaction? CurrentTransaction { get; set; }
    protected IDbConnection? CurrentConnection { get; set; }

    public void ShareTransactionFrom(BaseRepository source)
    {
        CurrentConnection = source.CurrentConnection;
        CurrentTransaction = source.CurrentTransaction;
    }

    public void ClearTransactionContext()
    {
        CurrentTransaction = null;
        CurrentConnection = null;
    }

    public void BeginTransaction()
    {
        if (CurrentConnection == null)
        {
            CurrentConnection = CreateConnection();
            CurrentConnection.Open();
        }

        if (CurrentTransaction == null)
        {
            CurrentTransaction = CurrentConnection.BeginTransaction();
        }
    }

    public void CommitTransaction()
    {
        try
        {
            CurrentTransaction?.Commit();
        }
        finally
        {
            CurrentTransaction?.Dispose();
            CurrentTransaction = null;
            CurrentConnection?.Close();
            CurrentConnection?.Dispose();
            CurrentConnection = null;
        }
    }

    public void RollbackTransaction()
    {
        try
        {
            CurrentTransaction?.Rollback();
        }
        finally
        {
            CurrentTransaction?.Dispose();
            CurrentTransaction = null;
            CurrentConnection?.Close();
            CurrentConnection?.Dispose();
            CurrentConnection = null;
        }
    }

    protected IDbConnection GetConnection()
    {
        return CurrentConnection ?? CreateConnection();
    }

    protected IDbTransaction? GetTransaction()
    {
        return CurrentTransaction;
    }
}
