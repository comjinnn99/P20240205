package co.jhin.prj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home/home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2(Model model) {
		return "home/home";
	}

}
