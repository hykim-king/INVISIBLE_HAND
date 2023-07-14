package com.pcwk.ehr.chart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.pcwk.ehr.chart.domain.PizzaVO;
import com.pcwk.ehr.cmn.PcwkLoger;

@Controller("chartController")
@RequestMapping("chart")
public class ChartController implements PcwkLoger {

	
	public ChartController() {}
	
	@RequestMapping(value="/drawPieChart.do",method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String drawPieChart() {
		String jsonString = "";
		LOG.debug("┌──────────────────────────────┐");
		LOG.debug("│drawPieChart                  │");
		LOG.debug("└──────────────────────────────┘");			
				
		
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
		
		jsonString = mainArray.toString();
		LOG.debug("=====================");
		LOG.debug(jsonString);
		LOG.debug("=====================");		
		return jsonString;
	}
	
}
