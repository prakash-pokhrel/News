<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="newuser.aspx.vb" Inherits="NewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <div>
        <br />
        <asp:Label ID="lbl1" runat="server" Text="Fill Up This Form" ForeColor="#993333"
            Font-Bold="True"></asp:Label>:
        <br />
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiViewFillData" runat="server">
               <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------>
               <asp:View ID="ViewData" runat="server">
                <br />
                <br />
                <br />
                <table class="style1"><!--------Table for first form---------------->
                    <tr>
                        <td class="style2" style="width: 333px">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Name:</strong>
                        </td>
                        <td style="width: 64px">
                            <asp:TextBox ID="txt_newusername" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name is Required"
                                ForeColor="Maroon" ControlToValidate="txt_newusername" Font-Bold="True" SetFocusOnError="True"
                                Display="Dynamic" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Address:</strong>
                        </td>
                        <td style="width: 64px">
                            <asp:TextBox ID="txt_newuseraddr" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox>
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Enter Address"
                                ForeColor="Maroon" ControlToValidate="txt_newuseraddr" Display="Dynamic" Font-Bold="True"
                                ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Date Of Birth: </strong>
                        </td>
                        <td style="width: 64px">
                            <asp:TextBox ID="txt_newuserage" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox><br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateOfBirth" runat="server"
                                ControlToValidate="txt_newuserage" Display="Dynamic" ErrorMessage="Enter the Date of Birth"
                                Font-Bold="True" ForeColor="Maroon" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator ID="RangeValidatorAge" runat="server" ControlToValidate="txt_newuserage"
                                ErrorMessage="Enter Correct Date" Font-Bold="True" ForeColor="Maroon" MaximumValue="01/01/2020"
                                MinimumValue="01/01/1920" SetFocusOnError="True" Type="Date" ValidationGroup="NewUserGroup"></asp:RangeValidator>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Email:</strong>
                        </td>
                        <td style="width: 64px">
                            <asp:TextBox ID="txt_newuseremail" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox><br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter Email Id"
                                ForeColor="Maroon" ControlToValidate="txt_newuseremail" Font-Bold="True" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailId" runat="server"
                                ControlToValidate="txt_newuseremail" ErrorMessage="Enter Correct Form / Email Id"
                                Font-Bold="True" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ValidationGroup="NewUserGroup"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Phone Number:</strong>
                        </td>
                        <td style="width: 64px">
                            <br />
                            <asp:TextBox ID="txt_newuserphn" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Enter Phone Number"
                                ForeColor="Maroon" ControlToValidate="txt_newuserphn" Font-Bold="True" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator ID="RangeValidatorphn" runat="server" ControlToValidate="txt_newuserphn"
                                ErrorMessage="Enter correct number" Font-Bold="True" ForeColor="Maroon" MaximumValue="9999999999"
                                MinimumValue="99999" SetFocusOnError="True" Style="font-weight: 700"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <strong>Country:</strong>
                        </td>
                        <td style="width: 64px">
                            <br />
                            <asp:TextBox ID="txt_newusercountry" runat="server" Height="25px" Style="margin-left: 0px"
                                Width="179px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ErrorMessage="Enter Country Name"
                                ForeColor="Maroon" ControlToValidate="txt_newusercountry" Font-Bold="True" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <br />
                            <strong>New UserName:</strong>
                        </td>
                        <td style="width: 64px">
                            <br />
                            <asp:TextBox ID="txtnewuser" runat="server" Width="179px" Height="25px" Style="margin-left: 0px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Enter User Name"
                                ForeColor="Maroon" ControlToValidate="txtnewuser" Font-Bold="True" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <br />
                            <br />
                            <strong>New PassWord:</strong>
                        </td>
                        <td style="width: 64px">
                            <br />
                            <br />
                            <asp:TextBox ID="txtnewpass" runat="server" Width="179px" Height="25px" Style="margin-left: 0px"
                                TextMode="Password"></asp:TextBox>
                            <br />
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ErrorMessage="Enter Password"
                                ForeColor="Maroon" ControlToValidate="txtnewpass" Font-Bold="True" ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <br />
                            <br />
                            <strong>New PassWord Again:</strong>
                        </td>
                        <td style="width: 64px">
                            <br />
                            <br />
                            <asp:TextBox ID="txtpassagn" runat="server" Width="179px" Height="25px" Style="margin-left: 0px"
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style6" style="width: 198px">
                            <br />
                            <br />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPwdAgn" runat="server" ErrorMessage="Enter Password Again"
                                ForeColor="Maroon" ControlToValidate="txtpassagn" Font-Bold="True" Display="Dynamic"
                                ValidationGroup="NewUserGroup"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorPwd" runat="server" ControlToCompare="txtnewpass"
                                ControlToValidate="txtpassagn" ErrorMessage="Password Must Match" ForeColor="Maroon"
                                Font-Bold="True" Display="Dynamic" ValidationGroup="NewUserGroup"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="width: 333px">
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btn_View" runat="server" Text="Next" Height="25px" Width="82px" ValidationGroup="NewUserGroup" />
                            <br />
                        </td>
                        <td style="width: 64px">
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="btn_newuserreset" runat="server" Height="25px" Text="Reset" Width="82px" />
                        </td>
                        <td class="style6" style="width: 198px">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
            </asp:View>

               <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
            <asp:View ID="ViewSummary" runat="server"><!--------Table for Second form---------------->
                <table class="style7">
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Name
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Address
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_addres" runat="server" Text="Address"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Date of Birth
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_age" runat="server" Text="DOB"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Email
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Phone Number
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_phn" runat="server" Text="Phone Number"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            Country
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_country" runat="server" Text="Country"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            New User Name
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="lbl_newuser" runat="server" Text="User Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                        </td>
                        <td>
                            <br />
                            <asp:Label ID="newpass" runat="server" Text="Password" Visible="False"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            <br />
                            <asp:Button ID="btn_edit" runat="server" Text="Edit" Width="82px" Height="25px" />
                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btn_newusersubmit" runat="server" Height="25px" Text="Submit" Width="82px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="width: 568px">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </asp:View>
            <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------>

            <asp:View ID="View1" runat="server">
                <br />
                <asp:Button ID="btn_goto" runat="server" Font-Bold="True" Font-Italic="True" Height="28px"
                    Text="GO TO SUBMIT NEWS" Width="159px" />
                <br />
                <br />
            </asp:View>   
            <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        </asp:MultiView>
    </div>
</asp:Content>
