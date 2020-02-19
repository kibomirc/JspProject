<%@ page import="java.util.Timer,java.util.TimerTask" %>
<%!



	private class Temporizzata extends TimerTask {
	
		private int i = 0;
	
		public void run() {
			i++;
		}
		
		public int leggiValore() {
			return i;
		}
		
	}
	
	// istanza della classe
	
	Temporizzata temp = new Temporizzata();
	
	// istanza di timer per gestire operazioni temporizzate
	
	Timer timer = new Timer();
	
	// Ridefinizione di jspInit che avvia la temporizzazione della classe interna
	
	public void jspInit() {
		timer.schedule(temp,0,5000);
	}
	
	public void jspDestroy() {
		timer.cancel();
	}
	
	%>
	
	<html>
	<head>
		<title> Temporizzazione  update </title>
	</head>
	<body>
		<p> Valore Aggiunto asd: <%= temp.leggiValore() %></p>
	</body>
	</html>