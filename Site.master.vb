Imports System.Data
Imports System.Data.OleDb

Partial Class Site
    Inherits System.Web.UI.MasterPage

    Dim cmd As OleDbCommand
    Dim dr As OleDbDataReader
    Dim x As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Dim cmd As New OleDbCommand
        'Dim dr As New OleDbDataReader
        Dim myConnection As OleDbConnection
        Dim myCommand As OleDbDataAdapter

        myConnection = New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
        myCommand = New OleDbDataAdapter("SELECT * FROM News order by ID DESC", myConnection)
        ' Create and fill a DataSet.
        Dim ds As DataSet = New DataSet()
        myCommand.Fill(ds)
        ' Bind MyDataList1 to the DataSet. MyDataList is the ID for 
        ' the DataList control in the HTML section of the page.
        Dim pg As New PagedDataSource
        pg.DataSource = ds.Tables(0).DefaultView
        pg.AllowPaging = True
        pg.PageSize = 4


        MyDataList1.DataSource = pg
        MyDataList1.DataBind()

    End Sub

  
    Protected Sub MyDataList1_ItemCommand(source As Object, e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles MyDataList1.ItemCommand
        Response.Redirect("Fullstory.aspx?ID=" + e.CommandArgument)
    End Sub

    'Public Function GetData1() As DataSet
    '    Dim query As String = "Select TOP 20  * from News where nfield='" + txt_invsible.Text + "' ORDER BY ID DESC"
    '    'Dim query As String = "SELECT  * FROM News ORDER BY ID DESC"
    '    ' Dim query As String = (Convert.ToString("SELECT " & top) + " * FROM News")
    '    Dim cmd As New OleDbCommand(query)
    '    Using sda As New OleDbDataAdapter()
    '        cmd.Connection = cn
    '        sda.SelectCommand = cmd
    '        Using ds As New DataSet()
    '            sda.Fill(ds)
    '            Return ds
    '        End Using
    '    End Using
    'End Function

    Protected Sub linkbtn_latest_Click(sender As Object, e As System.EventArgs) Handles linkbtn_latest.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_latest.Text)
    End Sub

    Protected Sub linkbtn_finance_Click(sender As Object, e As System.EventArgs) Handles linkbtn_finance.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_finance.Text)
    End Sub

    Protected Sub linkbtn_science_Click(sender As Object, e As System.EventArgs) Handles linkbtn_science.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_science.Text)
    End Sub

    Protected Sub linkbtn_sports_Click(sender As Object, e As System.EventArgs) Handles linkbtn_sports.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_sports.Text)
    End Sub

    Protected Sub linkbtn_entertainment_Click(sender As Object, e As System.EventArgs) Handles linkbtn_entertainment.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_entertainment.Text)
    End Sub

    Protected Sub linkbtn_others_Click(sender As Object, e As System.EventArgs) Handles linkbtn_others.Click
        Response.Redirect("Display.aspx?category=" + linkbtn_others.Text)
    End Sub
End Class

