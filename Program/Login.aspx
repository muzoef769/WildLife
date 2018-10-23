<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="text-center mt-5">
        <h2 class="display-3 text-white">Virginia Wildlife Center</h2>

        <div class="container jumbotron w-25 bg-white shadow">
            <div class="pb-3">
                <img src="Images/owl.png" class="container" />
                <a class="display-4 w-75 container">Login</a>


            </div>

            <div class="form-group pb-2">
                <asp:Label ID="lblUsername" runat="server" CssClass="font-weight-bold" Text="Username"></asp:Label>
                <br />
                <div class="input-group bg-light">
                    <span class="input-group-addon pl-2 pt-2 pr-2 border rounded-left"><i class="fa fa-user text-dark"></i></span>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control shadow-sm" MaxLength="25" AutoCompleteType="Disabled" Required="required"></asp:TextBox>
                </div>
                <div class="invalid-feedback">Enter Username</div>
            </div>


            <div class="form-group pb-2">
                <asp:Label ID="lblPassword" runat="server" CssClass="font-weight-bold" Text="Password"></asp:Label>
                <br />
                <div class="input-group bg-light">
                    <span class="input-group-addon pl-2 pt-2 pr-2 border rounded-left"><i class="fa fa-unlock-alt text-dark"></i></span>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control shadow-sm" MaxLength="25" AutoCompleteType="Disabled" Required="required"></asp:TextBox>
                </div>
                <div class="invalid-feedback">Enter Password</div>
            </div>

            <asp:Label ID="lblStatus" runat="server" Visible="false"></asp:Label>

            <h6><a class="nav-link" href="NewUser.aspx">Not a User, Click Here!</a></h6> <%--remove, move to admin--%>

            <div class="pt-1">
                <asp:Button ID="btnLogin" runat="server" CssClass="shadow-sm btn-primary rounded" OnClick="btnLogin_Click" Text="Login" CausesValidation="true" />
            </div>

        </div>
    </div>
</asp:Content>

