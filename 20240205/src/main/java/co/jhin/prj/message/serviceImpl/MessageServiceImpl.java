package co.jhin.prj.message.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.jhin.prj.message.map.MessageMapper;
import co.jhin.prj.message.service.MessageService;
import co.jhin.prj.message.service.MessageVO;

@Service
@Primary
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageMapper map;

	@Override
	public List<MessageVO> messageSelectList() {
		return map.messageSelectList();
	}

	@Override
	public MessageVO messageSelect(MessageVO vo) {
		return map.messageSelect(vo);
	}

	@Override
	public int messageInsert(MessageVO vo) {
		return map.messageInsert(vo);
	}

	@Override
	public int messageDelete(MessageVO vo) {
		return map.messageDelete(vo);
	}

	@Override
	public HashMap<String, Object> messageCount() {
		return map.messageCount();
	}
}
