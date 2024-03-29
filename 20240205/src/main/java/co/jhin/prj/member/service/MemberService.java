package co.jhin.prj.member.service;

import java.util.List;

public interface MemberService {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo); // 상세조회, 중복체크, 로그인

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);
}
