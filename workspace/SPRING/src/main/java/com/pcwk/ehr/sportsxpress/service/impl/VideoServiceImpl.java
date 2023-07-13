package com.pcwk.ehr.sportsxpress.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.dao.VideoDao;
import com.pcwk.ehr.sportsxpress.service.VideoService;

@Service
public class VideoServiceImpl implements VideoService {
	
	final Logger  LOG = LogManager.getLogger(getClass());

	@Autowired
	VideoDao videoDao;
	
	public VideoServiceImpl() {
		
	}
	
	@Override
	public List<VideoVO> getVideoInfo(VideoVO getVideo) throws SQLException{
		return videoDao.VideoInfo(getVideo);
	}
}
