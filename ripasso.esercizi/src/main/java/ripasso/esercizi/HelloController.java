package ripasso.esercizi;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/")
	public String index() {
		return "Greetings from Spring Boot!";
	}
	
	@GetMapping("/Esempio1")
	public String esempio1() {
		return "Esempio1";
	}
	
	@GetMapping("/GetSession")
	public String getSession() {
		return "GetSession";
	}
	
	@GetMapping("/Temp")
	public String getTemporizzazione() {
		return "EsempioTimer";
	}
	
	@GetMapping("/Es5")
	public String getEsempio5() {
		return "Esempio5";
	}
}
