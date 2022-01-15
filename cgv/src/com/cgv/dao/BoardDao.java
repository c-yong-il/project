package com.cgv.dao;

import java.util.ArrayList;

import com.cgv.vo.BoardVO;

public class BoardDao extends DBConn {
	/**
	 * 게시글 삭제 : delete(String bid)
	 */
	public int delete(String bid) {
		int result = 0;
		String sql = "delete from cgv_board where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 게시글 수정 : update(BoardVO vo) 
	 */
	public int update(BoardVO vo) {
		int result = 0;
		String sql = "update cgv_board set btitle=?, bcontent=? where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	/**
	 * 게시글 조회수 업데이트 : updateHits(String bid)
	 */
	public void updateHits(String bid) {
		String sql = "update cgv_board set bhits=bhits+1 where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 게시글 상세정보 : select(String bid) 
	 */
	public BoardVO select(String bid, String pageName) {
		BoardVO vo = new BoardVO();
		String sql = "select btitle, bcontent,bhits,to_char(bdate,'yyyy-mm-dd') bdate from cgv_board"
				+ " where bid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setBtitle(rs.getString(1));
				vo.setBcontent(rs.getString(2));
				vo.setBhits(rs.getInt(3));
				vo.setBdate(rs.getString(4));
			}
			
			if(pageName.equals("content")) {
				updateHits(bid);
			}else {
				close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * 게시판 전체 리스트 : select()
	 */
	public ArrayList<BoardVO> select(){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = " select rownum rno,bid,btitle,bhits,to_char(bdate,'yyyy-mm-dd') bdate " + 
				" from (select bid,btitle,bhits,bdate from cgv_board " + 
				"  order by bdate desc)";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBhits(rs.getInt(4));
				vo.setBdate(rs.getString(5));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
	
	/**
	 * 게시판 글쓰기 : insert(BoardVO vo)
	 */
	public int insert(BoardVO vo) {
		int result = 0;
		String sql = "insert into cgv_board values('b_'||sequ_cgv_board.nextval,?,?,0,sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
