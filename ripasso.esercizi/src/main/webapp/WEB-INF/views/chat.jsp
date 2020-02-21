<%!
	String[] messaggi = new String[15];

	public void jspInit() {
	for(int i=0;i < messaggi.length;i++)
		messaggi[i] = "";
	}

	public synchronized void inserisciMessaggio(String messaggio) {
		for(int i = messaggi.length - 1;i > 0; i--)
			messaggi[i] = messaggi[i - 1];
			messaggi[0] = messaggio;
	}
	
	public synchronized void stampaMessaggio(JspWriter writer) throws java.io.IOException {
		for(int i=0;i < messaggi.length;i++) 
			writer.write(messaggi[i]);
	}
%>

<%
	String nickname = request.getParameter("nickname");
	if(nickname == null || nickname.trim().equals("")) nickname = "Anonimo";
	String messaggio = request.getParameter("messaggio");
	String aggiorna = request.getParameter("aggiorna");
	if(messaggio != null && aggiorna == null) {
		inserisciMessaggio("<b>" + nickname + "</b> - " + messaggio + "<br>" );	
	}
%>
<html>
<head>
<title> CHAT </title>
<body onload = "document.f.messaggio.focus()">
<form name = "f" method="post">
Nickname:
<input type ="text"
		name="nickname"
		size="10"
		value = "<%= nickname %>">
Messaggio:
<input type = "text"
		name="messaggio"
		size = "30">
<input type="submit"
	value="Invia">
<input type="submit"
	name="aggiorna"
	value="Aggiorna">
</form>
<hr>
<% stampaMessaggio(out); %>
</body>
</html>
