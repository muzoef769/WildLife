<%@ Page Title="Animal" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
    <div class="container-fluid ProgramContainer">
        <div class="card mx-auto  ProgramCard">
            <br />
            <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField ="AnimalID" DataTextField ="Name" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>--%>
            <asp:label id="lblType" runat="server" text="Type: "></asp:label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:textbox id="txtType" runat="server" readonly="True"></asp:textbox>
            <asp:dropdownlist id="ddlType" runat="server" visible="false">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
         </asp:dropdownlist>
            <br />
            <br />
            <asp:label id="lblName" runat="server" text="Name: "></asp:label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:textbox id="txtName" runat="server" width="187px" readonly="True"></asp:textbox>
            <br />

            <br />
            <br />
            <asp:label id="lblSpecies" runat="server" text="Species: "></asp:label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:textbox id="txtSpecies" runat="server" readonly="True"></asp:textbox>
            <br />
            <br />
            <asp:label id="lblScientificName" runat="server" text="Scientifc Name: "></asp:label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:textbox id="txtScientificName" runat="server" readonly="True"></asp:textbox>
            <br />

            <br />
            <br />
            <asp:label id="Label1" runat="server" text="Animal Status"></asp:label>
            <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT [AnimalID], [CommonName], [ScientificName], [Name], [Type] FROM [Animal]" conflictdetection="CompareAllValues" deletecommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type" insertcommand="INSERT INTO [Animal] ([CommonName], [ScientificName], [Name], [Type]) VALUES (@CommonName, @ScientificName, @Name, @Type)" oldvaluesparameterformatstring="original_{0}" updatecommand="UPDATE [Animal] SET [CommonName] = @CommonName, [ScientificName] = @ScientificName, [Name] = @Name, [Type] = @Type WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Type] = @original_Type">
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
         </asp:sqldatasource>
            <br />
            <asp:label runat="server" id="lblMessage"></asp:label>
            &nbsp;&nbsp;&nbsp;<asp:dropdownlist id="DropDownList1" runat="server">
                 <asp:ListItem Value="0">Deactive</asp:ListItem>
                 <asp:ListItem Value="1">Active</asp:ListItem>
             </asp:dropdownlist>
            <br />
            <asp:button id="btnEdit" runat="server" text="Edit" width="102px" onclick="btnEdit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:button id="btnUpdate" runat="server" text="Update" onclick="btnUpdate_Click" visible="False" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            
        </div>
    </div>





</asp:Content>







