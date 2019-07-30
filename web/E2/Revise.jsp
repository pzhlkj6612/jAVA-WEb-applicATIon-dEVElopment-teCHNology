<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Revise</title>
</head>
<body>
<jsp:include page="Title.jsp"/>
<form action="newinfo.jsp" method="post">
    请输入要修改信息老师的姓名:<input type=text name=name><br/>
    请输入新的邮箱:<input type=text name=newemail><br/>
    请输入新的电话号码:<input type=text name=newphone><br/>
    <input type=submit name="tijiao" value="提交">
</form>
</body>
</html>
