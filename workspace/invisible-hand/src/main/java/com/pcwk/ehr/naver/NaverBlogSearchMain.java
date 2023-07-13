package com.pcwk.ehr.naver;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.pcwk.ehr.cmn.PcwkLoger;

public class NaverBlogSearchMain implements PcwkLoger{

	public static void main(String[] args) {
		//Client ID : 
		//Client Secret : 		

		String clientId     = "TBKX6UoMl9UJgW911W9V";
		String clientSecret = "G2UbvrRpxa";
		
		
		String text = "";
		
		try {
			text = URLEncoder.encode("홍대 맛집", "UTF-8");
		} catch (UnsupportedEncodingException e) {
			LOG.debug("------------------------");
			LOG.debug("-UnsupportedEncodingException---"+e.getMessage());
			LOG.debug("------------------------");
			e.printStackTrace();
		}
		
		String apiURL = "https://openapi.naver.com/v1/search/blog.json?query="+text;
		//String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+text;
		
		Map<String, String> requestHeaders =new HashedMap();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		
		String responseBody = get(apiURL,requestHeaders);
		
		LOG.debug("------------------------");
		LOG.debug("responseBody-"+responseBody);
		LOG.debug("------------------------");
	}
	
	private static HttpURLConnection connect(String apiURL) {
		
		try {
			URL url =new URL(apiURL);
			HttpURLConnection urlCon = (HttpURLConnection) url.openConnection();
			LOG.debug("------------------------");
			LOG.debug("urlCon-"+urlCon);
			LOG.debug("------------------------");			
			return urlCon;
		} catch (MalformedURLException e) {
			LOG.debug("------------------------");
			LOG.debug("-MalformedURLException---"+e.getMessage());
			LOG.debug("------------------------");			
			e.printStackTrace();
		} catch (IOException e) {
			LOG.debug("------------------------");
			LOG.debug("-IOException---"+e.getMessage());
			LOG.debug("------------------------");				
			e.printStackTrace();
		}
		return null;
	}
	
	private static String get(String apiURL,Map<String, String> requestHeaders) {
		
		HttpURLConnection httpURLConnection = connect(apiURL);
		
		try {
			httpURLConnection.setRequestMethod("GET");
			
			for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
				LOG.debug(header.getKey()+","+header.getValue());
				//request설정
				httpURLConnection.setRequestProperty(header.getKey(), header.getValue());
			}
			
			int responseCode = httpURLConnection.getResponseCode();
			LOG.debug("------------------------");
			LOG.debug("-responseCode---"+responseCode);
			LOG.debug("------------------------");	
			
			if(responseCode == httpURLConnection.HTTP_OK) {//200번 상태 코드
				LOG.debug("-접속 성공---"+httpURLConnection.HTTP_OK);
				InputStreamReader   streamReader = new InputStreamReader(httpURLConnection.getInputStream());
				
				//try with resource: finally절 불필요
				try(BufferedReader  lineReader  =new BufferedReader(streamReader)){
					
					StringBuilder   responseBody=new StringBuilder();
					
					String line = "";//한 줄 데이터 저장용
					while( (line=lineReader.readLine()) !=null ) {
						responseBody.append(line);
					}
					
					LOG.debug("-responseBody---"+responseBody.toString());
					
				}catch(IOException e) {
					LOG.debug("------------------------");
					LOG.debug("-IOException---"+e.getMessage());
					LOG.debug("------------------------");				
					e.printStackTrace();					
				}
				
				
				
				
				
			}else {
				LOG.debug("-접속 실패---");
			}
			
			LOG.debug("------------------------");
			LOG.debug("-responseCode---"+responseCode);
			LOG.debug("------------------------");				
			
		} catch (ProtocolException e) {
			LOG.debug("------------------------");
			LOG.debug("-ProtocolException---"+e.getMessage());
			LOG.debug("------------------------");	
		}//get방식 접근
		catch (IOException e) {
			LOG.debug("------------------------");
			LOG.debug("-IOException---"+e.getMessage());
			LOG.debug("------------------------");	
			e.printStackTrace();
		}finally {
			httpURLConnection.disconnect();
		}
		
		return "";
	}
	
	
	
	
	
	
	
	
	

}
