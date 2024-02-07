package co.jhin.prj.admin.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/adminpage", method = RequestMethod.GET)
	public String adminPage(Model model) {
		return "admin/adminpage";
	}
}
