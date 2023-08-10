package com.pcwk.ehr.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.VO.PaymentInfoVO;
import com.pcwk.ehr.cmn.MessageVO;
import com.pcwk.ehr.service.MemberService;
import com.pcwk.ehr.service.PaymentInfoService;

@Controller
@RequestMapping(value = "payment") // WEB_INF아래 폴더이름을 적는곳.
public class PaymentController {

	final Logger lg = LogManager.getLogger(getClass());

	@Autowired
	PaymentInfoService payService;

	@Autowired
	MemberService memberService;

//	@RequestMapping(value = "/kakaopay.do")
//	@ResponseBody
//	public String kakaoPay() {
//		lg.debug("┌───────────────────────┐");
//		lg.debug("│   kakaoPay()          │");
//		lg.debug("└───────────────────────┘");
//		
//		try {
//			URL address = new URL("https://kapi.kakao.com/v1/payment/ready"); // url주소
//			HttpURLConnection serverConn = (HttpURLConnection) address.openConnection(); // 서버연결
//			serverConn.setRequestMethod("POST");
//			serverConn.setRequestProperty("Authorization", "KakaoAK 640f39175487971fd52e63a197ce1cc8");
//			serverConn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			serverConn.setDoOutput(true);
//			
//			// 받아올 데이터
//			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=engitem&quantity=1&total_amount=100&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8080/ehr/resources/success.html&fail_url=http://localhost:8080/ehr/resources/fail.html";
//			OutputStream ops = serverConn.getOutputStream(); // 보낼 객체
//			DataOutputStream dops = new DataOutputStream(ops); // 데이터 보낼 객체
//			dops.writeBytes(parameter);
//			dops.close();
//			
//			int result = serverConn.getResponseCode();
//			
//			InputStream ips; // 데이터 받을 객체
//			if (result == 200) { // 성공
//				ips = serverConn.getInputStream();
//			} else {
//				ips = serverConn.getErrorStream();
//			}
//			InputStreamReader ipsr = new InputStreamReader(ips); // 받은 데이터 읽는 객체
//			BufferedReader bufferread = new BufferedReader(ipsr); // 형변환
//			return bufferread.readLine();
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//		return "kakaopay/kakaopay";
//	}

	// 구독 정보
	@RequestMapping("/payment_detail.do")
	public String paymentDetail(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String buyerEmail = (String)session.getAttribute("email"); // session으로 email정보 넘기기
		
		// PaymentInfoVO 객체 생성
		PaymentInfoVO paymentInfo = new PaymentInfoVO();
		paymentInfo = payService.getPaymentInfoByEmail(buyerEmail); // 객체에 정보 담기
		
		model.addAttribute("paymentInfo", paymentInfo);
		
	    return "payment/payment_detail";
	}

	@RequestMapping(value = "/payment_info.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String paymentInfoAddOrUpdate(PaymentInfoVO inVO, HttpSession session) throws SQLException, ClassNotFoundException {
	    String email = (String) session.getAttribute("email");

	    int rowCount = payService.checkPaymentInfo(email);

	    if (rowCount == 0) { // 결제 정보가 없으면 추가
	        int result = payService.addInfo(inVO);
	        if (result == 1) {
	            String msg = inVO.getBuyerEmail() + "가 구독되었습니다.";
	            MessageVO messageVO = new MessageVO(Integer.toString(result), msg);
	            return new Gson().toJson(messageVO);
	        } else {
	            String msg = inVO.getBuyerEmail() + "가 구독 실패되었습니다.";
	            MessageVO messageVO = new MessageVO(Integer.toString(result), msg);
	            return new Gson().toJson(messageVO);
	        }
	    } else { // 있으면 업데이트
	        int result = payService.updatePaymentInfo(inVO);
	        if (result == 1) {
	            String msg = inVO.getBuyerEmail() + "구독 정보가 업데이트되었습니다.";
	            MessageVO messageVO = new MessageVO(Integer.toString(result), msg);
	            return new Gson().toJson(messageVO);
	        } else {
	            String msg = inVO.getBuyerEmail() + "가 구독 정보 업데이트가 실패되었습니다.";
	            MessageVO messageVO = new MessageVO(Integer.toString(result), msg);
	            return new Gson().toJson(messageVO);
	        }
	    }
	}

	@RequestMapping(value = "/payment_view.do")
	public String payment() {
		lg.debug("┌───────────────────────┐");
		lg.debug("│   payment()           │");
		lg.debug("└───────────────────────┘");

		return "payment/payment_view";
	}

}