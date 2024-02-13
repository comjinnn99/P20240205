package co.jhin.prj.admin.web;

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
	public String adminPage(Model model) {
		// 필요한 작업을 여기서 기록
		model.addAttribute("messages", ms.messageSelectList());
		return "admin/adminpage";
	}

	@RequestMapping(value = "/messageselect", method = RequestMethod.POST)
	public String messageSelect(Model model, MessageVO vo) {
		model.addAttribute("data", ms.messageSelect(vo));
		return "admin/messageselect";
	}
}
