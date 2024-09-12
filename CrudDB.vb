Imports System.Data.SqlClient

Public Class CrudDB
    Private ReadOnly connectionString As String = "Password=usepark;Persist Security Info=True;User ID=usepark;Initial Catalog=epark;Data Source=ELVIRA\SQLEXPRESS"

    Public Function ExecutarProcedure(args As Dictionary(Of String, Object)) As DataTable
        Dim dt As New DataTable()

        Try
            Using connection As New SqlConnection(connectionString)
                Using command As New SqlCommand("Salva_Empresa_SP", connection)
                    command.CommandType = CommandType.StoredProcedure

                    ' Adicionar parâmetros ao comando
                    For Each kvp As KeyValuePair(Of String, Object) In args
                        command.Parameters.AddWithValue(kvp.Key, kvp.Value)
                    Next

                    connection.Open()

                    ' Executar a procedure e carregar os resultados no DataTable
                    Using reader As SqlDataReader = command.ExecuteReader()
                        dt.Load(reader)
                    End Using
                End Using
            End Using
        Catch ex As Exception
            ' Log de erro
            Debug.WriteLine($"Erro ao executar stored procedure: {ex.Message}")
        End Try

        Return dt
    End Function
End Class
