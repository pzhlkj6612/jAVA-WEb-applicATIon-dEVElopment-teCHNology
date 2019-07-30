<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>My JSP 'Query.jsp' starting page</title>

</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
    String xuehao = request.getParameter("xuehao").trim();
    String xingming = request.getParameter("name").trim();
    String sex = request.getParameter("sex").trim();
    int age = Integer.valueOf(request.getParameter("age").trim());
    String jiguan = request.getParameter("jiguan").trim();
    String department = request.getParameter("department").trim();

    try {

        Connection con;
        Statement stm;
        String url, sql;
        Class.forName("com.mysql.jdbc.Driver");
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        url = "jdbc:mysql://localhost:3306/university?serverTimezone=UTC";
        con = DriverManager.getConnection(url, "root", "123456");
        stm = con.createStatement();
        sql = "insert into student values('" + xuehao + "','" + xingming + "','" + sex + "'," + age + ",'" + jiguan + "','" + department + "')";
        stm.executeUpdate(sql);
        stm.close();
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("List.jsp");

%>
<br>
</body>
</html>
