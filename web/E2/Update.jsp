<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<jsp:useBean id="db" class="bean.ConfirmBean"></jsp:useBean>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");
    String name = request.getParameter("name");
    if (name == null) {
        name = "";
    }
    byte b[] = name.getBytes("gb2312");
    name = new String(b);
    String newemail = request.getParameter("newemail");
    String newphone = request.getParameter("newphone");
    String sql = "select * from school where realname='" + name + "'";
    if (db.executeQuery(sql)) {
        String condition1 =
                "UPDATE school SET email = '" + newemail + "' WHERE realname=" + "'" + name + "'";
        String condition2 =
                "UPDATE school SET phone = '" + newphone + "' WHERE realname=" + "'" + name + "'";
        db.executeUpdate(condition1);
        db.executeUpdate(condition2);
        out.println("修改个人资料成功！！！");
    } else {
        out.println("修改个人资料失败！！！");
    }
%>
</body>
</html>
