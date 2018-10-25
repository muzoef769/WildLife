<%@ Page Title="Animal" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
    <div class="container jumbotron w-50 bg-white shadow"">
         <div class=" offset-2">
        <br />
        <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField ="AnimalID" DataTextField ="Name" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>--%>
        <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="txtType" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:DropDownList ID="ddlType" runat="server" Visible="false">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
         </asp:DropDownList>   
        <br />
        <br />
         <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="187px" ReadOnly="True"></asp:TextBox>
        <br />
        
        <br />
                <br />
        <asp:Label ID="lblSpecies" runat="server" Text="Species: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSpecies" runat="server" ReadOnly="True"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="lblScientificName" runat="server" Text="Scientifc Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtScientificName" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

        <br />
        <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT [AnimalID], [CommonName], [ScientificName], [Name], [Type] FROM [Animal]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type" InsertCommand="INSERT INTO [Animal] ([CommonName], [ScientificName], [Name], [Type]) VALUES (@CommonName, @ScientificName, @Name, @Type)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Animal] SET [CommonName] = @CommonName, [ScientificName] = @ScientificName, [Name] = @Name, [Type] = @Type WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type" >
             <DeleteParameters>
                 <asp:Parameter Name="original_AnimalID" Type="Int32" />
                 <asp:Parameter Name="original_CommonName" Type="String" />
                 <asp:Parameter Name="original_ScientificName" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Type" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="CommonName" Type="String" />
                 <asp:Parameter Name="ScientificName" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Type" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="CommonName" Type="String" />
                 <asp:Parameter Name="ScientificName" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Type" Type="String" />
                 <asp:Parameter Name="original_AnimalID" Type="Int32" />
                 <asp:Parameter Name="original_CommonName" Type="String" />
                 <asp:Parameter Name="original_ScientificName" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Type" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <br />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" Width="102px" OnClick="btnEdit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="102px" Visible="False" />
             </div>
    </div>
   
     



</asp:Content>







