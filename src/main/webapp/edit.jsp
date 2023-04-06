<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<h1>Edit yout note.</h1>

	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<h1>Edit Page :</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
		
			<input value="<%=note.getId()%>" id="noteId" name="noteId" type="hidden"/>
			
			<div class="form-group">
				<label for="Title">Note Title</label> 
				<input 
					name="title"
					type="text" 
					class="form-control" 
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter Title" 
					required
					value="<%=note.getTitle()%>" />
			</div>


			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea 
				name="content" 
				id="content"
				placeholder="enter your content here" 
				class="form-control"
				style="height: 300px" 
				required><%=note.getContent()%>
				
				</textarea>

			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>

		</form>


	</div>
</body>
</html>