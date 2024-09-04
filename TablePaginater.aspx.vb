Imports System.Data.SqlClient
Imports System.Drawing.Drawing2D
Imports System.Runtime.ConstrainedExecution

Public Class TablePaginater
    Inherits System.Web.UI.Page

    Protected ReadOnly cls_cruddb As New CrudDB

    ' Declaração das variáveis
    Dim id_empresa As Integer
    Dim razaoSocial As String
    Dim nomeFantasia As String
    Dim cnpj As String
    Dim endereco As String
    Dim bairro As String
    Dim cep As String
    Dim cidade As String
    Dim uf As String
    Dim email As String
    Dim telefone As String
    Dim fax As String
    Dim representante As String
    Dim observacao As String
    Dim apelido As String
    Dim operacional As Boolean
    Dim tipoTributacao As String
    Dim verificaExtrato As Boolean
    Dim codigoTransmissao As String
    Dim cancelado As Boolean
    Dim caminhoArquivoContasPagar As String
    Dim caminhoArquivoContasReceber As String
    Dim nomeArquivoContasPagar As String
    Dim nomeArquivoContasReceber As String
    Dim matriz As Boolean
    Dim emailCobranca As String
    Dim nomeLogo As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then
            TableInfoView()
        End If
    End Sub
    Private Sub TableInfoView()
        Try
            Dim args As New Dictionary(Of String, Object) From {
        {"@operation", "SELECT"},
        {"@id_mpresa", GetValueOrDBNull(id_empresa)},
        {"@razao_social", GetValueOrDBNull(razaoSocial)},
        {"@nome_fantasia", GetValueOrDBNull(nomeFantasia)},
        {"@cnpj", GetValueOrDBNull(cnpj)},
        {"@endereco", GetValueOrDBNull(endereco)},
        {"@bairro", GetValueOrDBNull(bairro)},
        {"@cep", GetValueOrDBNull(cep)},
        {"@cidade", GetValueOrDBNull(cidade)},
        {"@uf", GetValueOrDBNull(uf)},
        {"@e_mail", GetValueOrDBNull(email)},
        {"@telefone", GetValueOrDBNull(telefone)},
        {"@fax", GetValueOrDBNull(fax)},
        {"@representante", GetValueOrDBNull(representante)},
        {"@observacao", GetValueOrDBNull(observacao)},
        {"@apelido", GetValueOrDBNull(apelido)},
        {"@operacional", operacional},
        {"@tipo_tributacao", If(tipoTributacao, DBNull.Value, tipoTributacao)},
        {"@verifica_extrato", verificaExtrato},
        {"@codigo_transmissao", GetValueOrDBNull(codigoTransmissao)},
        {"@cancelado", cancelado},
        {"@caminho_arquivo_contas_pagar", GetValueOrDBNull(caminhoArquivoContasPagar)},
        {"@caminho_arquivo_contas_receber", GetValueOrDBNull(caminhoArquivoContasReceber)},
        {"@nome_arquivo_contas_pagar", GetValueOrDBNull(nomeArquivoContasPagar)},
        {"@nome_arquivo_contas_receber", GetValueOrDBNull(nomeArquivoContasReceber)},
        {"@matriz", matriz},
        {"@email_cobranca", GetValueOrDBNull(emailCobranca)},
        {"@nome_logo", GetValueOrDBNull(nomeLogo)}
    }

            Dim dt As DataTable = cls_cruddb.ExecutarProcedure(args)
            ' Verifica se o DataTable não é Nothing e contém linhas
            If dt IsNot Nothing AndAlso dt.Rows.Count > 0 Then
                ' Vincula os dados ao GridView
                GridView1.DataSource = dt
                GridView1.DataBind()
            Else
                ' Se não houver dados, configura o GridView para mostrar uma mensagem
                GridView1.DataSource = Nothing
                GridView1.DataBind()
                GridView1.EmptyDataText = "Nenhum dado encontrado."
            End If
        Catch ex As Exception
            ' Log ou exibe a mensagem de erro
            System.Diagnostics.Debug.WriteLine("Erro: " & ex.Message)
        End Try
    End Sub
    Private Function GetValueOrDBNull(value As Object) As Object
        If value Is Nothing Then
            Return DBNull.Value
        End If

        Select Case value.GetType()
            Case GetType(String)
                Return If(String.IsNullOrEmpty(DirectCast(value, String)), DBNull.Value, value)
            Case GetType(Boolean), GetType(Integer), GetType(Double), GetType(Decimal)
                Return value
            Case Else
                Return value
        End Select
    End Function

End Class