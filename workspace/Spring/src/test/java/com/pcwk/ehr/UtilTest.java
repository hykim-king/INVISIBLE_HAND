package com.pcwk.ehr;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

import com.google.gson.JsonArray;
import com.pcwk.ehr.chart.domain.PizzaVO;
import com.pcwk.ehr.cmn.StringUtil;

public class UtilTest {
    final Logger LOG = LogManager.getLogger(getClass());
    
	@Before
	public void setUp() throws Exception {
	}

	
	@Test
	public void jsonArray() {
		PizzaVO  pizza01=new PizzaVO("버섯", 3);
		PizzaVO  pizza02=new PizzaVO("양파", 1);
		PizzaVO  pizza03=new PizzaVO("올리브", 1);
		PizzaVO  pizza04=new PizzaVO("호박", 1);
		PizzaVO  pizza05=new PizzaVO("동그란 소시지", 2);
		
		List<PizzaVO> list=new ArrayList<PizzaVO>();
		list.add(pizza01);
		list.add(pizza02);
		list.add(pizza03);
		list.add(pizza04);
		list.add(pizza05);
		//[[],[],.list..]
		
		JsonArray mainArray=new JsonArray();
		
		for(PizzaVO vo  :list) {
			JsonArray sArray=new JsonArray();
			sArray.add(vo.getTopping());
			sArray.add(vo.getSlices());
			
			mainArray.add(sArray);
		}
		
		
		LOG.debug("=====================");
		LOG.debug(mainArray.toString());
		LOG.debug("=====================");
		
		
	}
	
	@Test
	@Ignore
	public void getExtention() {
		String str = "board_list.jsp";
		if(str.lastIndexOf(".")>-1) {
			int idx = str.lastIndexOf(".");
			String ext = str.substring(idx+1);
			LOG.debug("ext-"+ext);
			assertEquals("jsp",ext);
			
		}
	}
	
	@Test
	@Ignore
	public void getCurrentDate() {
		String yyyyStr = StringUtil.getCurrentDate("yyyy");
		LOG.debug("------------------------");
		LOG.debug("--getCurrentDate()-");
		LOG.debug("------------------------");
		LOG.debug("yyyyStr-"+yyyyStr);
		assertEquals("2023", yyyyStr);
		
		//월
		String mmStr = StringUtil.getCurrentDate("MM");
		LOG.debug("mmStr-"+mmStr);
		assertEquals("06", mmStr);
	}

}
