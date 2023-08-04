package com.pcwk.ehr.VO;

import oracle.sql.DATE;


public class PaymentInfoVO {
	private int paymentinfoseq; // 결제 정보 SEQ
	private String paymentmethod; // 결제 수단 정보
	private int paymentamount; // 결제 금액
	private String paymentstatus; // 결제 상태
	private DATE paymentdate; // 결제 일시
	private String memberid; // 회원 ID
	
	public PaymentInfoVO() {}

	public PaymentInfoVO(int paymentinfoseq, String paymentmethod, int paymentamount, String paymentstatus,
			DATE paymentdate, String memberid) {
		super();
		this.paymentinfoseq = paymentinfoseq;
		this.paymentmethod = paymentmethod;
		this.paymentamount = paymentamount;
		this.paymentstatus = paymentstatus;
		this.paymentdate = paymentdate;
		this.memberid = memberid;
	}

	public int getPaymentinfoseq() {
		return paymentinfoseq;
	}

	public void setPaymentinfoseq(int paymentinfoseq) {
		this.paymentinfoseq = paymentinfoseq;
	}

	public String getPaymentmethod() {
		return paymentmethod;
	}

	public void setPaymentmethod(String paymentmethod) {
		this.paymentmethod = paymentmethod;
	}

	public int getPaymentamount() {
		return paymentamount;
	}

	public void setPaymentamount(int paymentamount) {
		this.paymentamount = paymentamount;
	}

	public String getPaymentstatus() {
		return paymentstatus;
	}

	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}

	public DATE getPaymentdate() {
		return paymentdate;
	}

	public void setPaymentdate(DATE paymentdate) {
		this.paymentdate = paymentdate;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	@Override
	public String toString() {
		return "PaymentInfoVO [paymentinfoseq=" + paymentinfoseq + ", paymentmethod=" + paymentmethod
				+ ", paymentamount=" + paymentamount + ", paymentstatus=" + paymentstatus + ", paymentdate="
				+ paymentdate + ", memberid=" + memberid + "]";
	}
}
