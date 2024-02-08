package co.jhin.prj.message.map;

import java.util.List;

import co.jhin.prj.message.service.MessageVO;

public interface MessageMapper {
	List<MessageVO> messageSelectList();

	MessageVO messageSelect(MessageVO vo);

	int messageInsert(MessageVO vo);

	int messageDelete(MessageVO vo);
}
