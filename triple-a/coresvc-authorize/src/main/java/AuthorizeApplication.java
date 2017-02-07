import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class AuthorizeApplication {

	public static void main(String[] args) {
		SpringApplication.run(AuthorizeApplication.class, args);
	}
	
	@RequestMapping(value = "/authorize")
	public String authorize(){
		return "authorize call\n";
	}
}