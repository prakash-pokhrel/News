Imports System.Data.OleDb
Imports System.Data


Partial Class Display
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Dim cmd As OleDbCommand
    Dim dr As OleDbDataReader
    Dim x As String
    Dim Item As New DataSet

    Public Property CurrentPage() As Integer
        Get
            ' look for current page in ViewState
            Dim o As Object = Me.ViewState("_CurrentPage")
            If o Is Nothing Then
                Return 0
            Else
                ' default to showing the first page
                Return CInt(o)
            End If
        End Get

        Set(value As Integer)
            Me.ViewState("_CurrentPage") = value
        End Set
    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtinvisible.Text = Request.QueryString("category")
        If txtinvisible.Text = "" Then
            If IsPostBack = False Then
                ItemGet()
            End If
        Else
            ItemGet1()
        End If

    End Sub



    Public Sub ItemGet1()
        Try



            Dim query As String = "Select * from News where nfield='" + txtinvisible.Text + "' ORDER BY ID DESC"
            'Dim query As String = "SELECT  * FROM News ORDER BY ID DESC"
            ' Dim query As String = (Convert.ToString("SELECT " & top) + " * FROM News")
            Dim cmd As New OleDbCommand(query)
            Using sda As New OleDbDataAdapter()
                cmd.Connection = cn
                sda.SelectCommand = cmd

                sda.Fill(Item)

            End Using


            ' Populate the Datalist control with the Item DataSet
            Dim objPds As New PagedDataSource()
            objPds.DataSource = Item.Tables(0).DefaultView
            objPds.AllowPaging = True
            objPds.PageSize = 4

            objPds.CurrentPageIndex = CurrentPage

            lblCurrentPage.Text = "Page: " + (CurrentPage + 1).ToString() + " of " + objPds.PageCount.ToString()

            ' Disable Prev or Next buttons if necessary
            cmdPrev.Enabled = Not objPds.IsFirstPage
            cmdNext.Enabled = Not objPds.IsLastPage

            MyDataList.DataSource = objPds
            MyDataList.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Public Sub ItemGet()
        Try



            Dim query As String = "SELECT  * FROM News ORDER BY ID DESC "
            'Dim query As String = "SELECT  * FROM News ORDER BY ID DESC"
            ' Dim query As String = (Convert.ToString("SELECT " & top) + " * FROM News")
            Dim cmd As New OleDbCommand(query)
            Using sda As New OleDbDataAdapter()
                cmd.Connection = cn
                sda.SelectCommand = cmd

                sda.Fill(Item)

            End Using


            ' Populate the Datalist control with the Item DataSet
            Dim objPds As New PagedDataSource()
            objPds.DataSource = Item.Tables(0).DefaultView
            objPds.AllowPaging = True
            objPds.PageSize = 4

            objPds.CurrentPageIndex = CurrentPage

            lblCurrentPage.Text = "Page: " + (CurrentPage + 1).ToString() + " of " + objPds.PageCount.ToString()

            ' Disable Prev or Next buttons if necessary
            cmdPrev.Enabled = Not objPds.IsFirstPage
            cmdNext.Enabled = Not objPds.IsLastPage

            MyDataList.DataSource = objPds
            MyDataList.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub MyDataList_ItemCommand(source As Object, e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles MyDataList.ItemCommand
        Response.Redirect("Fullstory.aspx?ID=" + e.CommandArgument)
    End Sub

    Protected Sub cmdNext_Click(sender As Object, e As System.EventArgs) Handles cmdNext.Click
        ' Set viewstate variable to the next page
        CurrentPage += 1

        ' Reload control
        ItemGet()
    End Sub

    Protected Sub cmdPrev_Click(sender As Object, e As System.EventArgs) Handles cmdPrev.Click
        ' Set viewstate variable to the previous page
        CurrentPage -= 1

        ' Reload control
        ItemGet()
    End Sub
End Class
