<%! 
	public void Saluta(JspWriter jspWriter) throws java.io.IOException {
		jspWriter.write("Ciao!");
	}
%>

<html>
	<head>
		<title>Esempio 5</title>
	</head>
	
	<body><% Saluta(out);%></body>
</html> 
	