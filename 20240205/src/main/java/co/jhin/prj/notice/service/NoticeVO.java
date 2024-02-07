package co.jhin.prj.notice.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	private int noticeId;
	private String noticeWriterId;
	private String noticeWriterName;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date noticeDate;	// Date, DateUtil
	
	private String noticeTitle;
	private String noticeSubject;
	private int noticeHit;
	private String noticeAttach;
	private String noticeAttachPath;
}
