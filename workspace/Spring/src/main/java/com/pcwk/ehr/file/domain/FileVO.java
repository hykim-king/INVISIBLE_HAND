package com.pcwk.ehr.file.domain;

import org.springframework.web.multipart.MultipartFile;

import com.pcwk.ehr.cmn.DTO;

public class FileVO extends DTO {
	private String originalFileName ; //원본파일명
	private String saveFileName ; //저장파일명
	private long   fileSize ; //파일크기
	private String extension; //확장자
	private String savePath ; //저장경로
	
	private String imageSavePath;//이미지 저장 경로:/resources/upload/2023/06
	
	private MultipartFile uploadFile;
	
	
	
    public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public FileVO() {}

	public FileVO(String originalFileName, String saveFileName, long fileSize, String extension, String savePath,
			String imageSavePath) {
		super();
		this.originalFileName = originalFileName;
		this.saveFileName = saveFileName;
		this.fileSize = fileSize;
		this.extension = extension;
		this.savePath = savePath;
		this.imageSavePath = imageSavePath;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getImageSavePath() {
		return imageSavePath;
	}

	public void setImageSavePath(String imageSavePath) {
		this.imageSavePath = imageSavePath;
	}

	@Override
	public String toString() {
		return "FileVO [originalFileName=" + originalFileName + ", saveFileName=" + saveFileName + ", fileSize="
				+ fileSize + ", extension=" + extension + ", savePath=" + savePath + ", imageSavePath=" + imageSavePath
				+ ", uploadFile=" + uploadFile + ", toString()=" + super.toString() + "]";
	}


    
    
}
