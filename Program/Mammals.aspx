<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Mammals.aspx.cs" Inherits="Mammals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row AnimalNav d-flex justify-content-center ">
		<div  class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle" >
			<a class="AnimalLi nav-link" href="Birds.aspx">Birds</a>
			
		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<a class="AnimalLi nav-link" href ="Reptiles.aspx">Reptiles</a>

		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<a class="AnimalLi nav-link font-weight-bold Underline text-success " href ="#">Mammals</a>

		</div>
	</div>
    <div class="row">
		<div class="col-md-4"></div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<div id="AddAnimalButton" class="col-md-12">
         <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal text-light" OnClick ="Redirect()" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a> <%--ADD A BIRD/ANIMAL LINK IN THE HREF--%>
         
        </div>
        </div>
				<div class="col-md-4"></div>

	
</div>
    <div class="container">

     
     <div class="row text-center text-lg-center">
     <div id="Mammal1" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv">
              <a href="Animal.aspx?field1=16"> 
            <img class="AnimalPic"src="Images/bo.jpg" />
                 </a>
              <div class="caption">
                  <h4>Bo</h4>
              
               
            </div>
            </div>
            </div>
    <div id="Mammal2" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
    <div class="thumbnail AnimalInfoDiv">
        <a href="Animal.aspx?field1=17">
            <img class="AnimalPic"src="Images/Posiesmaller.jpg" />
            </a>
              <div class="caption">
                <h4>Posie</h4>

         </div>
          </div>
        </div>
		 
		 <div id="Mammal3" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
         <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=18">
                 <img class="AnimalPic"src="Images/Willowsmall.jpg" />
                 </a>
         <div class="caption">
         <h4>Willow</h4>
              </div>
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


</asp:Content>

