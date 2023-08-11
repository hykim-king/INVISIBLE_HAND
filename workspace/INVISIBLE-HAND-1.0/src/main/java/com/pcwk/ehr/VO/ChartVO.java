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
  private String  chartdate;		
  private String  maincategory;
  private String  subcategory;
  private int  sbhi;
  private int sbhi2;
  private int sbhi3;
  private int sbhi4;
  private int sbhi5;
  private int sbhi6;
  private int sbhi7;
  private int sbhi8;
  private int sbhi9;
  private int sbhi10;
  
  //sbhi 평균값을 저장할 곳
  private int sbhiAvg;
  private int sbhi2Avg;  
  private int sbhi3Avg;  
  private int sbhi4Avg;  
  private int sbhi5Avg;  
  private int sbhi6Avg;  
  private int sbhi7Avg;  
  private int sbhi8Avg;  
  private int sbhi9Avg;  
  private int sbhi10Avg; 
    
  
    
}                      
