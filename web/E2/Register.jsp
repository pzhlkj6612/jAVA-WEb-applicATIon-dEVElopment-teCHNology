<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<jsp:include page="Title.jsp"/>

<p align="left"><font color="pink" weight="bold" size=6>新成员注册</font></p>
<form action="RegTable.jsp" method="post">
    <p align="left"><font color="red" size=4>带*为必填写部分</font></p><br/>
    真实姓名：<input type=text name="realname"><br/>
    用户名：<input type="text" name="logname"><br/>
    登录密码：<input type="text" name="password"><br/>
    密码确认：<input type="text" name="confirm"><br/>
    电子邮件：<input type="text" name="email"><br/>
    性别：<input type="radio" name="sex" value="男" checked>男
    <input type="radio" name="sex" value="女">女<br/>
    所在学院：<select name="department" size=1>
    <option value="计算机学院">计算机学院</option>
    <option value="理学院">理学院</option>
    <option value="通信学院">通信学院</option>
    <option value="外国语学院">外国语学院</option>
    <option value="经济管理学院">经济管理学院</option>
</select><br/>
    出生年月：<input type="text" name="birthday"><br/>
    现在职称：<select name="occupation" size=1>
    <option value="教授">教授</option>
    <option value="副教授">副教授</option>
    <option value="讲师">讲师</option>
    <option value="助教">助教</option>
</select><br/>
    教授课程：<input type="text" name="course1"><br/>
    联系电话：<input type="text" name="telnum"><br/>
    家庭住址：<input type="text" name="add"><br/>
    <input type="submit" name="submit" value="提交">
</form>
</body>
</html>
