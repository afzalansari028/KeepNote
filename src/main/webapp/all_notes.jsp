<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<%@ include file="all_css_js.jsp"%>
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
		<%@include file="navbar.jsp"%>
		<h2 class="text-uppercase text-center mt-2">ALL Notes:</h2>

		<%
         Session s = FactoryProvider.getFactory().openSession();
         Query q = s.createQuery("from Note");
         List<Note> list = q.list();
         for(Note note : list){     
        %>
         <div class="card mt-3">
		  <img class="card-img-top m-2 mx-auto"style="max-width:90px" src="img/notepad.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title"><%=note.getTitle() %></h5>
		    <p class="card-text"style="font-style:italic;"><%=note.getContent() %></p>
		    <div class="container ">
		     <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
		    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
		    </div>
		    
		  </div>
		</div>
		<%	
         }
         s.close();
       %>
	</div>
</body>
</html>