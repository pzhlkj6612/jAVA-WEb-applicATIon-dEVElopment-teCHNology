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
    ������Ҫ�޸������ʦ��������<input type="text" name="name"><br/>
    ������������:<input type="password" name="newpw">
    <input type="submit" value="ȷ��">
</form>
</body>
</html>
