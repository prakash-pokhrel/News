<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="User.aspx.vb" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="lblenterusername" runat="server" Text="Enter Your UserName and Password:"
        Font-Bold="True" ForeColor="#993333"></asp:Label>
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
    <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <asp:View ID="View1" runat="server">
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;<asp:Panel ID="panel_user" runat="server" Height="516px" Width="96%">
                <br />
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <table class="style1">
                    <tr>
                        <td class="style2" style="width: 376px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_userusername" runat="server" Height="25px" Style="margin-left: 0px"
                                Text="User Name" Width="118px" />
                            <br />
                            <br />
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txtusername" runat="server" Height="26px" Width="213px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td style="width: 88px">
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="txtusername"
                                Display="Dynamic" ErrorMessage="Username is required" Font-Bold="True" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 376px">
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_userpassword" runat="server" Height="25px" Style="margin-left: 0px"
                                Text="Password" Width="118px" />
                        </td>
                        <td class="style3">
                            <br />
                            <br />
                            <asp:TextBox ID="txtuserpass" runat="server" Height="26px" Width="213px" TextMode="Password"
                                Style="margin-left: 0px"></asp:TextBox>
                        </td>
                        <td style="width: 88px">
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtuserpass"
                                Display="Dynamic" ErrorMessage="Password is required" Font-Bold="True" ForeColor="Red"
                                ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 376px">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;
                        </td>
                        <td style="width: 88px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 376px">
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_usersubmit" runat="server" Height="25px" Style="margin-left: 0px"
                                Text="Submit" Width="118px" ValidationGroup="UserInfoGroup" />
                        </td>
                        <td class="style3">
                            <br />
                            <br />
                            <asp:Button ID="btn_userreset" runat="server" Height="25px" Style="margin-left: 0px"
                                Text="Reset" Width="218px" />
                        </td>
                        <td style="width: 88px">
                            <br />
                            <br />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 376px">
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;<asp:LinkButton ID="LinkButton_NewUser" runat="server" PostBackUrl="~/newuser.aspx"
                                Width="200px">New User</asp:LinkButton>
                            <br />
                        </td>
                        <td class="style3">
                            <br />
                            <br />
                            <br />
                            <asp:LinkButton ID="LinkButton_ForgotPassword" runat="server" PostBackUrl="~/forgotpassword.aspx"
                                Width="200px">Forgot Password</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
        </asp:View>
 <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
        <asp:View ID="View2" runat="server">
            <div style="border: 3px solid black">
                <table class="style1">
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <asp:Label ID="lblnot" runat="server" Text="Enter News Content" Font-Bold="True"
                                ForeColor="#993333"></asp:Label>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td style="width: 506px">
                        </td>
                        <td class="style10" style="width: 175px">
                            <br />
                            <asp:Label ID="lblrprtr" runat="server" Text="Hello" ForeColor="#993333"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <asp:Button ID="btndate" runat="server" Height="30px" Text="Date" Width="115px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <asp:TextBox ID="txt_date" runat="server" Height="23px" Width="154px"></asp:TextBox>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                BorderWidth="1px" Caption="Pick date" DayNameFormat="Shortest" Font-Names="Verdana"
                                Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ControlToValidate="txt_date"
                                Display="Dynamic" ErrorMessage="Date is required" Font-Bold="True" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <asp:Button ID="btn_newsplc" runat="server" Height="31px" Text="News Place" Width="116px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <br />
                            <asp:TextBox ID="txt_plc" runat="server" Height="23px" Width="154px"></asp:TextBox>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPlace" runat="server" ControlToValidate="txt_plc"
                                Display="Dynamic" ErrorMessage="Place is required" Font-Bold="True" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <asp:Button ID="btn_choosefield" runat="server" Height="32px" Text="Choose Field"
                                Width="116px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="158px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>SCIENCE</asp:ListItem>
                                <asp:ListItem>SPORTS</asp:ListItem>
                                <asp:ListItem>FINANCE</asp:ListItem>
                                <asp:ListItem>ENTERTAINMENT</asp:ListItem>
                                <asp:ListItem>OTHERS</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorField" runat="server" ControlToValidate="DropDownList1"
                                Display="Dynamic" ErrorMessage="Field is required.Choose Field" Font-Bold="True"
                                ForeColor="Red" SetFocusOnError="True" ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <asp:Button ID="Button4" runat="server" Height="30px" Text="News Content" Width="115px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <asp:TextBox ID="txt_news" runat="server" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatornews" runat="server" ControlToValidate="txt_news"
                                Display="Dynamic" ErrorMessage="News is required" Font-Bold="True" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <asp:Button ID="btn_uploadfile" runat="server" Height="30px" Text="Upload File" Width="115px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="17px" Width="220px" />
                        </td>
                        <td class="style7" style="width: 175px">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <asp:Button ID="btnreprtrname" runat="server" Height="31px" Text="Reporter User Name"
                                Width="128px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <br />
                            <asp:TextBox ID="txtrprtrname" runat="server" Height="23px" Width="154px"></asp:TextBox>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorReporter" runat="server" ControlToValidate="txtrprtrname"
                                Display="Dynamic" ErrorMessage="Reporter name is required" Font-Bold="True" ForeColor="Red"
                                ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <asp:Button ID="btn_headlines" runat="server" Height="30px" Text="Headlines" Width="115px" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <br />
                            <asp:TextBox ID="txt_headlines" runat="server" Height="23px" Width="154px"></asp:TextBox>
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorheadlines" runat="server" ControlToValidate="txt_headlines"
                                Display="Dynamic" ErrorMessage="Headlines is required" Font-Bold="True" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="newssubmsngrp"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-lg" style="width: 1065px">
                            <br />
                            <br />
                            <asp:Button ID="btn_newssubmit" runat="server" Height="29px" Text="Submit" Width="116px"
                                ValidationGroup="newssubmsngrp" />
                        </td>
                        <td class="style10" style="width: 506px">
                            <br />
                            <br />
                            <asp:Button ID="btn_newsreset" runat="server" Height="29px" Text="Reset" Width="116px" />
                            &nbsp;
                        </td>
                        <td class="style7" style="width: 175px">
                            <asp:LinkButton ID="linkbtn_submsn0" runat="server" PostBackUrl="news.aspx">Go To Home</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </div>
        </asp:View>
           <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <asp:View ID="View3" runat="server">
            <br />
            <br />
            <asp:Button ID="btn_gotoHome" runat="server" Text="GO TO HOME" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_submitanother"
                runat="server" Text="SUBMIT ANOTHER NEWS" />
            <br />
            <br />
        </asp:View>
           <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------>
    </asp:MultiView>
</asp:Content>
