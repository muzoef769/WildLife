<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Birds.aspx.cs" Inherits="Birds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

        <div class="row AnimalNav d-flex justify-content-center ">
		<div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<h1 class="AnimalLi  ">Birds</h1>
			
		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<h1 class="AnimalLi ">Reptiles</h1>
			
		</div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<h1 class="AnimalLi  ">Mammals</h1>
			
		</div>
	</div>
    <div class="row">
		<div class="col-md-4"></div>
	<div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
			<div id="AddAnimalButton" class="col-md-12">
         <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a> <%--ADD A BIRD/ANIMAL LINK IN THE HREF--%>
         
        </div>
        </div>
				<div class="col-md-4"></div>

	
</div>

     <div class="container">
     <div class="row text-center text-lg-center">
     <div id="Bird1" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv">
              <a href="Animal.aspx?field1=1"> 
            <img src="Images/Buddy.jpg" />
                 </a>
              <div class="caption">
                  <h4>Buddy</h4>
              
               
            </div>
            </div>
            </div>
    <div id="Bird2" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
    <div class="thumbnail AnimalInfoDiv">
        <a href="Animal.aspx?field1=2">
    <img src="Images/edie.jpg" />
            </a>
              <div class="caption">
                <h4>Edie</h4>

         </div>
          </div>
        </div>
		 
		 <div id="Bird3" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
         <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=3">
         <img src="Images/Verlon.jpg" />
                 </a>
         <div class="caption">
         <h4>Vernon</h4>
              </div>
          </div>
        </div>
         
        <div id="Bird4" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
          <div class="thumbnail AnimalInfoDiv"> 
               <a href="Animal.aspx?field1=4">
            <img src="Images/maggie.jpg" />
                   </a>
                <div class="caption">
                  <h4>Maggie</h4>
           </div>
          </div>
        </div>
         </div>


    <div class="row text-center text-lg-center">

        <div id="Bird5" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=5">
             <img src="Images/hudson.jpg" />
                 </a>
                <div class="caption">
                <h4>Hudson</h4>
            </div>
          </div>
        </div>

        <div id="Bird6" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=6">
                 <img src="Images/grayson.jpg" />
                 </a>
                <div class="caption">
                <h4>Grayson</h4>
            </div>
          </div>
        </div>

<div id="Bird7" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=7">
                 <img src="Images/keeya.jpg" />
                 </a>
                <div class="caption">
                <h4>Keeya</h4>
            </div>
          </div>
        </div>

<div id="Bird8" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=8">
                 <img src="Images/07-ruby.jpg" />
                 </a>
                <div class="caption">
                <h4>Ruby</h4>
            </div>
          </div>
        </div>
        </div>
   
 <div class="row text-center text-lg-center">

        <div id="Bird9" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=9">
                 <img src="Images/rose.jpg" />  
                 </a>
                <div class="caption">
                <h4>Rosalie</h4>
            </div>
          </div>
        </div>

        <div id="Bird10" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=10">
               <img src="Images/athena.jpg" />
                 </a>
                <div class="caption">
                <h4>Athena</h4>
            </div>
          </div>
        </div>

         <div id="Bird11" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=11">
                 <img src="Images/gus.jpg" />
                 </a>
                <div class="caption">
                <h4>Gus</h4>
            </div>
          </div>
        </div>

      <div id="Bird12" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=12">
                 <img src="Images/papagho.jpg" />
                 </a>
                <div class="caption">
                <h4>Papa G'Ho</h4>
            </div>
          </div>
        </div>
     </div>

     <div class="row text-center text-lg-center">
         <div id="Bird13" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=13">
                 <img src="Images/quinn.jpg" />
                 </a>
                <div class="caption">
                <h4>Quinn</h4>
            </div>
          </div>
        </div>

<div id="Bird14" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=14">
                 <img src="Images/alex.jpg" />
                 </a>
                <div class="caption">
                <h4>Alex</h4>
            </div>
          </div>
        </div>

<div id="Bird15" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=15">
                 <img src="Images/Buttercup%202014%20(17).jpg" />
                 </a>
                <div class="caption">
                <h4>Buttercup</h4>
            </div>
          </div>
        </div>
    <div id="Bird16" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
            <div class="thumbnail AnimalInfoDiv">
             <a href="Animal.aspx?field1=16">
                 <img src="Images/14-jaz.jpg" />
                 </a>
                <div class="caption">
                <h4>Jaz</h4>
            </div>
          </div>
        </div>
         </div>
    </div>
     <%--       <div class="column" style="background-color: #ccc;">
                <h2>Verlon</h2>
                <a href="Animal.aspx?field1=3">
                    <img src="Images/Verlon.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                





            </div>
        </div>



        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Maggie</h2>
                <a href="Animal.aspx?field1=4">
                    <img src="Images/maggie.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Hudson</h2>
                <a href="Animal.aspx?field1=27">
                    <img src="Images/hudson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               






            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Grayson</h2>
                <a href="Animal.aspx?field1=5">
                    <img src="Images/grayson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               






            </div>
        </div>
<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Keeya</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=6">
                            <img src="Images/keeya.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Ruby</h2>
                <a href="Animal.aspx?field1=7">
                    <img src="Images/07-ruby.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Rosalie</h2>
                <a href="Animal.aspx?field1=8">
                    <img src="Images/rose.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                >





            </div>
        </div>

<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Athena</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=9">
                            <img src="Images/athena.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
               

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Gus</h2>
                <a href="Animal.aspx?field1=10">
                    <img src="Images/gus.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Papa G'Ho</h2>
                <a href="Animal.aspx?field1=11">
                    <img src="Images/papagho.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
        </div>

        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Quinn</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=12">
                            <img src="Images/quinn.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Alex</h2>
                <a href="Animal.aspx?field1=13">
                    <img src="Images/alex.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Buttercup</h2>
                <a href="Animal.aspx?field1=14">
                    <img src="Images/Buttercup%202014%20(17).jpg" style="width: 150px"   />
                </a>
                <br />
                <br />
               





            </div>
        </div>
        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Jaz</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=15">
                            <img src="Images/14-jaz.jpg" style="width: 150px"  />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            </div>--%>


<%--    </body>
    </html>

--%>









</asp:Content>

