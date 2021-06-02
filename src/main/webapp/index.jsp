<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<%@ include file="all_css_js.jsp" %>
<style>
  body{
   background: #C9FFBF;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #FFAFBD, #C9FFBF);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #FFAFBD, #C9FFBF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */  
    
 } 
</style>
</head>
<body>

	<div class="container-fluid p-0 m-0">
		<%@ include file="navbar.jsp"%>
	</div>
	
	     <div class="container mt-4 text-success">
	      <div class="row">
	        <div class="col-md-5">
		     <img alt="" class="img-fluid" style="max-width:400px;" src="img/welcome-left.png" />
		    </div>
		    <div class="col-md-7 mt-4">
		       <h2 class="display-3">Free up your mental space, take your note here...!!</h2>
		       <div class="container text-center mt-2">
		       <a href="add_notes.jsp" type="button" class="btn btn-primary">Get Started</a>
		       </div>
		    </div>
		   </div>
	    </div>
	   
	   
	                
</body>
</html>