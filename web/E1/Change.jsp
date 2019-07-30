<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>

    <title>My JSP 'Change.jsp' starting page</title>
</head>

<body>&nbsp;
<br>
<%
    Connection con;
    Statement stm;
    ResultSet rs;
    String url, sql;
    request.setCharacterEncoding("utf-8");
    String xuehao = request.getParameter("xuehao").trim();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        url = "jdbc:mysql://localhost:3306/university?serverTimezone=UTC";
        con = DriverManager.getConnection(url, "root", "123456");
        stm = con.createStatement();
        sql = "select * from student where xuehao='" + xuehao + "'";
        rs = stm.executeQuery(sql);
        while (rs.next()) {
%>
<form action="Change_Query.jsp?xuehao=<%=xuehao%>" method="post">
    <table width=20% border=1>
        <tr>
            <td width=40% align="center">学号 <br></td>
            <td width=60% align="center"><%=rs.getString(1)%>
            </td>
        </tr>
        <tr>
            <td width=40% align="center">姓名 <br></td>
            <td width=60% align="center"><input type="text" name="name" size="8" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>

            <td width=40% align="center">性别 <br></td>
            <td>
                <%
                    String sex = rs.getString(3).trim();
                    if (sex.equals("男")) {
                %>
                <select name="sex" size="1">
                    <option value="female" selected>男</option>
                    <option value="male">女</option>
                </select>
                <%
                } else {
                %>
                <select name="sex" size="1">
                    <option value="female">男</option>
                    <option value="male" selected>女</option>
                </select>
                <%
                    }
                %>
            </td>
        </tr>
        <tr>
            <td width=40% align="center">年龄 <br></td>
            <td width=60% align="center"><input type="text" name="age" size="8" value="<%=rs.getInt(4)%>"></td>
        </tr>
        <tr>
            <td width=40% align="center">籍贯 <br></td>
            <td width=60% align="center"><input type="text" name="jiguan" size="8" value="<%=rs.getString(5)%>"></td>
        </tr>
        <tr>
            <td width=40% align="center">系别 <br></td>
            <td width=60% align="center"><input type="text" name="department" size="8" value="<%=rs.getString(6)%>">
            </td>
        </tr>

        <tr align="center">
            <td colspan="2" align="center">
                <input type="submit" name="submit" value="提交">
                <input type="reset" name="reset" value="清空">
            </td>
        </tr>
    </table>
</form>
<%
        }
        rs.close();
        stm.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
</body>
</html>
