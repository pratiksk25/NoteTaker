<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>

	<h1>Please fill your note Details.</h1>
	<br>

	<!-- This is add form -->
	<form action="SaveNoteServlet" method="post">
	
		<div class="form-group">
			<label for="Title">Note Title</label> 
			<input
				name = "title"
				type="text" 
				class="form-control" 
				id="title"
				aria-describedby="emailHelp" 
				placeholder="Enter Title"
				required
				> 
		</div>
		
		
		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea 
				name = "content"
				id="content"
				placeholder="enter your content here"
				class = "form-control"
				style ="height:300px"
				required
				></textarea>
			
		</div>
		
		<div class="container text-center"><button type="submit" class="btn btn-primary">Add</button></div>
		
	</form>


</body>
</html>