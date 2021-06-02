<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<%@ include file="all_css_js.jsp" %>
</head>
<body>

        <div class="container">
		  <%@ include file="navbar.jsp"%>
		  <h2>This is edit page</h2>
		  
		  <%
		   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		  
		   Session s = FactoryProvider.getFactory().openSession();
		   
		   Note note = (Note)s.get(Note.class, noteId);
		  %>
		  
		  <form action="UpdateServlet" method="post"> 
		  
		 <input value="<%= note.getId() %>" name="noteId" type="hidden"/>
		  
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input required type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter note title" value="<%=note.getTitle() %>">
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea required id="content" name="content" class="form-control" rows="8" placeholder="Enter your content"><%=note.getContent() %></textarea>
		  </div>
		  <div class="container text-center">
		   <button type="submit" class="btn btn-success">Save</button>
		  </div>
		</form>
	    </div>
</body>
</html>