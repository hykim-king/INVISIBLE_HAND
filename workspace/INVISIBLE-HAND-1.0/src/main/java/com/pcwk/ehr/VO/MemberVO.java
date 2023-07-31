package com.pcwk.ehr.VO;



public class MemberVO  {
	private String memberId; // id
	private String password; // 비번
	private int memberGrade; // 회원 등급
	private String memberName; // 회원 이름
	private String email; // 이메일
	private String nickName; // 닉네임
	private String JoinDate; // 가입 일시
	private String updateDate; // 수정 일시
	private String isverified; // 인증 여부

	private int idCheck; //아이디 중복확인
	private int nickNameCheck; //아이디 중복확인
	private int emailCheck; //아이디 중복확인

	
	public MemberVO() {
	}


	public MemberVO(String memberId, String password, int memberGrade, String memberName, String email, String nickName,
			String joinDate, String updateDate, String isverified, int idCheck, int nickNameCheck, int emailCheck) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.memberGrade = memberGrade;
		this.memberName = memberName;
		this.email = email;
		this.nickName = nickName;
		JoinDate = joinDate;
		this.updateDate = updateDate;
		this.isverified = isverified;
		this.idCheck = idCheck;
		this.nickNameCheck = nickNameCheck;
		this.emailCheck = emailCheck;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getMemberGrade() {
		return memberGrade;
	}


	public void setMemberGrade(int memberGrade) {
		this.memberGrade = memberGrade;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getJoinDate() {
		return JoinDate;
	}


	public void setJoinDate(String joinDate) {
		JoinDate = joinDate;
	}


	public String getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}


	public String getIsverified() {
		return isverified;
	}


	public void setIsverified(String isverified) {
		this.isverified = isverified;
	}


	public int getIdCheck() {
		return idCheck;
	}


	public void setIdCheck(int idCheck) {
		this.idCheck = idCheck;
	}


	public int getNickNameCheck() {
		return nickNameCheck;
	}


	public void setNickNameCheck(int nickNameCheck) {
		this.nickNameCheck = nickNameCheck;
	}


	public int getEmailCheck() {
		return emailCheck;
	}


	public void setEmailCheck(int emailCheck) {
		this.emailCheck = emailCheck;
	}


	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password + ", memberGrade=" + memberGrade
				+ ", memberName=" + memberName + ", email=" + email + ", nickName=" + nickName + ", JoinDate="
				+ JoinDate + ", updateDate=" + updateDate + ", isverified=" + isverified + ", idCheck=" + idCheck
				+ ", nickNameCheck=" + nickNameCheck + ", emailCheck=" + emailCheck + "]";
	}

	

	
}