package co.jhin.prj.teahouse.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeaHouseController {

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "teahouse/about";
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product() {
		return "teahouse/product";
	}
	
	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String store() {
		return "teahouse/store";
	}
	
	@RequestMapping(value = "/feature", method = RequestMethod.GET)
	public String feature() {
		return "teahouse/feature";
	}
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog() {
		return "teahouse/blog";
	}
	
	@RequestMapping(value = "/testimonial", method = RequestMethod.GET)
	public String testimonial() {
		return "teahouse/testimonial";
	}
	
	@RequestMapping(value = "/page404", method = RequestMethod.GET)
	public String page404() {
		return "teahouse/page404";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "teahouse/contact";
	}
}
