<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>ResetPassword</title>
</head>
<body>
<jsp:include page="Title.jsp"/>
<br/>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");
%>
<form action="NewPassword.jsp" method="post">
    请输入要修改密码教师的姓名：<input type="text" name="name"><br/>
    请输入新密码:<input type="password" name="newpw">
    <input type="submit" value="确定">
</form>
</body>
</html>
