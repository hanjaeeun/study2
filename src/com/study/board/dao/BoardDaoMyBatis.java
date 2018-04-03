package com.study.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;

import com.study.util.MyBatisFactory;

public class BoardDaoMyBatis implements IBoardDao{
	
	private String namespace = "com.study.board.dao.IBoardDao.";

	@Override
	public int getBoardCount(Connection conn, BoardSearch boardSearch) throws SQLException {
		SqlSession session = MyBatisFactory.getSqlSession().openSession();
		try {
			int cnt = session.selectOne(namespace + "getBoardCount", boardSearch);
			return cnt;
		}finally{
		
		session.close();
		}
				
		
	}

	@Override
	public List<Board> getBoardList(Connection conn, BoardSearch boardSearch) throws SQLException {
		SqlSession session = MyBatisFactory.getSqlSession().openSession();
		try {
			List<Board> list = session.selectList(namespace + "getBoardList",boardSearch);
			return list;
		}finally{
			session.close();
		}
	}

	@Override
	public Board getBoard(Connection conn, Integer bo_no) throws SQLException {
		SqlSession session = MyBatisFactory.getSqlSession().openSession();
		try {
			 Board board = session.selectOne(namespace+"getBoard",bo_no);
			  return board;
			//return session.selectOne("com.study.member.dao.IMemberDao.getMember",mem_id);
		} finally {
			session.close();
		}
	}

	@Override
	public int insertBoard(Connection conn, Board board) throws SQLException {
		SqlSession session = MyBatisFactory.getSqlSession().openSession();
		try {
			  int cnt = session.insert(namespace+"insertBoard",board);
			  session.commit();
			  return cnt;
			//return session.selectOne("com.study.member.dao.IMemberDao.getMember",mem_id);
		} finally {
			session.close();
		}
	}

	@Override
	public int updateBoard(Connection conn, Board board) throws SQLException {
		SqlSession session = MyBatisFactory.getSqlSession().openSession();
		try {
			  int cnt= session.update(namespace+"updateBoard",board);
			  session.commit();
			  return cnt;
		
		} finally {
			session.close();
		}
	}
	/*@Override
	public int deleteBoard(Connection conn, Board board) throws SQLException {
		StringBuffer query = new StringBuffer();
	     query.append(" DELETE FROM TB_BOARD1 WHERE BO_NO = ? ");
		 PreparedStatement pstmt = conn.prepareStatement(query.toString());
	     pstmt.setInt(1, board.getBo_no());
	   int updCnt = pstmt.executeUpdate();
	   
	    return updCnt;
	}*/

}
