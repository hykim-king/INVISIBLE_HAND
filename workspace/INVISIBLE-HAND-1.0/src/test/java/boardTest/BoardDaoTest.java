package boardTest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.pcwk.ehr.dao.PostDao;
import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.VO.MemberVO;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class) // 스프링 테스트 컨텍스 프레임워크의 JUnit확장 기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" }) // 테스트 컨텍스트가 자동으로 만들어줄
																				// applicationContext 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) // @Test 메소드를 오름차순으로 정렬한 순서대로 실행
public class BoardDaoTest{
    
	final Logger LOG = LogManager.getLogger(getClass());
	
    @Autowired
    PostDao dao;
    
    @Autowired
    
    PostVO board01;
    PostVO board02;
    PostVO board03;
    
    PostVO search;
    
    
    @Before
    public void setUp() throws Exception {
    	board01 = new PostVO(10000, "메로나", "test_title1", "test_contents1", "등록일X", 10, 20, "10");
    	board02 = new PostVO(10001, "메로나", "test_title2", "test_contents2", "등록일X", 11, 21, "10");
    	board03 = new PostVO(10002, "메로나", "test_title3", "test_contents3", "등록일X", 11, 22, "10");
    	
      
    	search = new PostVO(99999, "메로나", "test_title1", "test_contents1", "등록일X", 10, 20, "10");
        
    }
    
    @Test
    public void addAndGet() throws SQLException {
        dao.doDelete(board01);
        dao.doDelete(board02);
        dao.doDelete(board03);
        
        dao.doSave(board01);
        dao.doSave(board02);
        dao.doSave(board03);
        
        PostVO outVO01 = dao.doSelectOne(board01);
        PostVO outVO02 = dao.doSelectOne(board02);
        PostVO outVO03 = dao.doSelectOne(board03);
        
        isSameData(outVO01,board01);
        isSameData(outVO02,board02);
        isSameData(outVO03,board03);
        
    }
    
    @Test
    public void selectall() throws SQLException {
        //1. 삭제
        //2. 등록
        //3. 조회
        //4. 조회 데이터 비교
        dao.doDelete(board01);
        dao.doDelete(board02);
        dao.doDelete(board03);
        
        dao.doSave(board01);
        dao.doSave(board02);
        dao.doSave(board03);
        
        //pageSize
        search.setNickname("메로나");
        List<PostVO> list = dao.doRetrieve(search);
        for(PostVO vo: list) {
            LOG.debug("┌──────────────────────────────┐");
            LOG.debug("│vo                            │" + vo);
            LOG.debug("└──────────────────────────────┘");
        }
        assertEquals(0, list.size());
        
    }

    
    private void isSameData(PostVO outVO, PostVO board) {
        assertEquals(outVO.getPostNumber(), board.getPostNumber());
        assertEquals(outVO.getNickname(), board.getNickname());
        assertEquals(outVO.getLikes(), board.getLikes());
        assertEquals(outVO.getTitle(), board.getTitle());
    }
    

    
}