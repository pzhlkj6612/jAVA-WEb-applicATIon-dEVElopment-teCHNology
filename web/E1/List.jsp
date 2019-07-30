<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>My JSP 'List.jsp' starting page</title>
</head>

<body>
<%
    Connection con;
    Statement stm;
    ResultSet rs;
    String url, sql;
    String col2, col3, col5, col6;
%>
<div align="center"><span style="color: #000000; font-size: large; ">学籍管理系统</span></div>
<table width="75%" border="1" align="center">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>籍贯</th>
        <th>院系</th>
        <th>更改</th>
        <th>删除</th>
    </tr>
    <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            url = "jdbc:mysql://localhost:3306/university?serverTimezone=UTC";
            con = DriverManager.getConnection(url, "root", "123456");
            stm = con.createStatement();
            sql = "select * from student";
            rs = stm.executeQuery(sql);
            while (rs.next()) {
    %>
    <tr>
        <td align="center"><%=rs.getString(1)%>
        </td>
        <td align="center"><%=rs.getString(2) %>
        </td>
        <td align="center"><%=rs.getString(3) %>
        </td>
        <td align="center"><%=rs.getInt(4) %>
        </td>
        <td align="center"><%=rs.getString(5)  %>
        </td>
        <td align="center"><%=rs.getString(6)  %>
        </td>
        <td align="center"><a href="Change.jsp?xuehao=<%=rs.getString(1)%>">修改</a></td>
        <td align="center"><a href="Del.jsp?xuehao=<%=rs.getString(1)%>">删除</a></td>
    </tr>
    <%
            }

            rs.close();
            stm.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>
<br>
<div align="center"><a href="Insert.jsp">添加新记录</a></div>
</body>
</html>
