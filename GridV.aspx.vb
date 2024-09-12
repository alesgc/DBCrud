Imports System.Data
Imports System.Data.SqlClient
Imports System.Drawing.Printing
Imports System.Web.UI.WebControls

Public Class GridV
    Inherits System.Web.UI.Page
    Private Const PageSize As Integer = 10
    Protected Function DataList(pageIndex As Integer, pageSize As Integer) As DataTable

        Dim strinConn As String = "Password=usepark;Persist Security Info=True;User ID=usepark;Initial Catalog=epark;Data Source=ELVIRA\SQLEXPRESS"
        Using conn As New SqlConnection(strinConn)
            Dim sql As String = "PaginateModel"
            Using cmd As New SqlCommand(sql, conn)
                cmd.Parameters.AddWithValue("@pageIndex", pageIndex)
                cmd.Parameters.AddWithValue("@pageSize", pageSize)
                Dim adapter As New SqlDataAdapter(cmd)
                Dim table As New DataTable()
                adapter.Fill(table)
                Return table
            End Using
        End Using
    End Function

    Private dt As DataTable
    Private data As String()() = {
                New String() {"Item1", "Item2", "Item3", "Item4", "Item5"},
                New String() {"Item6", "Item7", "Item8", "Item9", "Item10"},
                New String() {"Item11", "Item12", "Item13", "Item14", "Item15"},
                New String() {"Item16", "Item17", "Item18", "Item19", "Item20"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item26", "Item27", "Item28", "Item29", "Item30"},
                New String() {"Item31", "Item32", "Item33", "Item34", "Item35"},
                New String() {"Item36", "Item37", "Item38", "Item39", "Item40"},
                New String() {"Item41", "Item42", "Item43", "Item44", "Item45"},
                New String() {"Item46", "Item47", "Item48", "Item49", "Item50"}
            }

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            '' Cria uma tabela fictícia para os dados
            'dt = New DataTable()
            'dt.Columns.Add("Column1")
            'dt.Columns.Add("Column2")
            'dt.Columns.Add("Column3")
            'dt.Columns.Add("Column4")
            'dt.Columns.Add("Column5")

            '' Adiciona os dados de exemplo
            'For i As Integer = 1 To 10
            '    dt.Rows.Add($"Item{i}", $"Item{i + 1}", $"Item{i + 2}", $"Item{i + 3}", $"Item{i + 4}")
            'Next

            BindGridView(0)
        End If
    End Sub
    ' Função para carregar os dados
    Protected Sub BindGridView(pageIndex As Integer)
        Dim dt As DataTable = DataList(pageIndex, PageSize)
        GridView1.DataSource = dt
        GridView1.DataBind()
        ' Após a vinculação dos dados
        If GridView1.BottomPagerRow IsNot Nothing Then

            ' Atualiza o PageInfo
            Dim totalRecords As Integer = GetTotalRecords()
            Dim totalPages As Integer = Math.Ceiling(totalRecords / PageSize)
            Dim currentPage As Integer = pageIndex + 1

            Dim lblPageInfo As Label = CType(GridView1.BottomPagerRow.FindControl("lblPageInfo"), Label)
            If lblPageInfo IsNot Nothing Then
                lblPageInfo.Text = $"Page {currentPage} of {totalPages}"
            End If
        End If
    End Sub
    ' Função para contar o total de registros no banco
    Protected Function GetTotalRecords() As Integer
        Dim totalRecords As Integer = 0
        Dim strinConn As String = "Password=usepark;Persist Security Info=True;User ID=usepark;Initial Catalog=epark;Data Source=ELVIRA\SQLEXPRESS"
        Using conn As New SqlConnection(strinConn)
            Using cmd As New SqlCommand("SELECT COUNT(*) FROM Empresa", conn)
                conn.Open()
                totalRecords = Convert.ToInt32(cmd.ExecuteScalar())
            End Using
        End Using
        Return totalRecords
    End Function

    ' Função chamada quando o usuário navega entre as páginas
    Protected Sub GvData_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        BindGridView(e.NewPageIndex)
    End Sub

    ' Função chamada após o GridView ser preenchido
    Protected Sub gvData_DataBound(sender As Object, e As EventArgs)
        ' Verifica se a linha de paginação foi criada
        If GridView1.BottomPagerRow IsNot Nothing Then
            Dim lnkFirst As LinkButton = CType(GridView1.BottomPagerRow.FindControl("lnkFirst"), LinkButton)
            Dim lnkPrev As LinkButton = CType(GridView1.BottomPagerRow.FindControl("lnkPrev"), LinkButton)
            Dim lnkNext As LinkButton = CType(GridView1.BottomPagerRow.FindControl("lnkNext"), LinkButton)
            Dim lnkLast As LinkButton = CType(GridView1.BottomPagerRow.FindControl("lnkLast"), LinkButton)

            ' Verifica se os botões estão disponíveis antes de acessar suas propriedades
            If lnkFirst IsNot Nothing AndAlso lnkPrev IsNot Nothing AndAlso lnkNext IsNot Nothing AndAlso lnkLast IsNot Nothing Then
                ' Lógica de habilitação/desabilitação dos botões
                If GridView1.PageIndex = 0 Then
                    lnkFirst.Enabled = False
                    lnkPrev.Enabled = False
                Else
                    lnkFirst.Enabled = True
                    lnkPrev.Enabled = True
                End If

                If GridView1.PageIndex = GridView1.PageCount - 1 Then
                    lnkNext.Enabled = False
                    lnkLast.Enabled = False
                Else
                    lnkNext.Enabled = True
                    lnkLast.Enabled = True
                End If
            End If
        End If
    End Sub


    ' Função para associar os dados ao GridView
    Protected Sub BindGridViewd(pageIndex As Integer, pageSize As Integer)
        'Dim dt As DataTable = DataList(pageIndex, pageSize)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    'Atualiza o texto Do Label com a página atual e total de páginas
    Protected Sub UpdatePageInfod()
        Dim lblPageInfo As Label = CType(GridView1.BottomPagerRow.FindControl("lblPageInfo"), Label)
        If lblPageInfo IsNot Nothing Then
            lblPageInfo.Text = String.Format("Page {0} of {1}", GridView1.PageIndex + 1, GridView1.PageCount)
        End If
    End Sub

    ' Evento para ajustar o estilo da paginação
    Protected Sub GvData_DataBoundd(sender As Object, e As EventArgs)
        ' Atualiza o conteúdo da label com informações sobre a página
        Dim pageInfo As Label = CType(GridView1.BottomPagerRow.FindControl("lblPageInfo"), Label)
        If pageInfo IsNot Nothing Then
            pageInfo.Text = $"Page {GridView1.PageIndex + 1} of {GridView1.PageCount}"
        End If
    End Sub
    ' Evento de mudança de página
    Protected Sub GvData_PageIndexChangingd(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex ' Atualiza o índice da página
        BindGridViewd(e.NewPageIndex + 1, GridView1.PageSize) ' Carrega a nova página
    End Sub
End Class