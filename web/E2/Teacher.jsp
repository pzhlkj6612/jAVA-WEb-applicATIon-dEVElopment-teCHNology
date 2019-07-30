<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Teacher</title>
</head>
<body>
<jsp:include page="Title.jsp"></jsp:include>
<form action="Information.jsp" method="post">
    教师查询<br/><br/>
    教师姓名: <input type="text" name="name"><br/><br/>
    教师职称: <select name="zhicheng" size=1>
    <option value="教授">教授</option>
    <option value="副教授">副教授</option>
    <option value="讲师">讲师</option>
    <option value="助教">助教</option>
</select><br/><br/>
    所在学院: <select name="xueyuan" size=1>
    <option value="计算机学院">计算机学院</option>
    <option value="理学院">理学院</option>
    <option value="通信学院">通信学院</option>
    <option value="外国语学院">外国语学院</option>
    <option value="经济管理学院">经济管理学院</option>
</select><br/><br/>
    <input type="submit" value="查询" name="sure">
</form>
</body>
</html>
