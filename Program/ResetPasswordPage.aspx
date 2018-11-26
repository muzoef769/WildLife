<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ResetPasswordPage.aspx.cs" Inherits="ResetPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <fieldset class="text-white">
        <asp:Label ID="lblPass" runat="server" Text="New Password: " ></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RV1"
            runat="server"
            ControlToValidate="txtPass"
            Display="Dynamic"
            ErrorMessage="Must enter password">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegExValid1"
            runat="server"
            ControlToValidate="txtPass">
        </asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password: "></asp:Label>
        <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RV2"
            runat="server"
            ControlToValidate="txtConfirmPass"
            Display="Dynamic"
            ErrorMessage="Confirm Password">
        </asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="ChangePassword" CausesValidation="true" UseSubmitBehavior="false" />
    </fieldset>

</asp:Content>

