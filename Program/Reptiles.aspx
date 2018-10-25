<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reptiles.aspx.cs" Inherits="Reptiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<%-- <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">--%>
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
<%--</head>
<body>--%>

<h2>All Reptiles</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Clifford</h2>
    <a href="Animal.aspx">
        <img src="Images/cliff.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Max</h2>
    <a href="Animal.aspx">
        <img src="Images/max.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
     
      




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Malcolm</h2>
    <a href="Animal.aspx">
        <img src="Images/21-malcolm.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
       
         




  </div>
</div>



 <div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Albus</h2>
    <a href="Animal.aspx">
        <img src="Images/albus.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
     
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Severus</h2>
    <a href="Animal.aspx">
        <img src="Images/22-severus.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      
      




  </div>
  <div class="column" style="background-color:#ccc;">
<h2>Oscar</h2>
    <a href="Animal.aspx">
        <img src="Images/oscar.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
      
         




  </div>
</div>

    <div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Emma</h2>
    <a href="Animal.aspx">
        <img src="Images/23-emma.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
       
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Wilson</h2>
    <a href="Animal.aspx">
        <img src="Images/24-wilson.jpg" style="width: 150px" />
        
</a>
    <br /> 
     <br /> 
            
      </div>
        </div>


<%--</body>
</html>
--%>










</asp:Content>
