<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="GridViewNews.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div style="width:90%; margin-left:auto; margin-right:auto">
            <br />
            <table class="style1">
                <tr>
                    <td>
            <asp:LinkButton ID="linkbtn_User" runat="server" PostBackUrl="GridViewUser.aspx">Switch To User Table</asp:LinkButton>
                    </td>
                    <td>
            <asp:LinkButton ID="linkbtn_feedbackgrid" runat="server">Switch To Feedback Table</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <asp:DetailsView ID="DetailsViewNews" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="AccessDataSource4" 
                Height="107px" Width="503px">
                <Fields>
                    <asp:BoundField DataField="nheadlines" HeaderText="Headlines" 
                        SortExpression="nheadlines" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="newsdate" HeaderText="Date" 
                        SortExpression="newsdate">
                    </asp:BoundField>
                    <asp:BoundField DataField="nPlace" HeaderText="Place" 
                        SortExpression="nPlace" />
                    <asp:BoundField DataField="nfield" HeaderText="Field" 
                        SortExpression="nfield" />
                    <asp:BoundField DataField="newscontent" HeaderText="News" 
                        SortExpression="newscontent" />
                    <asp:BoundField DataField="nfile" HeaderText="File" SortExpression="nfile" />
                    <asp:BoundField DataField="nreporter" HeaderText="Reporter" 
                        SortExpression="nreporter" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/News.mdb"
                DeleteCommand="DELETE FROM [News] WHERE [ID] = ?" InsertCommand="INSERT INTO [News] ([ID], [newsdate], [nPlace], [nfield], [newscontent], [nfile], [nreporter], [nheadlines]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
                SelectCommand="SELECT * FROM [News] ORDER BY [ID] DESC" 
                UpdateCommand="UPDATE [News] SET [newsdate] = ?, [nPlace] = ?, [nfield] = ?, [newscontent] = ?, [nfile] = ?, [nreporter] = ?, [nheadlines] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="newsdate" Type="String" />
                    <asp:Parameter Name="nPlace" Type="String" />
                    <asp:Parameter Name="nfield" Type="String" />
                    <asp:Parameter Name="newscontent" Type="String" />
                    <asp:Parameter Name="nfile" Type="String" />
                    <asp:Parameter Name="nreporter" Type="String" />
                    <asp:Parameter Name="nheadlines" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="newsdate" Type="String" />
                    <asp:Parameter Name="nPlace" Type="String" />
                    <asp:Parameter Name="nfield" Type="String" />
                    <asp:Parameter Name="newscontent" Type="String" />
                    <asp:Parameter Name="nfile" Type="String" />
                    <asp:Parameter Name="nreporter" Type="String" />
                    <asp:Parameter Name="nheadlines" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <br />
            <br />
        </div>

</asp:Content>

