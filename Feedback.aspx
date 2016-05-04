<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false"
    CodeFile="Feedback.aspx.vb" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <%----------------------------------------------------------------------------Main Form To Provide Feedback-------------------------------------------------------------------------------------------------%>
    <div>
        <br />
        <br />
        <br />
        You Can Always Feel Free To Contact Us at:<p>
            Gwarko-17, Kathmandu</p>
        <p>
            P.O. Box: 17464, NEPAL</p>
        <p>
            PHONE NUMBER:01-4125897, 4144758,5547968</p>
        <p>
            <a href="mailto:Email:info@onlinennews.com">Email:info@onlinennews.com</a></p>
        <p>
            Website:www.onlinenewsnep.com.np</p>
        <p>
            &nbsp;<asp:Label ID="lbl_display" runat="server" Text="You can provide your FeedBack Down Here:"
                Font-Bold="True" Font-Names="Arial Black" ForeColor="#993333"></asp:Label>
        </p>
    </div>


    <div id="content2">
        <table class="style1" style="margin: 35px; width: 83%;"><%------------------------------------------------------------------------TABLE STARTS TO FILL THE FORM--------------------------------------------------%>
            <tr>
                <td class="modal-sm" align="right" style="width: 370px">
                    <asp:Button ID="btn_name" runat="server" Text="Name" Width="133px" />
                </td>
                <td class="style2" align="left" style="width: 168px">
                    <br />
                    <asp:TextBox ID="txt_name" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="style3" align="left" style="width: 323px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txt_name"
                        ErrorMessage="Name Field Can't Be Empty" Font-Bold="True" ForeColor="Maroon"
                        ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" align="right" style="width: 370px">
                    <asp:Button ID="btn_addr" runat="server" Text="Address" Width="133px" />
                </td>
                <td class="style2" align="left" style="width: 168px">
                    <asp:TextBox ID="txt_addr" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="style3" align="left" style="width: 323px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txt_addr"
                        ErrorMessage="Field Can't Be Empty" Font-Bold="True" ForeColor="Maroon" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" align="right" style="width: 370px">
                    <asp:Button ID="btn_email" runat="server" Text="Email" Width="133px" />
                </td>
                <td class="style2" align="left" style="width: 168px">
                    <asp:TextBox ID="txt_email" runat="server" Width="150px"></asp:TextBox>
                    <br />
                </td>
                <td class="style3" align="left" style="width: 323px">
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txt_email"
                        ErrorMessage="Email Field Can't Be Empty" Font-Bold="True" ForeColor="Maroon"
                        ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidatorEmail" runat="server" ControlToValidate="txt_email"
                        ErrorMessage="Enter Correct Email" Font-Bold="True" ForeColor="Maroon" Display="Dynamic"
                        ValidationGroup="PersonalInfoGroup">Enter In Correct Form</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" align="right" style="width: 370px">
                    <asp:Button ID="btn_feedback" runat="server" Text="Feedback" Width="133px" />
                </td>
                <td class="style2" align="left" style="width: 168px">
                    <asp:TextBox ID="txt_feedback" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                    &nbsp;
                </td>
                <td class="style3" align="left" style="width: 323px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFeedback" runat="server" ControlToValidate="txt_feedback"
                        ErrorMessage="Field Can't Be Empty" Font-Bold="True" ForeColor="Maroon" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="modal-sm" align="right" style="width: 370px">
                    <br />
                    <br />
                    <br />
         <%--------------------------------------------------------------SUBMIT AND RESET BUTTONS-----------------------------------------------------------------------------------------------------------%>
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="133px" BorderStyle="Groove"
                        ValidationGroup="PersonalInfoGroup" />
                </td>
                <td class="style2" align="left" style="width: 168px">
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="133px" BorderStyle="Groove" />
                </td>
            </tr>
        </table> <%--------------------------------------------------------------TABLE END----------------------------------------------------------------------------------------------------------------------%>
        <%-------------------------------------------------------BELOW THIS CONTENT IS FROM MASTER PAGE---------------------------------------------------------------------------------------------------------%>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
<%-------------------------------------------------------BELOW THIS CONTENT IS FROM MASTER PAGE-------------------------------------------------------------------------------------------------------------------%>