package com.pcwk.ehr;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.Model;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.context.WebApplicationContext;

import com.pcwk.ehr.sportsxpress.VO.BaseballMatchVO;
import com.pcwk.ehr.sportsxpress.service.BaseballService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@WebAppConfiguration
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class Baseball_MatchControllerTest {

	@Autowired
	WebApplicationContext webApplicationContext;
	MockMvc mockMvc;

	@Autowired
	BaseballService baseball_MatchService;
	Model model;

	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
		model = new BindingAwareModelMap();
	}

	@Test
	public void testGetMatchInfo() throws Exception {
		BaseballMatchVO getMatch = new BaseballMatchVO();
		getMatch.setBaseno(1); // 특정 경기 번호 설정
		List<BaseballMatchVO> match = baseball_MatchService.getMatchInfo(getMatch);
		System.out.println("뭐가 들어있는거야" + match);

		for (BaseballMatchVO matches : match) {
			System.out.println("경기번호: " + matches.getBaseno());
			System.out.println("하이퍼링크: " + matches.getMlink());
			// 필요한 정보 출력
		}

		model.addAttribute("matches", match);

		String viewName = mockMvc.perform(MockMvcRequestBuilders.get("/resources/templates/tmp_menu.html"))
				.andExpect(MockMvcResultMatchers.status().isOk()).andReturn().getModelAndView().getViewName();

		assertEquals("tmp_menu", viewName);

	}
}
