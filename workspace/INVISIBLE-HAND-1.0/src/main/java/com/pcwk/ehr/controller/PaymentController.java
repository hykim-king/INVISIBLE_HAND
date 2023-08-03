package com.pcwk.ehr.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "payment") // WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {

	final Logger LOG = LogManager.getLogger(getClass());

	@RequestMapping(value = "/kakaopay.do")
	@ResponseBody
	public String kakaoPay() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   kakaoPay()          │");
		LOG.debug("└───────────────────────┘");

		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready"); // url주소
			HttpURLConnection serverConn = (HttpURLConnection) address.openConnection(); // 서버연결
			serverConn.setRequestMethod("POST");
			serverConn.setRequestProperty("Authorization", "KakaoAK 640f39175487971fd52e63a197ce1cc8");
			serverConn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			serverConn.setDoOutput(true);

			// 받아올 데이터
			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=engitem&quantity=1&total_amount=100&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/ehr/resources/success.html&fail_url=http://localhost:8080/ehr/resources/fail.html";
			OutputStream ops = serverConn.getOutputStream(); // 보낼 객체
			DataOutputStream dops = new DataOutputStream(ops); // 데이터 보낼 객체
			dops.writeBytes(parameter);
			dops.close();

			int result = serverConn.getResponseCode();

			InputStream ips; // 데이터 받을 객체
			if (result == 200) { // 성공
				ips = serverConn.getInputStream();
			} else {
				ips = serverConn.getErrorStream();
			}
			InputStreamReader ipsr = new InputStreamReader(ips); // 받은 데이터 읽는 객체
			BufferedReader bufferread = new BufferedReader(ipsr); // 형변환
			return bufferread.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "kakaopay/kakaopay";
	}

	@RequestMapping(value = "/payment.do")
	public String payment() {
		LOG.debug("┌───────────────────────┐");
		LOG.debug("│   payment()           │");
		LOG.debug("└───────────────────────┘");

		return "payment/payment";
	}

}
