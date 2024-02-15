package co.jhin.prj.teahouse.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.jhin.prj.product.service.ProductService;

@Controller
public class TeaHouseController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "teahouse/about";
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(Model model) {
		model.addAttribute("products", productService.productSelectList("P"));
		
		return "teahouse/product";
	}

	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String store(Model model) {
		model.addAttribute("products", productService.productSelectList("S"));
		
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
