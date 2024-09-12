Imports System.Data.SqlClient

Public Class TablePaginater
    Inherits System.Web.UI.Page
    ' Criar instância da classe CrudDB
    Dim cls_cruddb As New CrudDB
    ' Declaração das variáveis
    Dim id_empresa As Integer
    Dim razao_social As String
    Dim nome_fantasia As String
    Dim cnpj As String
    Dim endereco As String
    Dim bairro As String
    Dim cep As String
    Dim cidade As String
    Dim uf As String
    Dim e_mail As String
    Dim telefone As String
    Dim fax As String
    Dim representante As String
    Dim observacao As String
    Dim apelido As String
    Dim operacional As Boolean
    Dim tipo_tributacao As String
    Dim verifica_extrato As Boolean
    Dim codigo_transmissao As String
    Dim cancelado As Boolean
    Dim caminho_arquivo_contas_pagar As String
    Dim caminho_arquivo_contas_receber As String
    Dim nome_arquivo_contas_pagar As String
    Dim nome_arquivo_contas_receber As String
    Dim matriz As Boolean
    Dim email_cobranca As String
    Dim nome_logo As String
    ' Criar dicionário de parâmetros, se necessário
    Dim args As New Dictionary(Of String, Object) From {
        {"@operation", "SelectAllItems"}, ' exemplo de parâmetro
        {"@id_mpresa", GetValueOrDBNull(id_empresa)},
        {"@razao_social", GetValueOrDBNull(razao_social)},
        {"@nome_fantasia", GetValueOrDBNull(nome_fantasia)},
        {"@cnpj", GetValueOrDBNull(cnpj)},
        {"@endereco", GetValueOrDBNull(endereco)},
        {"@bairro", GetValueOrDBNull(bairro)},
        {"@cep", GetValueOrDBNull(cep)},
        {"@cidade", GetValueOrDBNull(cidade)},
        {"@uf", GetValueOrDBNull(uf)},
        {"@e_mail", GetValueOrDBNull(e_mail)},
        {"@telefone", GetValueOrDBNull(telefone)},
        {"@fax", GetValueOrDBNull(fax)},
        {"@representante", GetValueOrDBNull(representante)},
        {"@observacao", GetValueOrDBNull(observacao)},
        {"@apelido", GetValueOrDBNull(apelido)},
        {"@operacional", GetValueOrDBNull(operacional)},
        {"@tipo_tributacao", GetValueOrDBNull(tipo_tributacao)},
        {"@verifica_extrato", GetValueOrDBNull(verifica_extrato)},
        {"@codigo_transmissao", GetValueOrDBNull(codigo_transmissao)},
        {"@cancelado", GetValueOrDBNull(cancelado)},
        {"@caminho_arquivo_contas_pagar", GetValueOrDBNull(caminho_arquivo_contas_pagar)},
        {"@caminho_arquivo_contas_receber", GetValueOrDBNull(caminho_arquivo_contas_receber)},
        {"@nome_arquivo_contas_pagar", GetValueOrDBNull(nome_arquivo_contas_pagar)},
        {"@nome_arquivo_contas_receber", GetValueOrDBNull(nome_arquivo_contas_receber)},
        {"@matriz", GetValueOrDBNull(matriz)},
        {"@email_cobranca", GetValueOrDBNull(email_cobranca)},
        {"@nome_logo", GetValueOrDBNull(nome_logo)}
        }

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load, GridView1.PageIndexChanged, GridView1.SelectedIndexChanged, GridView1.Sorted, GridView1.DataBinding, GridView1.DataBound, GridView1.Disposed, GridView1.Init, GridView1.Load, GridView1.PreRender
        If Not IsPostBack Then
            TableInfoView()
        End If
    End Sub
    Private Sub TableInfoView()
        GridView1.AllowPaging = True
        GridView1.PageSize = 40
        ' Chamar a função e obter o DataTable
        Dim dt As DataTable = cls_cruddb.ExecutarProcedure(args)
        For Each param As KeyValuePair(Of String, Object) In args
            Debug.WriteLine($"{param.Key}: {param.Value} ({param.Value.GetType()})")
        Next
        ' Preencher o GridView com o 
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Private Function GetValueOrDBNull(value As Object) As Object
        If value Is Nothing Then
            Return DBNull.Value
        End If
        Select Case True
            Case TypeOf value Is String
                Return If(String.IsNullOrEmpty(DirectCast(value, String)), DBNull.Value, value)
            Case TypeOf value Is Boolean, TypeOf value Is Integer, TypeOf value Is Double, TypeOf value Is Decimal
                Return value
            Case Else
                Return value
        End Select
    End Function
End Class