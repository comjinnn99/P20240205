package co.jhin.prj.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.jhin.prj.board.service.BoardService;
import co.jhin.prj.board.service.BoardVO;
import co.jhin.prj.common.PageVO;

@Controller

public class BoardController {
	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/boardlist", method = { RequestMethod.GET, RequestMethod.POST })
	public String boardList(Model model, PageVO vo) {
		int currentPageNo = vo.getCurrentPageNo(); // 페이지 초기화
		if (currentPageNo != 0) {
			currentPageNo = currentPageNo - 1;
		} else {
			currentPageNo = 0;
		}
		System.out.println(currentPageNo);
		int recordCountPerPage = 5; // 한 페이지당 보여줄 게시글 개수
		int pageSize = 3; // [pre] 1 2 3 [next]
		vo = boardService.selectCount(); // 전체 게시글 건수를 sql에서 가져옴
		int totalRecordCount = vo.getTotalRecordCount(); // 전체 게시물 건수
		int totalPageCount = ((totalRecordCount - 1) / recordCountPerPage) + 1; // 총 페이지 수
		int firstPage = ((currentPageNo) / pageSize) * pageSize + 1; // 페이지 리스트 시작 페이지
		int lastPage = firstPage + pageSize - 1; // 페이지 리스트 마지막 페이지 번호

		if (lastPage > totalPageCount) {
			lastPage = totalPageCount;
		}

		//		vo.setCurrentPageNo(currentPageNo);
		vo.setFirstPageNoOnPageList(firstPage);
		vo.setLastPageNoOnPageList(lastPage);

		model.addAttribute("p", vo);
		model.addAttribute("boards", boardService.boardSelectList(currentPageNo * recordCountPerPage));
		return "board/boardlist";
	}

	@PostMapping("/boardselect")
	public String boardSelect(Model model, BoardVO vo) {
		model.addAttribute("board", boardService.boardSelect(vo));
		return "board/boardselect";
	}

}
