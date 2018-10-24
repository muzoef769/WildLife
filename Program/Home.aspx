<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <div class="container">

            <div class="text-left form-group row">
                <label for="ddlMonth" class="col-4 col-form-label font-weight-bold">Upcoming Programs:</label>
                <asp:Label runat="server" ID="lblCurrentMonth" CssClass="display-4"></asp:Label>
            </div>
               <%-- schedule - gridview??--%>


        </div>

    </div>
</asp:Content>

