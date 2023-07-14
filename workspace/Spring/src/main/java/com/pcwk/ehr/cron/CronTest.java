package com.pcwk.ehr.cron;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.pcwk.ehr.cmn.PcwkLoger;

@Component
public class CronTest implements PcwkLoger {

	public CronTest() {
		LOG.debug("--------------------------");
		LOG.debug("-CronTest()-");
		LOG.debug("--------------------------");
	}
	
	public void test() {
		LOG.debug("--------------------------");
		LOG.debug("-cront test 10초 1회 -");
		LOG.debug("--------------------------");		
	}
	
	
	//메서드에 @Scheduled 사용 설정
	//                           월(1-12)
	@Scheduled(cron = "0/5 * * * 12 * ")
	public void testAno() {
		LOG.debug("--------------------------");
		LOG.debug("-@Scheduled annotation 사용: 5초에 1회 -");
		LOG.debug("--------------------------");			
	}
	
}
