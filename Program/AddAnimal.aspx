<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddAnimal.aspx.cs" Inherits="AddAnimal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


     <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
    <div class="container jumbotron w-50 bg-white shadow"">
         <div class=" offset-2">
        <br />
        <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField ="AnimalID" DataTextField ="Name" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>--%>
        <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                <asp:DropDownList ID="ddlType" runat="server" Visible="true">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
         </asp:DropDownList>   
        <br />
        <br />
         <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="187px" ReadOnly="False"></asp:TextBox>
        <br />
        
        <br />
                <br />
        <asp:Label ID="lblSpecies" runat="server" Text="Species: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSpecies" runat="server" ReadOnly="False"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="lblScientificName" runat="server" Text="Scientifc Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtScientificName" runat="server" ReadOnly="False"></asp:TextBox>
        <br />

        <br />
        <br />
        
         <br />
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="btnAdd" runat="server" Text="Add Animal" Width="102px" Visible="False" OnClick="btnAdd_Click" />
             </div>
    </div>
   
     















</asp:Content>

