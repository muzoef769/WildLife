<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <div class="container">

            <div class="text-left form-group row">
                <label for="ddlMonth" class="col-4 col-form-label font-weight-bold">Upcoming Programs:</label>
                <asp:Label runat="server" ID="lblCurrentMonth" CssClass="display-4 col-6"></asp:Label>
            </div>
            <div class="text-left form-group row">
                <label for="ddlMonth" class=" offset-4 col-6 col-form-item font-weight-bold">November 26: Off-Site; James Madison University</label>
            </div>

            <asp:Button ID="btnUser" runat="server" Text="Create User" OnClick="btnUser_Click" Visible="false" />
               <%-- schedule - gridview??--%>


        </div>

    </div>
</asp:Content>

