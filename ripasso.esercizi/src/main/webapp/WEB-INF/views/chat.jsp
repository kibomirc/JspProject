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