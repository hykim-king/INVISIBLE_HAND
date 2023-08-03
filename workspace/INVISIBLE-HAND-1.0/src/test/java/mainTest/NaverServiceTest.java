package mainTest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;

import org.junit.Before;
import org.junit.Test;


import com.pcwk.ehr.serviceImpl.NaverSearchServiceImpl;

public class NaverServiceTest {


    private NaverSearchServiceImpl naverSearchService;
    private HttpURLConnection httpURLConnection;

    @Before
    public void setUp() {
        naverSearchService = new NaverSearchServiceImpl();
        httpURLConnection = mock(HttpURLConnection.class);
    }

    @Test
    public void testDoNaverSearch_Success() throws IOException {
        String query = "중소기업";
        String response = naverSearchService.doNaverSearch("중소기업");
        System.out.println(response);
        // HttpURLConnection Mock 객체에 대한 설정
        when(httpURLConnection.getResponseCode()).thenReturn(HttpURLConnection.HTTP_OK);
        when(httpURLConnection.getInputStream()).thenReturn(new ByteArrayInputStream(response.getBytes()));
             
        // 테스트 대상 메서드 호출
        String result = naverSearchService.doNaverSearch(query);
        System.out.println("result"+result);
        
        // 예상한 응답과 결과가 일치하는지 검증
        assertEquals(response, result);
    }

}
