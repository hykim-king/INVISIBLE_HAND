package com.pcwk.ehr.naver.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PcwkLoger;

@Service("naverSearchServiceImpl")
public class NaverSearchServiceImpl implements NaverSearchService, PcwkLoger {
	//URL 정보
	//blog:  https://openapi.naver.com/v1/search/blog.json
	//news:  https://openapi.naver.com/v1/search/news.json
	//books: https://openapi.naver.com/v1/search/book.json
	//movie: https://openapi.naver.com/v1/search/movie.json
	//shop:  https://openapi.naver.com/v1/search/shop.json
	//cafearticle:  https://openapi.naver.com/v1/search/cafearticle.json
	
	//->UI select box: blog=10,news=20,books=30,movie=40,shop=50,cafearticle=60
    final String BASE_URL = "https://openapi.naver.com/v1/search/";
    final String suffix   = ".json";
	
	
	@Override
	public String doNaverSearch(DTO inVO) throws IOException {

		String clientId = "TBKX6UoMl9UJgW911W9V";
		String clientSecret = "G2UbvrRpxa";
        //movie는 서비스 종료
		
		String blog           ="blog"+suffix;       
		String news           ="news"+suffix;       
		String books          ="book"+suffix;      
		String kin            ="kin"+suffix;      
		String shop           ="shop"+suffix;       
		String cafearticle    ="cafearticle"+suffix;
		
		String text = "";
		String apiURL = "";//https://openapi.naver.com/v1/search/blog.json+blog+queryString
		
		try {
			text = URLEncoder.encode(inVO.getSearchWord(), "UTF-8");
			String sort  = "date";//default date, 정확도:sim
			
			String queryString = "?query="+text+"&display="+inVO.getPageSize()+"&start="+inVO.getPageNo()
			+"&sort="+sort;
			
			
			switch(inVO.getSearchDiv()) {
			case "10":
				apiURL = BASE_URL+blog+queryString; //https://openapi.naver.com/v1/search/blog.json?queryString
				break;
			case "20":
				apiURL = BASE_URL+news+queryString;
				break;
			case "30":
				apiURL = BASE_URL+books+queryString;
				break;		
			case "40":
				apiURL = BASE_URL+kin+queryString;
				break;	
			case "50":
				apiURL = BASE_URL+shop+queryString;
				break;	
			case "60":
				apiURL = BASE_URL+cafearticle+queryString;
				break;					
				
			}
			LOG.debug("apiURL:"+apiURL);
			LOG.debug("inVO param:"+inVO);
			
			
		} catch (UnsupportedEncodingException e) {
			LOG.debug("------------------------");
			LOG.debug("-UnsupportedEncodingException---" + e.getMessage());
			LOG.debug("------------------------");
			e.printStackTrace();
		}


		Map<String, String> requestHeaders = new HashedMap();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);

		String responseBody = get(apiURL, requestHeaders);

		LOG.debug("------------------------");
		LOG.debug("responseBody-" + responseBody);
		LOG.debug("------------------------");
		
		return responseBody;
	}

	private static HttpURLConnection connect(String apiURL) {

		try {
			URL url = new URL(apiURL);
			HttpURLConnection urlCon = (HttpURLConnection) url.openConnection();
			LOG.debug("------------------------");
			LOG.debug("urlCon-" + urlCon);
			LOG.debug("------------------------");
			return urlCon;
		} catch (MalformedURLException e) {
			LOG.debug("------------------------");
			LOG.debug("-MalformedURLException---" + e.getMessage());
			LOG.debug("------------------------");
			e.printStackTrace();
		} catch (IOException e) {
			LOG.debug("------------------------");
			LOG.debug("-IOException---" + e.getMessage());
			LOG.debug("------------------------");
			e.printStackTrace();
		}
		return null;
	}

	private static String get(String apiURL, Map<String, String> requestHeaders) {

		HttpURLConnection httpURLConnection = connect(apiURL);
		StringBuilder responseBody = new StringBuilder();
		try {
			httpURLConnection.setRequestMethod("GET");

			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				LOG.debug(header.getKey() + "," + header.getValue());
				httpURLConnection.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = httpURLConnection.getResponseCode();
			if (responseCode == httpURLConnection.HTTP_OK) {// 200번 상태 코드
				LOG.debug("-접속 성공---" + httpURLConnection.HTTP_OK);
				InputStreamReader streamReader = new InputStreamReader(httpURLConnection.getInputStream());
				try (BufferedReader lineReader = new BufferedReader(streamReader)) {

					String line = "";// 한 줄 데이터 저장용
					while ((line = lineReader.readLine()) != null) {
						responseBody.append(line);
					}

					LOG.debug("-responseBody---" + responseBody.toString());
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				LOG.debug("-접속 실패---");
				responseBody.append("접속 실패:"+responseCode);
			}

		} catch (ProtocolException e) {
			LOG.debug("-ProtocolException---" + e.getMessage());
		} // get방식 접근
		catch (IOException e) {
			LOG.debug("-IOException---" + e.getMessage());
			e.printStackTrace();
		} finally {
			httpURLConnection.disconnect();
		}

		return responseBody.toString();
	}

}
