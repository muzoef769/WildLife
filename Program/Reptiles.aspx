<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reptiles.aspx.cs" Inherits="Reptiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="row AnimalNav d-flex justify-content-center ">
		<div  class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle" >
			<a class="AnimalLi nav-link" href="Birds.aspx">Birds</a>
			
		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<a class="AnimalLi nav-link" href ="#">Reptiles</a>

		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<a class="AnimalLi nav-link " href ="Mammals.aspx">Mammals</a>

		</div>
	</div>	
<div class="row">
		<div class="col-md-4"></div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<div id="AddAnimalButton" class="col-md-12">
         <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal text-light" onclick="Redirect()" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a> <%--ADD A BIRD/ANIMAL LINK IN THE HREF--%>
         
        </div>
        </div>
				<div class="col-md-4"></div>

	
</div>
  <div class="container">       
    <div class="row text-center text-lg-center">
     <div id="Reptile1" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv">
              <a href="Animal.aspx?field1=19"> 
            <img class="AnimalPic" src="Images/cliff.jpg" />
                 </a>
              <div class="caption">
                  <h4>Clifford</h4>
              
               
            </div>
            </div>
            </div>
    <div id="Reptile2" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
    <div class="thumbnail AnimalInfoDiv">
        <a href="Animal.aspx?field1=20">
            <img class="AnimalPic" src="Images/max.jpg" />
            </a>
              <div class="caption">
                <h4>Max</h4>

         </div>
          </div>
        </div>
		 
		 <div id="Reptile3" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
         <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=21">
         <img class="AnimalPic" src="Images/21-malcolm.jpg" />
                 </a>
         <div class="caption">
         <h4>Malcom</h4>
              </div>
          </div>
        </div>
         
        <div id="Reptile4" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv"> 
               <a href="Animal.aspx?field1=22">
                   <img class="AnimalPic" src="Images/albus.jpg" />
                   </a>
                <div class="caption">
                  <h4>Albus</h4>
           </div>
          </div>
        </div>
         </div>

	
<div class="row text-center text-lg-center">
     <div id="Reptile5" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv">
              <a href="Animal.aspx?field1=23"> 
            <img class="AnimalPic"src="Images/22-severus.jpg" />
                 </a>
              <div class="caption">
                  <h4>Severus</h4>
              
               
            </div>
            </div>
            </div>
    <div id="Reptile6" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
    <div class="thumbnail AnimalInfoDiv">
        <a href="Animal.aspx?field1=24">
            <img class="AnimalPic"src="Images/oscar.jpg" />
            </a>
              <div class="caption">
                <h4>Oscar</h4>

         </div>
          </div>
        </div>
		 
		 <div id="Reptile7" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
         <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=25">
                 <img class="AnimalPic"src="Images/23-emma.jpg" />
                 </a>
         <div class="caption">
         <h4>Emma</h4>
              </div>
          </div>
        </div>
         
        <div id="Reptile8" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv"> 
               <a href="Animal.aspx?field1=26">
                   <img class="AnimalPic"src="Images/24-wilson.jpg" />  
                   </a>
                <div class="caption">
                  <h4>Wilson</h4>
           </div>
          </div>
        </div>
         </div>


      <script type="text/javascript">
         <!--
            function Redirect() {
             window.location="AddAnimal.aspx";
            }
         //-->
      </script>








</div>
</asp:Content>
