package com.pcwk.ehr.VO;

public class AdminVO {
	private String memberGradeName; // 회원 등급 이름
	private String memberGrade; // 회원 등급
	private int subscriptionPrice; // 구독 가격
	
	public AdminVO() {}

	public AdminVO(String memberGradeName, String memberGrade, int subscriptionPrice) {
		super();
		this.memberGradeName = memberGradeName;
		this.memberGrade = memberGrade;
		this.subscriptionPrice = subscriptionPrice;
	}

	public String getMemberGradeName() {
		return memberGradeName;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public int getSubscriptionPrice() {
		return subscriptionPrice;
	}

	public void setMemberGradeName(String memberGradeName) {
		this.memberGradeName = memberGradeName;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public void setSubscriptionPrice(int subscriptionPrice) {
		this.subscriptionPrice = subscriptionPrice;
	}

	@Override
	public String toString() {
		return "AdminVO [memberGradeName=" + memberGradeName + ", memberGrade=" + memberGrade + ", subscriptionPrice="
				+ subscriptionPrice + "]";
	}
}
