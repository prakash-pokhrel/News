<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="forgotpassword.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <br />
    <b>Enter Correct Email and User Name we will provide you your password</b>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td>
                <b>
                    <br />
                    Enter Email Id:</b>&nbsp;<br />
            </td>
            <td>
                &nbsp;<br />
                <asp:TextBox ID="txtfgtpwdemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <b>
                    <br />
                </b>
                <br />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <b>Enter User Name:</b>&nbsp;<br />
            </td>
            <td>
                &nbsp;&nbsp;<br />
                <asp:TextBox ID="txtfgtpwdusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="GET PASSWORD" />
                <br />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="lblnarrate" runat="server" Text="Your Password Is:" Visible="False"></asp:Label>
                <br />
            </td>
            <td>
                <asp:Label ID="lblpwd" runat="server" Text="Password" Font-Bold="True" ForeColor="#009933"
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
 
</asp:Content>
