<%@ page import = "java.util.Random" %>

<html>
<head>
	<title>GET SESSION</title>
</head>

<body>
	<h1>Benvenuto in JSP</h1>
	<p> JSP GET SESSION</p>

	<ul>
	<%
	String var = (String)session.getAttribute("esempio");
	%>
	<li><%=var %></li>
 	</body>
 	</head>
 	