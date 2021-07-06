package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.BoardVO;

public interface BoardService {
	
	//글쓰기
	public void regist(BoardVO vo) throws Exception;

	public List<BoardVO> listALL() throws Exception;  
}
