<%--
  Created by IntelliJ IDEA.
  User: Jinx
  Date: 2018/6/26
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="Title.jsp"></jsp:include>
<br/>
<p align="center"><font color="Green" size="6">��ӭ��½��ʦ����ϵͳ</font></p><br/>
<form action="LoginCheck.jsp" name="formlogin" method="post">
    ��¼��:<input type="text" name="name"><br/><br/>
    ����:<input type="password" name="password"><br/><br/>
    <input type="submit" name="submit" value="��½">
</form>
</body>
</html>
