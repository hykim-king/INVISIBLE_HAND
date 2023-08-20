package com.pcwk.ehr.VO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//임시 chartVO이기 때문에 롬복을 활용 나중에 바꿈

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ChartVO {
	
	//공통 컬럼
	private String  chartdate;		
	private String  maincategory;
	private String  subcategory;
	//공통 컬럼 end	
		
		
	//chart01
	private double  sbhi;
	private double sbhi2;
	private double sbhi3;
	private double sbhi4;
	private double sbhi5;
	private double sbhi6;
	private double sbhi7;
	private double sbhi8;
	private double sbhi9;
	private double sbhi10;
	  
	//sbhi 평균값을 저장할 곳
	private double sbhiAvg;
	private double sbhi2Avg;  
	private double sbhi3Avg;  
	private double sbhi4Avg;  
	private double sbhi5Avg;  
	private double sbhi6Avg;  
	private double sbhi7Avg;  
	private double sbhi8Avg;  
	private double sbhi9Avg;  
	private double sbhi10Avg; 
	//chart01 end
	  
	//chart02
	private double  data1;
	private double  data2;
	private double  data3;
	private double  data4;
	private double  data5;
	private double  data6;
	private double  data7;
	
	private double  data1Avg;
	private double  data2Avg;
	private double  data3Avg;
	private double  data4Avg;
	private double  data5Avg;
	private double  data6Avg;
	private double  data7Avg;
	
	//chart02 end	  

	
	  
	//chart03
	  
	//chart03 end  
	
	//chart04
	  
	//chart04 end  
}                      
