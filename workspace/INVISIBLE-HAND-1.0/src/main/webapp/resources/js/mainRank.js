  $(document).ready(function() { 
	  let  icon = "";
	  let selectedMainCategory = "비제조업"
	  let tableBody = document.getElementById('rankBody'); // 초기에 테이블 바디를 가져옴
	      
	  updateTable(selectedMainCategory);
	  
	  $(".tab-button").click(function() {
		    $(".tab-button").removeClass("active");
		    $(this).addClass("active");

		    selectedMainCategory = $(this).text();
		    updateTable(selectedMainCategory);	
		});

	  
	    function updateTable(selectedMainCategory) {
	        //let tableBody = document.getElementById('rankBody');
	        //console.log("tableBody:", tableBody); // 디버깅용 출력
	        let newTableBody = document.createElement('tbody'); // 새로운 tbody 엘리먼트 생성
	        $.ajax({
	            url: '/ehr/main/Rank.do',
	            type: 'GET',
	            data: {    
	            	mainCategory : selectedMainCategory
	            },
	            dataType: 'json',
	            success: function(data) {            
	                //console.log("데이터를 가져옴");
	                //console.log(data);
	                data.forEach(function(item,index){
	                	
	                	if(item.changeRank == 0  ){
	                		 icon = '<i class="fas fa-minus"></i>';
	                		 item.changeRank = '-';
	                	}else if(item.changeRank > 0 ){
	                		 icon = '<i class="fas fa-chevron-up" style="color: red;"></i>';
	                		 item.changeRank = '+' + item.changeRank;
	                	}else if(item.changeRank < 0){
	                		 icon = '<i class="fas fa-chevron-down" style="color: blue;"></i>';
	                	}
	                		                	
	                    let row = '<tr>' + 
	                      '<td>' + item.currentRank + '</td>' +
	                      '<td>' + item.name + '</td>' +                     
	                      '<td>' + item.changeRank + '</td>' +
	                      '<td>' + icon + '</td>' +
	                      '</tr>';
	            newTableBody.innerHTML += row;

	        });
	        
	        // 기존 tbody 엘리먼트를 새로운 tbody로 교체
	        //tableBody.parentNode.replaceChild(newTableBody, tableBody);
            // 기존 tbody 엘리먼트를 새로운 tbody로 교체
	            if (tableBody && tableBody.parentNode) { // tableBody가 null이 아니고 부모가 존재하는 경우에만 실행
	                tableBody.parentNode.replaceChild(newTableBody, tableBody);
	            }
	            tableBody = newTableBody; // tableBody 업데이트

	            },  //success
	            error: function(xhr, status, error) {
	                // AJAX 요청이 실패했을 때 실행되는 부분
	                //console.log("데이터를 불러오지 못했습니다. 오류 메시지:", error);
	                console.error(error);
	            } //error
	        }); //ajax
	      }
  });  