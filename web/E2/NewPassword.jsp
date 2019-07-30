<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>NewPassword</title>
</head>
<body>
<jsp:include page="Title.jsp"/>
<jsp:useBean id="db" class="bean.ConfirmBean"/>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");
    String name = request.getParameter("name");
    if (name == null) {
        name = "";
    }
    byte b[] = name.getBytes("gb2312");
    name = new String(b);
    String newpw = request.getParameter("newpw");
    String sql = "select * from school where realname='" + name + "'";
    if (db.executeQuery(sql)) {
        String condition = "UPDATE school SET password = '" + newpw + "' WHERE realname=" + "'" + name + "'";
        db.executeUpdate(condition);
        out.println("ÐÞ¸ÄÃÜÂë³É¹¦£¡£¡£¡");
    } else {
        out.println("ÐÞ¸ÄÃÜÂëÊ§°Ü£¡£¡£¡");
    }
%>
</body>
</html>
