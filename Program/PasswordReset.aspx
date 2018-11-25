<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PasswordReset.aspx.cs" Inherits="PasswordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <div>
        <fieldset>
            <legend>Forgot Password</legend>
            <asp:Label ID="lblUserName" runat="server" Text="User Name" CssClass="bg-white"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RV1"
                runat="server"
                ControlToValidate="txtUserName"
                ErrorMessage="Please Enter UserName"
                SetFocusError="True">
            </asp:RequiredFieldValidator>

            <asp:Button ID="btnPass" runat="server" Text="Submit" OnClick="btnPass_Click" CssClass="error" CausesValidation="true" UseSubmitBehavior="false"/>

            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        
        </fieldset>
    </div>
</asp:Content>

