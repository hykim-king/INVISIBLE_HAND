package com.pcwk.ehr.board;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pcwk.ehr.board.dao.BoardDao;
import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.board.service.BoardService;
import com.pcwk.ehr.cmn.PcwkLoger;

@RunWith(SpringJUnit4ClassRunner.class) // 스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/test-servlet-context.xml" }) // 테스트 컨텍스트가 자동으로 만들어줄
																				// applicationContext 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) // @Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class BoardServiceTest implements PcwkLoger {

	@Autowired
	BoardService service;
	
	@Autowired
	BoardDao dao;
	
	BoardVO  board01;
	BoardVO  board02;
	BoardVO  board03;
	BoardVO  board04;
	BoardVO  board05;
	
	BoardVO  search;
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│setUp()                       │");
		LOG.debug("└──────────────────────────────┘");
		
		board01 = new BoardVO(91, "제목_91", "내용_91", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board02 = new BoardVO(92, "제목_92", "내용_92", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board03 = new BoardVO(93, "제목_93", "내용_93", "20", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board04 = new BoardVO(94, "제목_94", "내용_94", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board05 = new BoardVO(95, "제목_95", "내용_95", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		
		search = new BoardVO(9, "제목_9", "내용_9", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		
	}

	@Test
	public void doSelectOne() throws SQLException {
		//1.삭제
		//2.등록
		//3.조회
		//4.조회 count비교
		
		//1.
		service.doDelete(board01);
		service.doDelete(board02);
		service.doDelete(board03);
		service.doDelete(board04);
		service.doDelete(board05);
		
		//2.
		service.doSave(board01);
		service.doSave(board02);
		service.doSave(board03);
		service.doSave(board04);
		service.doSave(board05);
		
		board01.setModId(board01.getModId()+"변경");
		service.doSelectOne(board01);
		
		//BoardDao에서 조회
		BoardVO vo = dao.doSelectOne(board01);
		LOG.debug("│vo                          │"+vo);
		assertEquals(1, vo.getReadCnt());
		
	}
	
	
	@Test
	public void beans() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│bean                          │");
		LOG.debug("│service                       │"+service);
		LOG.debug("└──────────────────────────────┘");			
		assertNotNull(service);
	}

}
