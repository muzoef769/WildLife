<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AnimalFirstPage.aspx.cs" Inherits="AnimalFirstPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</head>
<body>

<h2>Three Equal Columns</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Birds</h2>
    <a href="Birds.aspx">
  <img src="storyblocks-bald-eagle-haliaeetus-leucocephalus-portrait-of-brown-bird-of-prey-with-white-head-yellow-bill-symbol-of-freedom-of-the-united-states-of-america-alaska-usa_ScUQXlQ7-G.jpg" /> 
</a>
    <br /> 
     <br /> 
    <asp:Button ID="BirdAdd" runat="server" Text="Add New Bird" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="BirdReport" runat="server" Text="Create Bird Report" />
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Mammals</h2>
    <a href="Mammals.aspx">
        <img src="149_2101619.jpg" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="MammalAdd" runat="server" Text="Add New Mammal" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="MammalReport" runat="server" Text="Create Mammal Report" />




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Reptiles</h2>
    <a href="Reptiles.aspx">
        <img src="138_1079348.jpg" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="ReptileAdd" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="ReptileReport" runat="server" Text="Create Reptile Report" />    




  </div>
</div>

</body>
</html>


  <%--  <h2>Animal Home Page</h2>
<p>Select the type of Animal</p>

<a href="Animal.aspx">
  <img src="storyblocks-bald-eagle-haliaeetus-leucocephalus-portrait-of-brown-bird-of-prey-with-white-head-yellow-bill-symbol-of-freedom-of-the-united-states-of-america-alaska-usa_ScUQXlQ7-G.jpg" /> 
</a>
    <br /> 
     <br /> 
    <asp:Label ID="Label1" runat="server" Text="Birds"></asp:Label>--%>








</asp:Content>

