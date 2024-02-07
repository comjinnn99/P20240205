package co.jhin.prj.member.service;

import java.time.LocalDate;

import lombok.Data;

@Data	// java 추천
public class MemberVO {
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberAddress;
	private String memberTel;
	private String memberAuthor;
	private LocalDate memberBirthday;
}
