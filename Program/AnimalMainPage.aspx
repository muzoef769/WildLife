<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalMainPage.aspx.cs" Inherits="AnimalMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron">
         <h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>
        <br />
<%--        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField ="AnimalID" DataTextField ="Name" autopostback="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>--%>
           <br />
        <br />
        <br />
           <br />
        <br />
        <br />
         <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="187px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="txtType" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
                <br />
        <asp:Label ID="lblCommonName" runat="server" Text="Common Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCommonName" runat="server" ReadOnly="True"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="lblScientificName" runat="server" Text="Scientifc Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtScientificName" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
     <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAge" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT [CommonName], [ScientificName], [Name], [Age], [Type], [AnimalID] FROM [Animal]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Age] = @original_Age AND [Type] = @original_Type" InsertCommand="INSERT INTO [Animal] ([CommonName], [ScientificName], [Name], [Age], [Type]) VALUES (@CommonName, @ScientificName, @Name, @Age, @Type)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Animal] SET [CommonName] = @CommonName, [ScientificName] = @ScientificName, [Name] = @Name, [Age] = @Age, [Type] = @Type WHERE [AnimalID] = @original_AnimalID AND [CommonName] = @original_CommonName AND [ScientificName] = @original_ScientificName AND [Name] = @original_Name AND [Age] = @original_Age AND [Type] = @original_Type" >
             <DeleteParameters>
                 <asp:Parameter Name="original_AnimalID" Type="Int32" />
                 <asp:Parameter Name="original_CommonName" Type="String" />
                 <asp:Parameter Name="original_ScientificName" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Age" Type="Int32" />
                 <asp:Parameter Name="original_Type" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="CommonName" Type="String" />
                 <asp:Parameter Name="ScientificName" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Age" Type="Int32" />
                 <asp:Parameter Name="Type" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="CommonName" Type="String" />
                 <asp:Parameter Name="ScientificName" Type="String" />
                 <asp:Parameter Name="Name" Type="String" />
                 <asp:Parameter Name="Age" Type="Int32" />
                 <asp:Parameter Name="Type" Type="String" />
                 <asp:Parameter Name="original_AnimalID" Type="Int32" />
                 <asp:Parameter Name="original_CommonName" Type="String" />
                 <asp:Parameter Name="original_ScientificName" Type="String" />
                 <asp:Parameter Name="original_Name" Type="String" />
                 <asp:Parameter Name="original_Age" Type="Int32" />
                 <asp:Parameter Name="original_Type" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
        <br />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" Width="102px" OnClick="btnEdit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
    
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="102px" Visible="False" />
    </div>
</asp:Content>

