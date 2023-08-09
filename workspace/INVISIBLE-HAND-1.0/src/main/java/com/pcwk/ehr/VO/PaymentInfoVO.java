package com.pcwk.ehr.VO;

public class PaymentInfoVO {
	private int paymentinfoseq; // 결제 시퀀스
	private String merchantUid; // 주문번호
	private String name; // 구매할 상품명
	private int amount; // 구매할 가격
	private String buyerEmail; // 소비자 이메일
	private String buyerName; // 소비자 이름
	private String buyerTel; // 소비자 전화번호
	
	// 구독 여부
	private boolean paymentSuccess;
	
	public PaymentInfoVO() {}

	public PaymentInfoVO(int paymentinfoseq, String merchantUid, String name, int amount, String buyerEmail,
			String buyerName, String buyerTel) {
		super();
		this.paymentinfoseq = paymentinfoseq;
		this.merchantUid = merchantUid;
		this.name = name;
		this.amount = amount;
		this.buyerEmail = buyerEmail;
		this.buyerName = buyerName;
		this.buyerTel = buyerTel;
	}

	public int getPaymentinfoseq() {
		return paymentinfoseq;
	}

	public void setPaymentinfoseq(int paymentinfoseq) {
		this.paymentinfoseq = paymentinfoseq;
	}

	public String getmerchantUid() {
		return merchantUid;
	}

	public void setmerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getbuyerEmail() {
		return buyerEmail;
	}

	public void setbuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}

	public String getbuyerName() {
		return buyerName;
	}

	public void setbuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getbuyerTel() {
		return buyerTel;
	}

	public void setbuyerTel(String buyerTel) {
		this.buyerTel = buyerTel;
	}

	public boolean isPaymentSuccess() {
		return paymentSuccess;
	}

	public void setPaymentSuccess(boolean paymentSuccess) {
		this.paymentSuccess = paymentSuccess;
	}

	@Override
	public String toString() {
		return "PaymentInfoVO [paymentinfoseq=" + paymentinfoseq + ", merchantUid=" + merchantUid + ", name=" + name
				+ ", amount=" + amount + ", buyerEmail=" + buyerEmail + ", buyerName=" + buyerName + ", buyerTel="
				+ buyerTel + ", paymentSuccess=" + paymentSuccess + "]";
	}

}
