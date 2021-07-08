package com.itwillbs.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	// 디비연결/자원해제 객체 - SqlSession
	@Inject
	private SqlSession sqlsession;
	
	// mapper주소 (mapper.xml 파일안에 작성된 주소값)
	private final static String namespace
	  ="com.itwillbs.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		sqlsession.insert(namespace+".create",vo);
	}

	@Override
	public List<BoardVO> listALL() throws Exception {
		return sqlsession.selectList(namespace+".listALL");
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {
		return sqlsession.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		sqlsession.update(namespace+".update" , vo); 
	}

	@Override
	public void delete(Integer bno) throws Exception {
		sqlsession.delete(namespace+".delete" , bno); 
	}
	
	
	
	

}
