package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.ChartVO;
import com.pcwk.ehr.VO.SolutionVO;
import com.pcwk.ehr.service.SolutionService;
import com.pcwk.ehr.dao.SolutionDao;

@Service
public class SolutionServiceImpl implements SolutionService {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	SolutionDao solutionDao;
	
	@Override
	public List<ChartVO> SelectMaincategory(ChartVO inVO) {
		return solutionDao.SelectMaincategory(inVO);
	}

	@Override
	public List<ChartVO> SelectSubcategory(ChartVO inVO) {
		return solutionDao.SelectSubcategory(inVO);
	}

	public List<SolutionVO> getSolutionContents(SolutionVO inVO) {
		return solutionDao.getSolutionContents(inVO);
	}
	
	public List<SolutionVO> returnRadioContents(List<Double> radioArr) {
		SolutionVO inVO = new SolutionVO();
        Double minValue = radioArr.get(0); // Assume the first element is the smallest
        double sum = radioArr.get(0);
        int codename = 1; // Initialize the index of the smallest element
        int index;
        for (index = 1; index < radioArr.size(); index++) {
            if (radioArr.get(index) < minValue) {
                minValue = radioArr.get(index);
                codename = index;
            }
            sum = sum + radioArr.get(index);
        }
        double average = sum / radioArr.size(); // Calculate the average
        if (average >= 2.75) {
        	codename = 10;
        }
        if (average <= 1.25) {
        	codename = 11;
        }
        inVO.setSolname(1);
        inVO.setCodename(codename+1);
        
		return solutionDao.getSolutionContents(inVO);
	}
	
	public List<SolutionVO> returnTextContents(List<String> textArr) {
		List<SolutionVO> collectonVO = new ArrayList<>();
		SolutionVO inVO = new SolutionVO();
		List<Double> doubleList = new ArrayList<>();
		inVO.setSolname(2);
        for (String value : textArr) {
            try {
                double doubleValue = Double.parseDouble(value);
                doubleList.add(doubleValue);
            } catch (NumberFormatException e) {
                System.out.println("Error converting value: " + value);
            }
        }
        
        if (doubleList.get(0)+5 <= doubleList.get(1)) {
        	inVO.setCodename(1);	
        }
        if (doubleList.get(0)-5 <= doubleList.get(1) && doubleList.get(1) <= doubleList.get(0)+5) {
        	inVO.setCodename(2);
        }
        if (doubleList.get(0)-5 >= doubleList.get(1)) {
        	inVO.setCodename(3);
        }
        collectonVO.addAll(solutionDao.getSolutionContents(inVO));
        
        if(doubleList.get(1) <= 90){
        	inVO.setCodename(4);	
        }
        if(70 <= doubleList.get(1) && doubleList.get(1) < 90){
        	inVO.setCodename(5);
        }
        if(50 <= doubleList.get(1) && doubleList.get(1) < 70){
        	inVO.setCodename(6);
        }
        if(30 <= doubleList.get(1) && doubleList.get(1) < 50){
        	inVO.setCodename(7);
        }
        if(doubleList.get(1) < 30){
        	inVO.setCodename(8);
        }
        collectonVO.addAll(solutionDao.getSolutionContents(inVO));
        return collectonVO;
	}
	
	public List<SolutionVO> returnCheckContents(List<String> checkArr) {
		List<Integer> intList = convertStringsToIntegers(checkArr);
		List<SolutionVO> collectonVO = new ArrayList<>();
		SolutionVO inVO = new SolutionVO();
		
        for (int value : intList) {
        	inVO.setSolname(3);
        	inVO.setCodename(value);
        	collectonVO.addAll(solutionDao.getSolutionContents(inVO));
        }
		return collectonVO;
	}
	
	public List<SolutionVO> returnScoreContents(ChartVO checkArr,String totalScore){
		List<SolutionVO> collectonVO = new ArrayList<>();
		List<ChartVO> tempArr = new ArrayList<>();
		SolutionVO inVO = new SolutionVO();
		inVO.setSolname(0);
		tempArr = solutionDao.getScoreContents(checkArr);
		LOG.debug("이게리턴이야: " + tempArr.get(0).getSbhiAvg());
		

		double aiScore = tempArr.get(0).getSbhiAvg();
		if (Double.parseDouble(totalScore) - aiScore > 12.0){
			inVO.setCodename(1);
		}
		if (Double.parseDouble(totalScore) - aiScore > 6.0 && Double.parseDouble(totalScore) - aiScore <= 12.0){
			inVO.setCodename(2);
		}
		if (Double.parseDouble(totalScore) - aiScore > 0.0 && Double.parseDouble(totalScore) - aiScore <= 6.0){
			inVO.setCodename(3);
		}
		if (Double.parseDouble(totalScore) - aiScore > -6.0 && Double.parseDouble(totalScore) - aiScore <= 0.0){
			inVO.setCodename(4);
		}
		if (Double.parseDouble(totalScore) - aiScore > -12.0 && Double.parseDouble(totalScore) - aiScore <= -6.0){
			inVO.setCodename(5);
		}
		if (Double.parseDouble(totalScore) - aiScore <= -12.0){
			inVO.setCodename(6);
		}
		collectonVO.addAll(solutionDao.getSolutionContents(inVO));
		
		return collectonVO;
		
	}
	
    public List<Integer> convertStringsToIntegers(List<String> stringList) {
        List<Integer> intList = new ArrayList<>();
        for (String stringValue : stringList) {
            try {
                int intValue = Integer.parseInt(stringValue.substring(0,2));
                if (intValue >= 0 && intValue <= 99) {
                    intList.add(intValue);
                } else {
                    System.out.println("Error: Value out of range (00-99): " + stringValue);
                }
            } catch (NumberFormatException e) {
                System.out.println("Error converting value: " + stringValue);
            }
        }

        return intList;
    }
}
