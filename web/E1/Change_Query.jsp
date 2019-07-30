<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>My JSP 'Change_Query.jsp' starting page</title>

</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
    String xuehao = request.getParameter("xuehao").trim();
    String name = request.getParameter("name").trim();
    String sex = request.getParameter("sex");
    if (sex.equals("female")) {
        sex = "男";
    } else {
        sex = "女";
    }
    int age = Integer.valueOf(request.getParameter("age"));
    String jiguan = request.getParameter("jiguan");
    String depart = request.getParameter("department");

    Connection con;
    Statement stm;
    String sql, url;
    url = "jdbc:mysql://localhost:3306/university?serverTimezone=UTC";
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    try {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        con = DriverManager.getConnection(url, "root", "123456");
        stm = con.createStatement();
        sql = "update student set name='" + name + "',sex='" + sex + "',age='" + age + "',jiguan='" + jiguan + "',dept='" + depart + "' where xuehao='" + xuehao + "'";
        System.out.println("sql=" + sql);
        stm.executeUpdate(sql);
        response.sendRedirect("List.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<br>
</body>
</html>
