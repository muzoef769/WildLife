<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ResetPasswordPage.aspx.cs" Inherits="ResetPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblPass" runat="server" Text="New Password: " CssClass="bg-white"></asp:Label>
    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password: " CssClass="bg-white"></asp:Label>
    <asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox>

    <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="ChangePassword" CausesValidation="true" UseSubmitBehavior="false"/>
</asp:Content>

