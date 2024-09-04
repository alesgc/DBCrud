Imports System.Data.SqlClient

Public Class CrudDB
    Private ReadOnly connectionString As String = "Password=usepark;Persist Security Info=True;User ID=usepark;Initial Catalog=epark;Data Source=ELVIRA\SQLEXPRESS"

    Public Function ExecutarProcedure(args As Dictionary(Of String, Object))
        Dim dt As New DataTable()

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand("Salva_Empresa_SP", connection)
                command.CommandType = CommandType.StoredProcedure

                ' Adicionar parâmetros ao comando
                For Each kvp As KeyValuePair(Of String, Object) In args
                    command.Parameters.AddWithValue(kvp.Key, kvp.Value)
                Next

                Using adapter As New SqlDataAdapter(command)
                    adapter.Fill(dt)
                End Using

                connection.Open()
                'command.ExecuteNonQuery()
            End Using
        End Using

        Return dt
    End Function
End Class
