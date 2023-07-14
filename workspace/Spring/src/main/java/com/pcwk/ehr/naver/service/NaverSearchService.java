package com.pcwk.ehr.naver.service;

import java.io.IOException;

import com.pcwk.ehr.cmn.DTO;

public interface NaverSearchService {

	/**
	 * naver: blog/news/책/쇼핑
	 * @param inVO
	 * @return 검색결과(JSON)
	 * @throws IOException
	 */
	public String doNaverSearch(DTO inVO)throws IOException;
}
