<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="Display.aspx.vb" Inherits="Display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <asp:TextBox ID="txtinvisible" runat="server" Visible="False"></asp:TextBox><!--------Invisisble Text Box---------------->

    <!--------Data List To Display News---------------->
    <asp:DataList ID="MyDataList" RepeatColumns="1" RepeatDirection="Vertical" runat="server">
        <ItemTemplate>
            <headertemplate>  <b><%# DataBinder.Eval(Container.DataItem, "nfield")%></b></headertemplate>
            <!--------News Field---------------->
            <div style="padding: 10,10,10,10; font-size: 10pt; font-family: Verdana; border: 3px Solid black;
                width: 80%; height: 251px; overflow: hidden; margin-bottom: 20px">
                <div style="font: 12pt verdana; color: Red">
                    <b>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("ID")%>'><b><%# DataBinder.Eval(Container.DataItem, "nheadlines")%></b></asp:LinkButton></b><!---News Headlines---->
                </div>
                <br />
                <img src="<%#Eval("nfile")%>" height="100px" width="100px" alt="No Media Available For This Data"
                    style="margin-right: 5px" />
                <%--<img src="Images/1.jpg" width="75px" alt="News Image" style="margin-right: 5px" />--%>
                <br />
                <br></br>
                <%# DataBinder.Eval(Container.DataItem, "newsdate")%><br />
                <!---News Date---->
                <%# DataBinder.Eval(Container.DataItem, "nreporter")%>/
                <%# DataBinder.Eval(Container.DataItem, "nplace")%>
                -
                <br />
                <%# DataBinder.Eval(Container.DataItem, "newscontent")%>
                <p>
            </div>
        </ItemTemplate>
    </asp:DataList><!--------End of Data List To Display News---------------->


    <table width="100%" border="0"><!--------Paging buttons---------------->
        <tr>
            <td>
                &nbsp;&nbsp;<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;<asp:Button ID="cmdPrev" runat="server" Text=" << " Enabled="False">
                </asp:Button>
                &nbsp;<asp:Button ID="cmdNext" runat="server" Text=" >> "></asp:Button>
            </td>
        </tr>
    </table>


    <br />
    <br />
</asp:Content>
