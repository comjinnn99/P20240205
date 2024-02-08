package co.jhin.prj.message.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.jhin.prj.message.service.MessageService;
import co.jhin.prj.message.service.MessageVO;

@Controller
public class MessageController {
	@Autowired
	private MessageService ms;

	@ResponseBody
	@RequestMapping(value = "/ajaxSendMessage")
	public String ajaxSendMessage(MessageVO vo) {
		int n = ms.messageInsert(vo);
		String result = "Yes";
		if (n == 0) {
			result = "No";
		}
		return result;
	}
}
