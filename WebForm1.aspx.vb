Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim cls_cruddb As New CrudDB
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnINSERT_Click(sender As Object, e As EventArgs) Handles btnINSERT.Click
        ' Coletando valores dos campos do formulário
        Dim razaoSocial As String = Me.razaoSocial.Text.Trim()
        Dim representante As String = Me.representante.Text.Trim()
        Dim nomeFantasia As String = Me.nomeFantasia.Text.Trim()
        Dim apelido As String = Me.apelido.Text.Trim()
        Dim cnpj As String = Me.cnpj.Text.Trim()
        Dim cep As String = Me.cep.Text.Trim()
        Dim endereco As String = Me.endereco.Text.Trim()
        Dim bairro As String = Me.bairro.Text.Trim()
        Dim cidade As String = Me.cidade.Text.Trim()
        Dim uf As String = Me.uf.SelectedValue.Trim()
        Dim email As String = Me.email.Text.Trim()
        Dim confirmarEmail As String = Me.confirmarEmail.Text.Trim()
        Dim telefone As String = Me.telefone.Text.Trim()
        Dim fax As String = Me.fax.Text.Trim()
        Dim observacao As String = Me.observacao.Text.Trim()
        Dim caminhoArquivoContasPagar As String = Me.caminhoArquivoContasPagar.Text.Trim()
        Dim caminhoArquivoContasReceber As String = Me.caminhoArquivoContasReceber.Text.Trim()
        Dim nomeArquivoContasPagar As String = Me.nomeArquivoContasPagar.Text.Trim()
        Dim nomeArquivoContasReceber As String = Me.nomeArquivoContasReceber.Text.Trim()
        Dim matriz As Boolean = Me.matriz.Text.Trim().ToLower() = "true"
        Dim emailCobranca As String = Me.emailCobranca.Text.Trim()
        Dim nomeLogo As String = Me.nomeLogo.Text.Trim()

        ' Verifica se os e-mails coincidem
        If email <> confirmarEmail Then
            MsgBox("Os e-mails não coincidem.")
            Return
        End If

        ' Criando o dicionário com os parâmetros
        Dim args As New Dictionary(Of String, Object) From {
            {"@operation", "INSERT"},
            {"@razao_social", If(String.IsNullOrEmpty(razaoSocial), DBNull.Value, razaoSocial)},
            {"@nome_fantasia", If(String.IsNullOrEmpty(nomeFantasia), DBNull.Value, nomeFantasia)},
            {"@cnpj", If(String.IsNullOrEmpty(cnpj), DBNull.Value, cnpj)},
            {"@endereco", If(String.IsNullOrEmpty(endereco), DBNull.Value, endereco)},
            {"@bairro", If(String.IsNullOrEmpty(bairro), DBNull.Value, bairro)},
            {"@cep", If(String.IsNullOrEmpty(cep), DBNull.Value, cep)},
            {"@cidade", If(String.IsNullOrEmpty(cidade), DBNull.Value, cidade)},
            {"@uf", If(String.IsNullOrEmpty(uf), DBNull.Value, uf)},
            {"@e_mail", If(String.IsNullOrEmpty(email), DBNull.Value, email)},
            {"@telefone", If(String.IsNullOrEmpty(telefone), DBNull.Value, telefone)},
            {"@fax", If(String.IsNullOrEmpty(fax), DBNull.Value, fax)},
            {"@representante", If(String.IsNullOrEmpty(representante), DBNull.Value, representante)},
            {"@observacao", If(String.IsNullOrEmpty(observacao), DBNull.Value, observacao)},
            {"@apelido", If(String.IsNullOrEmpty(apelido), DBNull.Value, apelido)},
            {"@caminho_arquivo_contas_pagar", If(String.IsNullOrEmpty(caminhoArquivoContasPagar), DBNull.Value, caminhoArquivoContasPagar)},
            {"@caminho_arquivo_contas_receber", If(String.IsNullOrEmpty(caminhoArquivoContasReceber), DBNull.Value, caminhoArquivoContasReceber)},
            {"@nome_arquivo_contas_pagar", If(String.IsNullOrEmpty(nomeArquivoContasPagar), DBNull.Value, nomeArquivoContasPagar)},
            {"@nome_arquivo_contas_receber", If(String.IsNullOrEmpty(nomeArquivoContasReceber), DBNull.Value, nomeArquivoContasReceber)},
            {"@matriz", If(String.IsNullOrEmpty(matriz.ToString()), DBNull.Value, matriz)},
            {"@email_cobranca", If(String.IsNullOrEmpty(emailCobranca), DBNull.Value, emailCobranca)},
            {"@nome_logo", If(String.IsNullOrEmpty(nomeLogo), DBNull.Value, nomeLogo)}
        }

        Try
            ' Chama o método para executar a stored procedure
            cls_cruddb.ExecutarProcedure("INSERT", args)
            MsgBox("Empresa inserida com sucesso!")
        Catch ex As Exception
            ' Exibe uma mensagem de erro se ocorrer uma exceção
            MsgBox("Ocorreu um erro ao inserir a empresa: " & ex.Message)
        End Try
    End Sub

End Class
