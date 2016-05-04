<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="GridViewfeedback.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<div style="float:right">
    
        
        <br />
        
    </div><br />
    <table class="style1">
        <tr>
            <td>
    
                    <asp:LinkButton ID="linkbtn_Newsgrid" runat="server" 
                        PostBackUrl="GridViewNews.aspx">Switch To News Table</asp:LinkButton>
                 
        
            </td>
            <td>
        
                    <asp:LinkButton ID="linkbtn_User" runat="server" 
                        PostBackUrl="GridViewUser.aspx">Switch To User Table</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <div >
    
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" DataFile="~/News.mdb" 
            DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = ? AND (([Name] = ?) OR ([Name] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Feedback] = ?) OR ([Feedback] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Feedback] ([ID], [Name], [Address], [Email], [Feedback]) VALUES (?, ?, ?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Feedback]" 
            UpdateCommand="UPDATE [Feedback] SET [Name] = ?, [Address] = ?, [Email] = ?, [Feedback] = ? WHERE [ID] = ? AND (([Name] = ?) OR ([Name] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Feedback] = ?) OR ([Feedback] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Feedback" Type="String" />
                <asp:Parameter Name="original_Feedback" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Feedback" Type="String" />
                <asp:Parameter Name="original_Feedback" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="AccessDataSource1" Height="227px" Width="151px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                    SortExpression="Feedback" />
            </Columns>
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
    
    </div>


</asp:Content>

