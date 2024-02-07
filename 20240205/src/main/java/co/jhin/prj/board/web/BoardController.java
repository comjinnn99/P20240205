package co.jhin.prj.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import co.jhin.prj.board.service.BoardService;
import co.jhin.prj.board.service.BoardVO;

@Controller

public class BoardController {
	@Autowired
	private BoardService boardService;

	@GetMapping("/boardlist")
	public String boardlist(Model model) {
		model.addAttribute("boards", boardService.boardSelectList());
		
		return "board/boardlist";
	}
	
	@PostMapping("/boardselect")
	public String boardselect(Model model, BoardVO vo) {
		model.addAttribute("board", boardService.boardSelect(vo));
		return "board/boardselect";
	}
}
