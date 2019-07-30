<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>My JSP 'Del.jsp' starting page</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
    String xuehao = request.getParameter("xuehao").trim();
    String url, sql;
    Connection con;
    Statement stm;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        url = "jdbc:mysql://localhost:3306/university?serverTimezone=UTC";
        con = DriverManager.getConnection(url, "root", "123456");
        stm = con.createStatement();
        sql = "delete from student where xuehao='" + xuehao + "'";
        stm.executeUpdate(sql);
        stm.close();
        con.close();
        response.sendRedirect("List.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<br>
</body>
</html>
