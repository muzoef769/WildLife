<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddInvoice.aspx.cs" Inherits="AddInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-md-6 mx-auto text-center">

            <h1 class="CardTitle">View Invoice Info</h1>
        </div>
    </div>
    <div class="row">
        <br />
        <div id="AddAnimalButton" class="col-lg-2 col-md-4 col-s-4 mx-auto">
            <asp:Button ID="btnInvoice" runat="server" CssClass="btn btn-primary d-flex  mx-auto justify-content-center" Text="Add Invoice"/>
        </div>
    
   
       
        <asp:SqlDataSource ID="EditAnimal" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalID] FROM [Animal]"></asp:SqlDataSource>
    </div>
</asp:Content>

