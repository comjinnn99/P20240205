package co.jhin.prj.notice.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import co.jhin.prj.notice.service.NoticeService;
import co.jhin.prj.notice.service.NoticeVO;

//@CrossOrigin(origins = "*")
@Controller
public class NoticeController {
	@Autowired
	private NoticeService dao;

	@RequestMapping(value = "/noticelist", method = RequestMethod.GET)
	public String noticeList(Model model) {
		//		List<NoticeVO> notices = new ArrayList<>();
		model.addAttribute("notices", dao.noticeSelectList());
		return "notice/noticelist";
	}

	@ResponseBody
	@PostMapping("/ajaxNoticeList")
	public List<NoticeVO> ajaxNoticeList(@RequestParam("key") String key, @RequestParam("val") String val) {
		return dao.noticeSelectList(key, val);
	}

	@GetMapping("/noticewriteform")
	public String noticeWriteForm() {
		return "notice/noticewriteform";
	}

	@PostMapping("/noticewrite")
	public String noticeWrite(MultipartFile mFile, NoticeVO vo, Model model) {
		// file upload 작성
		String uploadPath = "C:/temp"; // 저장공간
		String originalFileName = mFile.getOriginalFilename(); // 원본파일명
		if (!originalFileName.isEmpty()) {
			try {
				UUID uuid = UUID.randomUUID(); // 고유한 아이디 하나를 생성한다
				String saveFileName = uuid.toString() + "_" + originalFileName; // 저장할 이름
				File file = new File(uploadPath, saveFileName); // 저장공간과 파일명을 전달
				vo.setNoticeAttach(originalFileName); // vo 객체 파일명 담고
				vo.setNoticeAttachPath(uploadPath + saveFileName); // vo 객체에 경로명 담고
				mFile.transferTo(file); // 파일을 저장한다
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		int n = dao.noticeInsert(vo);
		String message;
		if (n != 0) {
			message = "데이터 저장 성공";
		} else {
			message = "데이터 저장 실패";
		}
		model.addAttribute("message", message);
		return "notice/noticemessage";
	}
}
