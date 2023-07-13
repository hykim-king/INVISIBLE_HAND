package com.pcwk.ehr.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView {

	final Logger LOG = LogManager.getLogger(getClass());
	
	public DownloadView() {
		//contentType
		setContentType("application/download;charset=utf-8");
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│DownloadView()                │");
		LOG.debug("└──────────────────────────────┘");			
				
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│renderMergedOutputModel()     │");
		LOG.debug("└──────────────────────────────┘");	

		//Controller에서 전달 받음: 원본파일명, 다운로드 파일
		String originalFileName = (String) model.get("originalFileName");
		File   downloadFile     = (File) model.get("downloadFile");
		
		LOG.debug("│originalFileName:     │"+originalFileName);
		LOG.debug("│downloadFile:         │"+downloadFile);
		
		//파일명 원본 파일로 변경
		setDownloadFileName(originalFileName,request,response);
		
		//파일다운로드
		downloadFile(downloadFile,request,response);
	}
	/**
	 * 원본 파일명으로 파일 다운로드 
	 * @param orgFileNm
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	public void setDownloadFileName(String orgFileNm, HttpServletRequest request
			,HttpServletResponse response) throws Exception{	
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│setDownloadFileName()         │");
		LOG.debug("└──────────────────────────────┘");		
		
		LOG.debug("│orgFileNm         │"+orgFileNm);
		//URLEncoder.encode는 URL에서 사용되는 특수 문자를 인코딩하는 Java의 메서드입니다. 
		//URL에는 공백, 특수 문자, 한글 등이 포함될 수 있는데, 이러한 문자들은 URL 형식에 맞게 인코딩되어야 합니다.
		String encodedOrgFileNm = URLEncoder.encode(orgFileNm, "utf-8");
		LOG.debug("│encodedOrgFileNm         │"+encodedOrgFileNm);
		
		//header에 원본 파일명 전달
		response.setHeader("Content-Disposition",  "attachement; fileName=\""+encodedOrgFileNm+"\";");
		response.setHeader("Content-Transfer-Encoding","binary");
	}

	/**
	 * 스트림을 이용해서 파일 다운로드
	 * @param downloadFile
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	public void downloadFile(File downloadFile,  HttpServletRequest request
			,HttpServletResponse response) throws Exception{	
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│downloadFile()                │");
		LOG.debug("└──────────────────────────────┘");			
		
		FileInputStream  in=new FileInputStream(downloadFile);
		OutputStream     out= response.getOutputStream();
		
		try {
			int  byteFileSize = FileCopyUtils.copy(in, out);
			LOG.debug("│byteFileSize()                │"+byteFileSize);
		
		}catch(IOException e) {
			throw e;
		}finally {
			if(null !=in) {
				try {
					in.close();
				}catch(IOException e) {
					
				}
				
			}
			
			if(null !=out) {
				try {
					out.close();
				}catch(IOException e) {
					
				}
			}
			
		}//finally--------------------------------------------------------------

		
	}
	
		
}
