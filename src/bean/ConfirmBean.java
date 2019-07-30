package bean;

import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.*;

public class ConfirmBean {
    private Connection con = null;
    public ResultSet rs = null;

    public ConfirmBean() {//构造函数
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("123456");
        dataSource.setServerName("127.0.0.1");
        dataSource.setDatabaseName("test");

        try {
            dataSource.setServerTimezone("UTC");
            con = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void executeInsert(String sql) {
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            System.err.println("执行插入有错误:" + ex.getMessage());
        }
    }
    //display data

    public boolean executeQuery(String sql) {
        try {
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            System.err.println("执行查询有错误:" + ex.getMessage());
        }
        return false;
    }

    //delete data
    public void executeDelete(String sql) {
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            System.err.println("执行删除有错误:" + ex.getMessage());
        }
    }

    public void executeUpdate(String sql) {
        try {
            Statement stmt = con.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
            System.err.println("执行修改有错误:" + ex.getMessage());
        }
    }

    public void CloseDataBase() {
        try {
            con.close();
        } catch (Exception end) {
            System.err.println("执行关闭Connection对象有错误:" + end.getMessage());
        }
    }
}
