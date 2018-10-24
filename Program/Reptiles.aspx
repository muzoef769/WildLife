<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reptiles.aspx.cs" Inherits="Reptiles" %>

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

<h2>All Reptiles</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Clifford</h2>
    <a href="Animal.aspx">
        <img src="cliff.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="ReptileAdd" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="ReptileReport" runat="server" Text="Create Reptile Report" /> 
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Max</h2>
    <a href="Animal.aspx">
        <img src="max.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button1" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Create Reptile Report" /> 
      




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Malcolm</h2>
    <a href="Animal.aspx">
        <img src="21-malcolm.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button3" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button4" runat="server" Text="Create Reptile Report" /> 
         




  </div>
</div>



 <div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Albus</h2>
    <a href="Animal.aspx">
        <img src="albus.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button5" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button6" runat="server" Text="Create Reptile Report" /> 
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Severus</h2>
    <a href="Animal.aspx">
        <img src="22-severus.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button7" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button8" runat="server" Text="Create Reptile Report" /> 
      




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Oscar</h2>
    <a href="Animal.aspx">
        <img src="oscar.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button9" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button10" runat="server" Text="Create Reptile Report" /> 
         




  </div>
</div>

    <div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Emma</h2>
    <a href="Animal.aspx">
        <img src="23-emma.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button11" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button12" runat="server" Text="Create Reptile Report" /> 
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Wilson</h2>
    <a href="Animal.aspx">
        <img src="24-wilson.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button13" runat="server" Text="Add New Reptile" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button14" runat="server" Text="Create Reptile Report" /> 
      
      </div>
        </div>


</body>
</html>











</asp:Content>
