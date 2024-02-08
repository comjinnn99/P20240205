package co.jhin.prj.board.service;

import java.util.List;

import co.jhin.prj.common.PageVO;

public interface BoardService {
	List<BoardVO> boardSelectList(int offset);

	List<BoardVO> boardSelectList(BoardVO vo);	// 검색

	BoardVO boardSelect(BoardVO vo); // 게시글 상세보기

	int boardInsert(BoardVO vo);

	int boardReplyInsert(BoardReplyVO vo); // 댓글 등록

	int boardUpdate(BoardVO vo);

	int boardReplyUpdate(BoardReplyVO vo);

	int boardDelete(BoardVO vo);

	int boardReplyDelete(BoardReplyVO vo);
	
	PageVO selectCount();
}
