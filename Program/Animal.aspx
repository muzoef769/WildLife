<%@ Page Title="Animal" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
    <div class="container jumbotron w-50 bg-white shadow">
        <div class=" offset-2">

        <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField ="AnimalID" DataTextField ="Name" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>--%>
        <div class="form-group">
             <asp:Label ID="lblType" runat="server" for= "txtType">Type:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox class="form-control" ID="txtType" runat="server" Width="400px" ReadOnly="True"></asp:TextBox>
             <asp:DropDownList class="form-control" ID="ddlType" runat="server" Width="400px" Visible="false">
                <asp:ListItem>Bird</asp:ListItem>
                <asp:ListItem>Mammal</asp:ListItem>
                <asp:ListItem>Reptile</asp:ListItem>
             </asp:DropDownList> 

        </div>
          
        <div class="form-group">
            <asp:Label ID="lblName" runat="server" for= "txtName">Name:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox class="form-control" ID="txtName" runat="server" Width="400px" ReadOnly="True"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblSpecies" runat="server" for= "txtSpecies">Species:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox class="form-control" ID="txtSpecies" runat="server" Width="400px" ReadOnly="True"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblScientificName" runat="server" for="txtScientificName">Scientific Name:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox class="form-control" ID="txtScientificName" runat="server" Width="400px" ReadOnly="True"></asp:TextBox>
        </div>

         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT [AnimalID], [CommonName], [ScientificName], [Name], [Type] FROM [Animal]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type" InsertCommand="INSERT INTO [Animal] ([CommonName], [ScientificName], [Name], [Type]) VALUES (@CommonName, @ScientificName, @Name, @Type)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Animal] SET [CommonName] = @CommonName, [ScientificName] = @ScientificName, [Name] = @Name, [Type] = @Type WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type" >
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
         </asp:SqlDataSource>--%>
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        
        <div class="container" style="margin-left: auto; margin-right: auto;">
            <asp:Button class="btn btn-primary" ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
            <asp:Button class="btn btn-warning" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="False" />
            <asp:Button class="btn btn-danger" ID="btnDelete" runat="server" Text="Delete" Visible="False" />
        </div>
        
             </div>
    </div>
   
     



</asp:Content>







