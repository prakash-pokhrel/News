Imports System.Data
Imports System.Data.OleDb

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As New OleDbConnection("Provider=microsoft.jet.oledb.4.0; Data Source=" & Server.MapPath("News.mdb"))
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

     
    End Sub

End Class
