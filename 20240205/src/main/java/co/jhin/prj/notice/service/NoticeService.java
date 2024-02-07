package co.jhin.prj.notice.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface NoticeService {
	List<NoticeVO> noticeSelectList();

	List<NoticeVO> noticeSelectList(@Param("key") String key, @Param("val") String val);

	NoticeVO noticeSelect(NoticeVO vo);

	int noticeInsert(NoticeVO vo);

	int noticeUpdate(NoticeVO vo);

	int noticeDelete(NoticeVO vo);

	void noticeHitUpdate(int id);

}
