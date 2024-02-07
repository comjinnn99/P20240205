package co.jhin.prj.board.map;

import java.util.List;

import co.jhin.prj.board.service.BoardReplyVO;
import co.jhin.prj.board.service.BoardVO;

public interface BoardMapper {
	List<BoardVO> boardSelectList();

	List<BoardVO> boardSelectList(BoardVO vo);	// 검색

	BoardVO boardSelect(BoardVO vo); // 게시글 상세보기

	int boardInsert(BoardVO vo);

	int boardReplyInsert(BoardReplyVO vo); // 댓글 등록

	int boardUpdate(BoardVO vo);

	int boardReplyUpdate(BoardReplyVO vo);

	int boardDelete(BoardVO vo);

	int boardReplyDelete(BoardReplyVO vo);
}
