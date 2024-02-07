package co.jhin.prj.board.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.jhin.prj.board.map.BoardMapper;
import co.jhin.prj.board.service.BoardReplyVO;
import co.jhin.prj.board.service.BoardService;
import co.jhin.prj.board.service.BoardVO;

@Service
@Primary
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper map;	// dao

	@Override
	public List<BoardVO> boardSelectList() {
		return map.boardSelectList();
	}

	@Override
	public List<BoardVO> boardSelectList(BoardVO vo) {
		return map.boardSelectList(vo);
	}

	@Override
	public BoardVO boardSelect(BoardVO vo) {
		return map.boardSelect(vo);
	}

	@Override
	public int boardInsert(BoardVO vo) {
		return map.boardInsert(vo);
	}

	@Override
	public int boardReplyInsert(BoardReplyVO vo) {
		return map.boardReplyInsert(vo);
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		return map.boardUpdate(vo);
	}

	@Override
	public int boardReplyUpdate(BoardReplyVO vo) {
		return map.boardReplyUpdate(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		return map.boardDelete(vo);
	}

	@Override
	public int boardReplyDelete(BoardReplyVO vo) {
		return map.boardReplyDelete(vo);
	}

}
