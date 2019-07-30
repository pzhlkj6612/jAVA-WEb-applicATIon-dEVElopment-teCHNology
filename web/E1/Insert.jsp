<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<html>
<head>
    <title>添加新记录</title>
</head>

<body>
<div align="center"><font color="#000000" size="5">添加新记录</font></div>
<form name="form1" method="post" action="Query.jsp">
    <table width="25%" border="1" cellspacing="1" cellpadding="1" align="center">
        <tr>
            <td align="center">学号</td>
            <td><input type="text" name="xuehao" size="7"></td>
        </tr>
        <tr>
            <td align="center">姓名</td>
            <td><input type="text" name="name" size="8"></td>
        </tr>
        <tr>
            <td align="center">性别</td>
            <td>
                <select name="sex">
                    <option value="男" selected>男</option>
                    <option value="女">女</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center">年龄</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td align="center">籍贯</td>
            <td><input type="text" name="jiguan" size="8"></td>
        </tr>
        <tr>
            <td align="center">院系</td>
            <td><input type="text" name="department" size="8"></td>
        </tr>
        <tr align="center">
            <td colspan="2" align="center">
                <input type="submit" name="Submit" value="提交">
                <input type="reset" name="reset" value="清空">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
