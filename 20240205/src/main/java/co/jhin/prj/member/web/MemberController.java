package co.jhin.prj.member.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.jhin.prj.member.service.MemberService;
import co.jhin.prj.member.service.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String memberLogin() {
		return "notiles/member/memberloginform";
	}
	
	@RequestMapping(value = "/loginresult", method = RequestMethod.POST)
	public String memberLoginResult(Model model, MemberVO vo, HttpSession session) {
		String viewPage = null;
		vo = ms.memberSelect(vo);
		if (vo != null) {
			session.setAttribute("userId", vo.getMemberId());
			session.setAttribute("userName", vo.getMemberName());
			session.setAttribute("author", vo.getMemberAuthor());
			viewPage = "redirect:home";
		} else {
			model.addAttribute("message", "아이디 또는 패스워드가 틀립니다.");
			viewPage = "member/membermessage";
		}
		
		return viewPage;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String memberLogout(HttpSession session, Model model) {
		session.invalidate();	// 세션 전체 지움
		model.addAttribute("message", "로그아웃 되었습니다.");
		return "member/membermessage";
	}
}
