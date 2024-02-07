package co.jhin.prj.board.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO extends BoardReplyVO {
//	private int boardId;
	private String memberId;
	private String memberName;
	private LocalDate boardDate;
	private String boardTitle;
	private String boardSubject;
}
