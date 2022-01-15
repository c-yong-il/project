package com.cgv.dao;

import com.cgv.vo.MemberVO;

public class MemberDao extends DBConn {
    /**
     * insert(MemberVO vo) : ȸ������
     */
    public int insert(MemberVO vo) {
        int result = 0;
        String sql = "insert into cgv_member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());
            pstmt.setString(3, vo.getName());
            pstmt.setString(4, vo.getDatepicker());
            pstmt.setString(5, vo.getGender());
            pstmt.setString(6, vo.getEmail1());
            pstmt.setString(7, vo.getEmail2());
            pstmt.setString(8, vo.getAddr1());
            pstmt.setString(9, vo.getAddr2());
            pstmt.setString(10, vo.getTel());
            pstmt.setString(11, vo.getHp1());
            pstmt.setString(12, vo.getHp2());
            pstmt.setString(13, vo.getHp3());
            pstmt.setString(14, vo.getHobbylist());
            pstmt.setString(15, vo.getIntro());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * getLoginResult(MemberVO vo) : �α��� üũ
     */
    public int getLoginResult(MemberVO vo) {
        int result = 0;
        String sql = "select count(*) from cgv_member where id=? and pass=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());

            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
