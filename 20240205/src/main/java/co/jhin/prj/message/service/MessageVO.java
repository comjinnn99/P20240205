package co.jhin.prj.message.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MessageVO {
	private int messageId;
	private String messageWriterName;
	private String messageWriterEmail;
	private String messageTitle;
	private String messageSubject;
	private String messageYn;
}
