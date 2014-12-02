package com.express.pony.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import java.security.MessageDigest;
import com.express.pony.dao.RegistrationDAO;
import com.express.pony.model.Registration;

/**
 * Created by pratheep on 11/30/14.
 */
public class JdbcRegistrationDao implements RegistrationDAO {

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void insert(Registration registration){

        String sql = "INSERT INTO USER(FIRST_NAME, LAST_NAME, LOGIN_NAME, EMAIL_ADDRESS, FAV_CATOGERY, PASSWORD) VALUES (?, ?, ?, ?, ?, md5(?))";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, registration.getFirstName());
            ps.setString(2, registration.getLastName());
            ps.setString(3, registration.getDisplayName());
            ps.setString(4, registration.getEmailAddress());
            ps.setString(5, registration.getFavCatogery());
            ps.setString(6, registration.getPassword());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);

        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {}
            }
        }
    }
}
