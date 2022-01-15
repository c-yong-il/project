package com.cgv.dao;

import java.util.ArrayList;

import com.cgv.vo.NoticeVO;

public class NoticeDao extends DBConn{
	/**
	 * 글쓰기 : insert
	 */
	public int insert(NoticeVO vo) {
		int result = 0;
		String sql = "insert into cgv_notice values('n_'||sequ_cgv_notice.nextval,?,?,0,sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return result;
	}
	
	
	/**
	 * 전체 리스트 : select
	 */
	public ArrayList<NoticeVO> select() {
		ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
		String sql = "select rownum rno,nid, ntitle,nhits,to_char(ndate,'yyyy-mm-dd') ndate " + 
				" from (SELECT nid,ntitle,nhits,ndate FROM CGV_NOTICE " + 
				" order by ndate desc)";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				NoticeVO vo = new NoticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNhits(rs.getInt(4));
				vo.setNdate(rs.getString(5));
				
				list.add(vo);
			}
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * 공지사항 상세정보 : select(String nid, String name)
	 */
	public NoticeVO select(String nid, String name) {
		NoticeVO vo = new NoticeVO();
		String sql = "select ntitle, ncontent, nhits, to_char(ndate,'yyyy-mm-dd') ndate from cgv_notice " + 
				" where nid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, nid);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setNtitle(rs.getString(1));
				vo.setNcontent(rs.getString(2));
				vo.setNhits(rs.getInt(3));
				vo.setNdate(rs.getString(4));
			}
			
			if(name.equals("admin")) {
				close();   //사용자:close x, 관리자: close o
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return vo;
	}
	
	
	/**
	 * 조회수 업데이트 : updateHits(String nid)
	 * - 사용자 페이지만 조회수가 업데이트 되도록 한다.
	 */
	public void updateHits(String nid) {
		String sql = "update cgv_notice set nhits=nhits+1 where nid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	/**
	 * 공지사항 업데이트 : update(NoticeVO vo)
	 */
	public int update(NoticeVO vo) {
		int result = 0;
		String sql = "update cgv_notice set ntitle=?, ncontent=? where nid=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNid());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * 공지사항 삭제 : delete(String nid)
	 */
	public int delete(String nid) {
		int result = 0;
		String sql = "delete from cgv_notice where nid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, nid);			
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}//class


















