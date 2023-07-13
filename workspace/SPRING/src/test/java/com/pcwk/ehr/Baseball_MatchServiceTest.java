package com.pcwk.ehr;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pcwk.ehr.sportsxpress.service.impl.BaseballServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)  //스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
}) //테스트 컨텍스트가 자동으로 만들어줄 applicationContext가 분할되어 있기 때문에 경로를 두개 올려줌
@FixMethodOrder(MethodSorters.NAME_ASCENDING)  //@Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class Baseball_MatchServiceTest {
	final Logger  LOG = LogManager.getLogger(getClass());
		
		@Autowired
	    BaseballServiceImpl baseballServiceImpl;

	    @Before
	    public void setup() {

	    }


	    
	}

