package co.jhin.prj.admin.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.jhin.prj.message.service.MessageService;
import co.jhin.prj.message.service.MessageVO;

@Controller
public class AdminController {
	@Autowired
	private MessageService ms;

	@RequestMapping(value = "/adminpage", method = RequestMethod.GET)
	public String adminPage(Model model, HttpSession session) {
		String author = (String) session.getAttribute("author");
		String viewPage = null;

		if (author != null && author.equals("admin")) {
			model.addAttribute("c", ms.messageCount()); // c 변수는 Hashmap
			model.addAttribute("messages", ms.messageSelectList());
			viewPage = "admin/adminpage";
		} else {
			model.addAttribute("message", "접근할 수 없는 페이지입니다.");
			viewPage = "member/membermessage";
		}

		return viewPage;
	}

	@RequestMapping(value = "/messageselect", method = {RequestMethod.POST, RequestMethod.GET})
	public String messageSelect(Model model, MessageVO vo) {
		model.addAttribute("data", ms.messageSelect(vo));
		return "admin/messageselect";
	}
}
