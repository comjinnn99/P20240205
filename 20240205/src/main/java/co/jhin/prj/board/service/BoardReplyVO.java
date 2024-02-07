package co.jhin.prj.board.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardReplyVO {
	private int boardId;
	private int boardReplyId;
	private String boardReplyWriter;
	private String boardReplySubject;
}
