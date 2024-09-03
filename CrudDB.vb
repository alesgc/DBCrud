Imports System.Data.SqlClient

Public Class CrudDB
    Private connectionString As String = "YourConnectionStringHere"

    Public Sub ExecutarProcedure(operation As String, args As Dictionary(Of String, Object))
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand("YourStoredProcedureName", connection)
                command.CommandType = CommandType.StoredProcedure

                ' Adicionar parâmetros ao comando
                For Each kvp As KeyValuePair(Of String, Object) In args
                    command.Parameters.AddWithValue(kvp.Key, kvp.Value)
                Next

                connection.Open()
                command.ExecuteNonQuery()
            End Using
        End Using
    End Sub
End Class
