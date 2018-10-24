<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mammals.aspx.cs" Inherits="Mammals" %>

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

<h2>All Mammals</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Bo</h2>
    <a href="Animal.aspx">
        <img src="bo.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="MammalAdd" runat="server" Text="Add New Mammal" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="MammalReport" runat="server" Text="Create Mammal Report" />

  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Posie</h2>
     <a href="Animal.aspx">
         <img src="Posiesmaller.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button1" runat="server" Text="Add New Mammal" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Create Mammal Report" />
      




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Willow</h2>
    <a href="Animal.aspx">
        <img src="Willowsmall.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="Button3" runat="server" Text="Add New Mammal" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button4" runat="server" Text="Create Mammal Report" />
         




  </div>
</div>



 




</body>
</html>











</asp:Content>

