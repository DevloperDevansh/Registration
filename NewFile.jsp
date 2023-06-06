<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>
  <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
</head>
<body style = "background:url(img/pexels-hitarth-jadhav-220357.jpg);background-size:cover;background-attachment:fixed">
    <div class = "container">
        <div class="row">
            <div class = "col m6 offset -m5">
                <div class = "card">
                   <div class = "card-content">
                       <h3 style = "margin-top:11px;"class = "center-align">Register Here!!</h3>
                       
                       <div class = "form center-align">
                           <!-- Creating form  -->
                         <form action = "Register" method = "post" id = "myform">
                             <input type = "text" name = "user_name" placeholder="Enter user name"/>     
                             <input type = "password" name = "user_password" placeholder="Enter user password"/>    
                             <input type = "Email" name = "user_email" placeholder="Enter user email"/>    
                             <button type = "submit" class = "btn black">Submit</button>             
                         
                         </form>
                           
                       </div>
                       
                       <div class = "loader center-align" style ="margin-top:10px">
                            
                             <div class="preloader-wrapper big active">
                            <div class="spinner-layer spinner-blue-only">
                           <div class="circle-clipper left">
                           <div class="circle"></div>
                          </div><div class="gap-patch">
                          <div class="circle"></div>
                          </div><div class="circle-clipper right">
                          <div class="circle"></div>
                          </div>
                         </div>
                        </div>
                        
                          <h5>please wait...</h5>
                       </div>
                       
                       
                   </div>
                </div>
            </div>
        </div>
   </div>
    
   <script>
  src="https://code.jquery.com/jquery-3.6.4.min.js"
  integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
  crossorigin="anonymous"></script>
    
  <script>
      $(document).ready(function (){
    	  console.log("page is ready....")
    	  
    	  $("#$myform").on('submit',function(event){
    		  event.preventDefault();
    		  
    		  var f = $(this).serialize();
    		  
    		  $(".loader").show;
    		  @(".form").hide();
    		  
    		  console.log(f);
    		  $.ajax({
    			  url: "Register",
    			  data: f;
    		      type: 'post',
    		      success: function(data,textstatus,jqXHR){
    		    	  console.log(data);
    		    	  console.log("successs........")
    		    	  $(".loader").hide;
    	    		  @(".form").show();
    		      }
    		      error: function(jqXHR,textstatus,errorThrown){
    		    	  console.log(data);
    		    	  console.log("error..........")
    		    	  $(".loader").hide;
    	    		  @(".form").show();
    		      }
    		  })
    	  }
    	  
    	  
      }
    </script>
</body>
</html>