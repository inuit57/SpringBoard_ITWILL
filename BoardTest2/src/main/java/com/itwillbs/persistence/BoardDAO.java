package com.itwillbs.persistence;

import java.util.List;

import com.itwillbs.domain.BoardVO;

public interface BoardDAO {
	// 글쓰기(create)
	public void create(BoardVO vo) throws Exception;

	public List<BoardVO> listALL() throws Exception; 
}
