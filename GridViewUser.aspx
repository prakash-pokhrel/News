<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="GridViewUser.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 
        <table class="style1">
                <tr>
                    <td>
            <asp:LinkButton ID="linkbtn_Newsgrid" runat="server">Switch To News Table</asp:LinkButton>
                    </td>
                    <td>
            <asp:LinkButton ID="linkbtn_feedbackgrid" runat="server" PostBackUrl="GridViewfeedback.aspx">Switch To Feedback Table</asp:LinkButton>
                    </td>
                </tr>
            </table>
         
        <div >
            <br />
        </div>
        <div style="width:70% " >
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/News.mdb"
                SelectCommand="SELECT * FROM [NewUser]" DeleteCommand="DELETE FROM [NewUser] WHERE [ID] = ? AND (([UName] = ?) OR ([UName] IS NULL AND ? IS NULL)) AND (([UAddress] = ?) OR ([UAddress] IS NULL AND ? IS NULL)) AND (([UAge] = ?) OR ([UAge] IS NULL AND ? IS NULL)) AND (([UEmail] = ?) OR ([UEmail] IS NULL AND ? IS NULL)) AND (([Uphn] = ?) OR ([Uphn] IS NULL AND ? IS NULL)) AND (([UCountry] = ?) OR ([UCountry] IS NULL AND ? IS NULL)) AND (([Newuser] = ?) OR ([Newuser] IS NULL AND ? IS NULL)) AND (([Newpass] = ?) OR ([Newpass] IS NULL AND ? IS NULL))"
                InsertCommand="INSERT INTO [NewUser] ([ID], [UName], [UAddress], [UAge], [UEmail], [Uphn], [UCountry], [Newuser], [Newpass]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)"
                
                UpdateCommand="UPDATE [NewUser] SET [UName] = ?, [UAddress] = ?, [UAge] = ?, [UEmail] = ?, [Uphn] = ?, [UCountry] = ?, [Newuser] = ?, [Newpass] = ? WHERE [ID] = ? AND (([UName] = ?) OR ([UName] IS NULL AND ? IS NULL)) AND (([UAddress] = ?) OR ([UAddress] IS NULL AND ? IS NULL)) AND (([UAge] = ?) OR ([UAge] IS NULL AND ? IS NULL)) AND (([UEmail] = ?) OR ([UEmail] IS NULL AND ? IS NULL)) AND (([Uphn] = ?) OR ([Uphn] IS NULL AND ? IS NULL)) AND (([UCountry] = ?) OR ([UCountry] IS NULL AND ? IS NULL)) AND (([Newuser] = ?) OR ([Newuser] IS NULL AND ? IS NULL)) AND (([Newpass] = ?) OR ([Newpass] IS NULL AND ? IS NULL))" 
                ConflictDetection="CompareAllValues" 
                OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UAddress" Type="String" />
                    <asp:Parameter Name="original_UAddress" Type="String" />
                    <asp:Parameter Name="original_UAge" Type="String" />
                    <asp:Parameter Name="original_UAge" Type="String" />
                    <asp:Parameter Name="original_UEmail" Type="String" />
                    <asp:Parameter Name="original_UEmail" Type="String" />
                    <asp:Parameter Name="original_Uphn" Type="Int32" />
                    <asp:Parameter Name="original_Uphn" Type="Int32" />
                    <asp:Parameter Name="original_UCountry" Type="String" />
                    <asp:Parameter Name="original_UCountry" Type="String" />
                    <asp:Parameter Name="original_Newuser" Type="String" />
                    <asp:Parameter Name="original_Newuser" Type="String" />
                    <asp:Parameter Name="original_Newpass" Type="String" />
                    <asp:Parameter Name="original_Newpass" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="UName" Type="String" />
                    <asp:Parameter Name="UAddress" Type="String" />
                    <asp:Parameter Name="UAge" Type="String" />
                    <asp:Parameter Name="UEmail" Type="String" />
                    <asp:Parameter Name="Uphn" Type="Int32" />
                    <asp:Parameter Name="UCountry" Type="String" />
                    <asp:Parameter Name="Newuser" Type="String" />
                    <asp:Parameter Name="Newpass" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UName" Type="String" />
                    <asp:Parameter Name="UAddress" Type="String" />
                    <asp:Parameter Name="UAge" Type="String" />
                    <asp:Parameter Name="UEmail" Type="String" />
                    <asp:Parameter Name="Uphn" Type="Int32" />
                    <asp:Parameter Name="UCountry" Type="String" />
                    <asp:Parameter Name="Newuser" Type="String" />
                    <asp:Parameter Name="Newpass" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UName" Type="String" />
                    <asp:Parameter Name="original_UAddress" Type="String" />
                    <asp:Parameter Name="original_UAddress" Type="String" />
                    <asp:Parameter Name="original_UAge" Type="String" />
                    <asp:Parameter Name="original_UAge" Type="String" />
                    <asp:Parameter Name="original_UEmail" Type="String" />
                    <asp:Parameter Name="original_UEmail" Type="String" />
                    <asp:Parameter Name="original_Uphn" Type="Int32" />
                    <asp:Parameter Name="original_Uphn" Type="Int32" />
                    <asp:Parameter Name="original_UCountry" Type="String" />
                    <asp:Parameter Name="original_UCountry" Type="String" />
                    <asp:Parameter Name="original_Newuser" Type="String" />
                    <asp:Parameter Name="original_Newuser" Type="String" />
                    <asp:Parameter Name="original_Newpass" Type="String" />
                    <asp:Parameter Name="original_Newpass" Type="String" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                DataSourceID="AccessDataSource2" Height="224px" Width="489px">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
        </div>

</asp:Content>

