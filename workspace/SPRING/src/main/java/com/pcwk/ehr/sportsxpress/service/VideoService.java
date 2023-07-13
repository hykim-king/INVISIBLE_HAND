package com.pcwk.ehr.sportsxpress.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.sportsxpress.VO.VideoVO;

public interface VideoService {
	
public List<VideoVO> getVideoInfo(VideoVO getVideo) throws SQLException;
		
	
}
