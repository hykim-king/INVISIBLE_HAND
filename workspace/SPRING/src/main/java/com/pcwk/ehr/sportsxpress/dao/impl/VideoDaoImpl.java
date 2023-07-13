package com.pcwk.ehr.sportsxpress.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.sportsxpress.VO.VideoVO;
import com.pcwk.ehr.sportsxpress.dao.VideoDao;

@Repository
public class VideoDaoImpl implements VideoDao {
	
	final String NAMESPACE = "com.pcwk.ehr.sportsxpress";
	final String DOT = ".";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; //DB연결 객체
	
	private final Logger LOG = LogManager.getLogger(getClass());

	public VideoDaoImpl() {	//생성자
	
	}
	
	@Override
	public List<VideoVO> VideoInfo(VideoVO getVideo) throws SQLException {
		List<VideoVO> outList =  new ArrayList<>();
		
		String statement = this.NAMESPACE+DOT+"VideoInfo";
		LOG.debug("-------------------------------------");
		LOG.debug("-statement-"+statement);
		LOG.debug("-------------------------------------");
		LOG.debug("2. param="+getVideo);
		outList = this.sqlSessionTemplate.selectList(statement, getVideo);
		
		for(VideoVO vo: outList) {
			LOG.debug("=3. vo="+vo);
		}
		return outList;
	}

}
