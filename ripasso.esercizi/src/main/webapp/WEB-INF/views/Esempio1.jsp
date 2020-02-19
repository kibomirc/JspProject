<%@ page import = "java.util.Random" %>

<html>
<head>
	<title>Esempio 1</title>
</head>

<body>
	<h1>Benvenuto in JSP</h1>
	<p> JSP ESEMPIO 1 </p>

	<ul>
	<%
	session.setAttribute("esempio","abc");

	
	// Inizio codice Java!
	Random randomObject = new Random();
	for (int i=0;i < 10; i++) {
		int casuale = randomObject.nextInt(100);
	// fine codice Java!
	%>
	<li><%=casuale %></li>
	<% }
 	%> 
 	</body>
 	</head>
 	