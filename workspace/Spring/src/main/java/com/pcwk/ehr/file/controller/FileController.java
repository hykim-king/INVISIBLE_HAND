package com.pcwk.ehr.file.controller;



import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.file.domain.FileVO;

@Controller
@RequestMapping("file")
public class FileController {

	final Logger LOG = LogManager.getLogger(getClass());
	final String FILE_PATH= "C:\\upload";
	final String IMG_PATH = "C:\\JSPA_0309\\03_WEB\\03_04_SPRING\\workspace\\sw_hr15\\src\\main\\webapp\\resources\\upload";
	
	String yyyyMMPath = "";//년과 월을 포함하는 전체 경로
	
	@Resource(name = "downloadView")
	View download;
	
	@RequestMapping(value="/download.do", method = RequestMethod.POST)
	public ModelAndView download(FileVO fileVO, ModelAndView modelAndView) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│download                      │");
		LOG.debug("└──────────────────────────────┘");		
		
		LOG.debug("│fileVO                      │"+fileVO);
		
		File downloadFile =new File(fileVO.getSavePath(),fileVO.getSaveFileName());
		
		//view지정
		modelAndView.setView(download);
		
		//원본파일명
		modelAndView.addObject("originalFileName", fileVO.getOriginalFileName());
		
		//파일객체
		modelAndView.addObject("downloadFile", downloadFile);
		return modelAndView;
	}
	
	public FileController() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│FileController                │");
		LOG.debug("└──────────────────────────────┘");	
		
		//image파일 폴더 생성
		File imageFileRootDir =new File(IMG_PATH);
		if(imageFileRootDir.isDirectory()==false) {
			boolean isMakeDir = imageFileRootDir.mkdirs();
			LOG.debug("│isMakeDir                │"+isMakeDir);
			
		}
		
		//image파일 이외 Root 폴더 생성
		File normarFileRootDir =new File(FILE_PATH);
		if(normarFileRootDir.isDirectory()==false) {
			boolean isMakeDir = normarFileRootDir.mkdirs();
			LOG.debug("│isMakeDir                │"+isMakeDir);
			
		}		
		
		
		//yyyy :연도 폴더
		//mm   :월 폴더
		String yyyyStr = StringUtil.getCurrentDate("yyyy");
		String mmStr = StringUtil.getCurrentDate("MM");
		
		
		//일반파일
		//\\+yyyyStr+\\+mmStr
		yyyyMMPath =File.separator + yyyyStr + File.separator + mmStr;
		LOG.debug("│yyyyMMPath                │"+yyyyMMPath);
		
		//C:\\upload+\\+yyyyStr+\\+mmStr
		File  normalFileDir = new File(this.FILE_PATH+yyyyMMPath);
		if(normalFileDir.isDirectory() == false) {
			boolean isNormarDirMaked = normalFileDir.mkdirs();
			LOG.debug("│isNormarDirMaked                │"+isNormarDirMaked);
		}
		
		
		File  imageFileDir = new File(this.IMG_PATH+yyyyMMPath);
		if(imageFileDir.isDirectory() == false) {
			boolean isNormarDirMaked = imageFileDir.mkdirs();
			LOG.debug("│isNormarDirMaked                │"+isNormarDirMaked);
		}
		
		
		
		
	}
	

	@RequestMapping(value="/multipartFileUpload.do", method = RequestMethod.POST)
	public ModelAndView multipartFileUpload(FileVO vo,ModelAndView modelAndView,MultipartHttpServletRequest mHttp) throws IllegalStateException, IOException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│multipartFileUpload           │");
		LOG.debug("└──────────────────────────────┘");	
		
		//파일 업로드 처리
		MultipartFile uploadFile = vo.getUploadFile();
		LOG.debug("│vo           │"+vo);
		LOG.debug("│uploadFile           │"+uploadFile);
		String contentType = uploadFile.getContentType();
		String savePath = "";
		if(contentType.startsWith("image")==true) {
			savePath = IMG_PATH+yyyyMMPath;
		}else {
			savePath = FILE_PATH+yyyyMMPath;
		}
		LOG.debug("│savePath           │"+savePath);
		uploadFile.transferTo(new File(savePath,uploadFile.getOriginalFilename()));
		return modelAndView;
	}
	
	
	//fileUpload.do
	@RequestMapping(value="/fileUpload.do", method = RequestMethod.POST)
	public ModelAndView fileUpload(ModelAndView modelAndView, MultipartHttpServletRequest mHttp) throws IllegalStateException, IOException {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│fileUpload                    │");
		LOG.debug("└──────────────────────────────┘");			
		
		List<FileVO> list =new ArrayList<FileVO>();
		
		String title = mHttp.getParameter("title");
		
		LOG.debug("│title                    │"+title);
		Iterator<String> fileNames = mHttp.getFileNames();
		
		//일반파일, 이미지파일 
		while(fileNames.hasNext()) {
			FileVO outVO = new FileVO();
			
			String uploadFileName = fileNames.next();
			LOG.debug("│uploadFileName                    │"+uploadFileName);
			
			MultipartFile multipartFile =mHttp.getFile(uploadFileName);
			
			//원본파일명
			outVO.setOriginalFileName(multipartFile.getOriginalFilename());
			
			//확장자
			String ext = "";//board_list.jsp
			String str = outVO.getOriginalFileName();
			if(str.lastIndexOf(".")>-1) {
				int idx = str.lastIndexOf(".");
				ext = str.substring(idx+1);
			}
			
			outVO.setExtension(ext);
			
			//PK를 날짜(8)+UUID(32)
			//저장파일명
			outVO.setSaveFileName(StringUtil.getPK()+"."+ext);			
			
			//파일크기:단위 byte
			outVO.setFileSize(multipartFile.getSize());//
			
			LOG.debug("│multipartFile.getContentType():"+multipartFile.getContentType());
			
			String savePath = "";//image일반 파일을 나누어 저장
			
			String contentType = multipartFile.getContentType();
			if(contentType.startsWith("image")==true) {
				savePath = IMG_PATH+yyyyMMPath;
			}else {
				savePath = FILE_PATH+yyyyMMPath;
			}
			//저장경로
			outVO.setSavePath(savePath);
			LOG.debug("│savePath                    │"+savePath);
			//원본파일명 변경
			//
			
			LOG.debug("│outVO                    │"+outVO);
			//                               저장경로, 저장파일명
			multipartFile.transferTo(new File(outVO.getSavePath(),outVO.getSaveFileName()));
			
			list.add(outVO);
		}
		modelAndView.addObject("list", list);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/upload.do", method = RequestMethod.GET)
	public ModelAndView upload(ModelAndView modelAndView) {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│FileController                │");
		LOG.debug("└──────────────────────────────┘");
		modelAndView.setViewName("file/fileUpload");    
		return modelAndView;
	}
}
