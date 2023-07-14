package com.pcwk.ehr.cron;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.user.domain.Level;
import com.pcwk.ehr.user.domain.UserVO;
import com.pcwk.ehr.user.service.UserService;

@Component //server, controll,repository도 아님
public class MemberUpgradeLevelCron implements PcwkLoger {

	@Autowired
	UserService userService;
	
	//검색에 사용
	UserVO search;
	
	public MemberUpgradeLevelCron() {
		LOG.debug("-----------------------------------------------------------");
		LOG.debug("-MemberUpgradeLevelCron()-");
		LOG.debug("-----------------------------------------------------------");
		
		search = new UserVO("", "이상무99", "4321",Level.BASIC,1,0,"jamesol@paran.com","날짜_사용하자 않음");
	}
	
	public void upgradeLevelsCron() {
		try {
			userService.upgradeLevels(search);
		}catch(Exception e) {
			LOG.debug("-----------------------------------------------------------");
			LOG.debug("-upgradeLevelsCron() Exception-"+e.getMessage());
			LOG.debug("-----------------------------------------------------------");
						
		}
	}
	
	
}
