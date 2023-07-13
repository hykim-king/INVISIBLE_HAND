package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.ArticleVO;
import com.pcwk.ehr.sportsxpress.VO.RecordVO;
import com.pcwk.ehr.sportsxpress.dao.ArticleDao;
import com.pcwk.ehr.sportsxpress.dao.RecordDao;
import com.pcwk.ehr.sportsxpress.service.RecordService;

@Service
public class RecordServiceImpl implements RecordService {
	final Logger  LOG = LogManager.getLogger(getClass());

	@Autowired
	RecordDao recordDao;
	
	public RecordServiceImpl() {
		
	}
	
	@Override
	public List<RecordVO> getRecordInfo(RecordVO getRecord) throws SQLException {	
		return recordDao.RecordInfo(getRecord);
	}

}
