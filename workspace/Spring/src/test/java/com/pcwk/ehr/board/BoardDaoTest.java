package com.pcwk.ehr.board;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.List;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pcwk.ehr.board.dao.BoardDao;
import com.pcwk.ehr.board.domain.BoardVO;
import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.code.dao.CodeDao;
import com.pcwk.ehr.code.domain.CodeVO;

@RunWith(SpringJUnit4ClassRunner.class) // 스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/test-servlet-context.xml" }) // 테스트 컨텍스트가 자동으로 만들어줄
																				// applicationContext 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) // @Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class BoardDaoTest implements PcwkLoger {

	@Autowired
	BoardDao dao;
	
	@Autowired
	CodeDao codeDao;
	
	BoardVO  board01;
	BoardVO  board02;
	BoardVO  board03;
	BoardVO  board04;
	BoardVO  board05;
	
	BoardVO  search;
	
	CodeVO   codeVO;
	@Before
	public void setUp() throws Exception {
		board01 = new BoardVO(91, "제목_91", "내용_91", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board02 = new BoardVO(92, "제목_92", "내용_92", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board03 = new BoardVO(93, "제목_93", "내용_93", "20", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board04 = new BoardVO(94, "제목_94", "내용_94", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		board05 = new BoardVO(95, "제목_95", "내용_95", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		
		search = new BoardVO(9, "제목_9", "내용_9", "10", 0, "등록일 사용않함", "admin", "수정일 사용 않함",  "admin");
		
		codeVO= new CodeVO();
		
		
	}

	@Test
	public void codeDoRetrieve() throws SQLException {
		codeVO.setCodeId("BOARD_SEARCH");
		List<CodeVO> list = codeDao.doRetrieve(codeVO);
		assertEquals(2, list.size());
	}
	
	@Test
	@Ignore
	public void doRetrieve() throws SQLException {
		//1. 삭제
		//2. 등록
		//3. 조회
		
		//1.
		dao.doDelete(board01);
		dao.doDelete(board02);
		dao.doDelete(board03);
		dao.doDelete(board04);
		dao.doDelete(board05);	
		
		//2.
		dao.doSave(board01);
		dao.doSave(board02);
		dao.doSave(board03);
		dao.doSave(board04);
		dao.doSave(board05);
		
		//pageSize
		search.setSearchDiv("10");//제목 검색
		search.setSearchWord("제목_0001");
		search.setPageSize(10);
		search.setPageNo(1);
		List<BoardVO> list = dao.doRetrieve(search);
		for(BoardVO vo :list) {
			LOG.debug(vo);
		}
		
		assertEquals(10, list.size());
	}
	
	
	@Test
	@Ignore
	public void doUpdateReadCnt() throws SQLException {
		//1. 삭제
		//2. 등록
		//3. 조회 +조회count증가
		//4. 조회(조회count=1)
		
		//1.
		dao.doDelete(board01);
		dao.doDelete(board02);
		dao.doDelete(board03);
		dao.doDelete(board04);
		dao.doDelete(board05);			
		
		//2.
		dao.doSave(board01);
		dao.doSave(board02);
		dao.doSave(board03);
		dao.doSave(board04);
		dao.doSave(board05);	
		
		//3.
		BoardVO outVO01 = dao.doSelectOne(board01);
		BoardVO outVO02 = dao.doSelectOne(board02);
		BoardVO outVO03 = dao.doSelectOne(board03);
		BoardVO outVO04 = dao.doSelectOne(board04);
		BoardVO outVO05 = dao.doSelectOne(board05);
		
		//등록자와 수정자가 서로 달라야 조회 count증가
		//최초 글 등록자는 조회 count를 증가할 수 없다.
		board01.setModId(board01.getModId()+"_달라");
		//조회count증가
		dao.doUpdateReadCnt(board01);
		
		BoardVO vo01 =dao.doSelectOne(board01);
		
		assertEquals(1, vo01.getReadCnt());
	}
	
	
	//단독으로 수행시 항상동일한 결과가 도출
	@Test
	@Ignore
	public void update() throws SQLException {
		//1. 삭제
		//2. 등록
		//3. 조회
		//4. 조회 데이터 수정
		//5. 수정
		//6. 수정 데이터 조회
		//7. 조회 데이터 비교
		 
		//1.
		dao.doDelete(board01);
		dao.doDelete(board02);
		dao.doDelete(board03);
		dao.doDelete(board04);
		dao.doDelete(board05);		
		
		//2.
		dao.doSave(board01);
		dao.doSave(board02);
		dao.doSave(board03);
		dao.doSave(board04);
		dao.doSave(board05);		
		
		//3.
		BoardVO outVO01 = dao.doSelectOne(board01);
		BoardVO outVO02 = dao.doSelectOne(board02);
		BoardVO outVO03 = dao.doSelectOne(board03);
		BoardVO outVO04 = dao.doSelectOne(board04);
		BoardVO outVO05 = dao.doSelectOne(board05);
		
		//4. 조회 데이터 수정
		String updateStr = "_U";
		outVO01.setDiv("20");
		outVO01.setTitle(outVO01.getTitle()+updateStr);
		outVO01.setContents(outVO01.getContents()+updateStr);
		outVO01.setModId(outVO01.getModId()+updateStr);
		
		
		//5. 수정
		dao.doUpdate(outVO01);
		
		//6. 수정 데이터 조회
		BoardVO vo01 =  dao.doSelectOne(board01);
		
		//vo01.setModId(vo01.getModId()+"오류");
		
		//7.
		isSameData(vo01,outVO01);
	}
	
	@Test
	@Ignore
	public void addAndGet() throws SQLException {
		//1. 삭제
		//2. 등록
		//3. 조회
		//4. 조회 데이터 비교
		
		//1.
		dao.doDelete(board01);
		dao.doDelete(board02);
		dao.doDelete(board03);
		dao.doDelete(board04);
		dao.doDelete(board05);
		
		//2.
		dao.doSave(board01);
		dao.doSave(board02);
		dao.doSave(board03);
		dao.doSave(board04);
		dao.doSave(board05);
		
		//3.
		BoardVO outVO01 = dao.doSelectOne(board01);
		BoardVO outVO02 = dao.doSelectOne(board02);
		BoardVO outVO03 = dao.doSelectOne(board03);
		BoardVO outVO04 = dao.doSelectOne(board04);
		BoardVO outVO05 = dao.doSelectOne(board05);
		
		isSameData(outVO01,board01);
		isSameData(outVO02,board02);
		isSameData(outVO03,board03);
		isSameData(outVO04,board04);
		isSameData(outVO05,board05);
		
	}
	
	private void isSameData(BoardVO outVO01, BoardVO board01) {
		assertEquals(outVO01.getSeq(), board01.getSeq());
		assertEquals(outVO01.getTitle(), board01.getTitle());
		assertEquals(outVO01.getContents(), board01.getContents());
		assertEquals(outVO01.getDiv(), board01.getDiv());
		assertEquals(outVO01.getReadCnt(), board01.getReadCnt());
		assertEquals(outVO01.getRegId(), board01.getRegId());
		assertEquals(outVO01.getModId(), board01.getModId());
	}
	
	
	@Test
	public void bean() {
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│bean                          │");
		LOG.debug("│dao                           │"+dao);
		LOG.debug("│codeDao                       │"+codeDao);
		LOG.debug("└──────────────────────────────┘");	
		
		assertNotNull(codeDao);
		assertNotNull(dao);
	}

}
