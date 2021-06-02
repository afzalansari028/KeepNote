<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%@ include file="all_css_js.jsp" %>
<style>
     body{
        background: #FFEEEE;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #DDEFBB, #FFEEEE);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #DDEFBB, #FFEEEE); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        
        }
</style>
</head>
<body>
    
    <div class="container">
      <%@include file="navbar.jsp" %>
   	 
   	 <h2 style="text-align:center;margin-top:15px;color:blue;">Please fill your details here !</h2>

      <!-- this is add form -->
	   	<form action="SaveNoteServlet" method="post"> 
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input required type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter note title">
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea required id="content" name="content" class="form-control" rows="8" placeholder="Enter your content"></textarea>
		  </div>
		  <div class="container text-center">
		   <button type="submit" class="btn btn-primary">Add</button>
		  </div>
		</form>
	</div>	
   	
</body>
</html>