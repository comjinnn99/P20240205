package co.jhin.prj.message.service;

import java.util.List;

public interface MessageService {
	List<MessageVO> messageSelectList();

	MessageVO messageSelect(MessageVO vo);

	int messageInsert(MessageVO vo);

	int messageDelete(MessageVO vo);
}
