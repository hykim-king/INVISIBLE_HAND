package com.pcwk.ehr.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.ehr.VO.AdminVO;
import com.pcwk.ehr.dao.AdminDao;

@Repository
public class AdminDaoImpl implements AdminDao {

    private final DataSource dataSource;

    @Autowired
    public AdminDaoImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public AdminVO getAdminById(String adminId) {
        AdminVO adminVO = null;
        String sql = "SELECT * FROM MEMBER WHERE MEMBERID = ?";
        try (Connection conn = dataSource.getConnection(); 
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, adminId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    adminVO = new AdminVO();
                    adminVO.setMemberId(rs.getString("MEMBERID"));
                    adminVO.setPassword(rs.getString("PASSWORD"));
                    adminVO.setMemberGrade(rs.getInt("MEMBERGRADE"));
                    adminVO.setMemberName(rs.getString("MEMBERNAME"));
                    adminVO.setEmail(rs.getString("EMAIL"));
                    adminVO.setNickname(rs.getString("NICKNAME"));
                    adminVO.setJoinDate(rs.getString("JOINDATE"));
                    adminVO.setUpdateDate(rs.getString("UPDATEDATE"));
                    adminVO.setIsVerified(rs.getString("ISVERIFIED"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminVO;
    }

    @Override
    public void updateAdmin(AdminVO adminVO) {
        // 管理者情報を更新する実装
        // JDBCまたは他のORMフレームワークを使用して更新操作を行います
    }
}

