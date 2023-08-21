package com.pcwk.ehr.serviceImpl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.VO.PostVO;
import com.pcwk.ehr.cmn.PcwkLoger;
import com.pcwk.ehr.dao.PostDao;
import com.pcwk.ehr.service.PostService;

@Service
public class PostServiceImpl implements PostService, PcwkLoger {

	@Autowired
	PostDao dao;

	@Override
	public int doSave(PostVO inVO) throws SQLException {
		return dao.doSave(inVO);
	}

	@Override
	public int doDelete(PostVO inVO) throws SQLException {
		return dao.doDelete(inVO);
	}

	@Override
	public int doUpdate(PostVO inVO) throws SQLException {
		return dao.doUpdate(inVO);
	}

	@Override
	public PostVO doSelectOne(PostVO inVO) throws SQLException {
		//1. 단건조회
		//2. 조회 count 증가
		PostVO vo = dao.doSelectOne(inVO);
		
		if(null != vo) {
			dao.doUpdateViews(vo);
		}
		return vo;

	}

	@Override
	public List<PostVO> doRetrieve(PostVO inVO) throws SQLException {
		return dao.doRetrieve(inVO);
	}

	@Override
	public int doUpdateLikes(int postNumber, String likes, String nickname) throws SQLException {
		int updatedLikes = Integer.parseInt(likes);
        int currentLikes = dao.doUpdateLikes(postNumber, likes, nickname);

        if (currentLikes == updatedLikes + 1) {
            // 좋아요 취소한 경우
            return 0;
        } else if (currentLikes == updatedLikes - 1) {
            // 좋아요 추가한 경우
            return 1;
        } else {
            // 업데이트 실패
            return -1;
        }
    }

	@Override
	public int doUpdateViews(PostVO inVO) throws SQLException {
		return dao.doUpdateViews(inVO);
	}

	// admin용 게시글 삭제
	@Override
	public int deleteAll(List<Integer> delPostNums) throws SQLException {
	    int count = 0;
	    for (int postNum : delPostNums) {
	        PostVO post = new PostVO();
	        post.setPostNumber(postNum);
	        dao.doDelete(post);
	        count++;
	    }
	    return count;
	}
	
	

}
