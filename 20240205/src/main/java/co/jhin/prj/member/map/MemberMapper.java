package co.jhin.prj.member.map;

import java.util.List;

import co.jhin.prj.member.service.MemberVO;

public interface MemberMapper {
	List<MemberVO> memberSelectList();

	MemberVO memberSelect(MemberVO vo); // 상세조회, 중복체크, 로그인

	int memberInsert(MemberVO vo);

	int memberUpdate(MemberVO vo);

	int memberDelete(MemberVO vo);
}
