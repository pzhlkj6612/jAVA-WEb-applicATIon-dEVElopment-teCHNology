<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Teacher</title>
</head>
<body>
<jsp:include page="Title.jsp"></jsp:include>
<form action="Information.jsp" method="post">
    ��ʦ��ѯ<br/><br/>
    ��ʦ����: <input type="text" name="name"><br/><br/>
    ��ʦְ��: <select name="zhicheng" size=1>
    <option value="����">����</option>
    <option value="������">������</option>
    <option value="��ʦ">��ʦ</option>
    <option value="����">����</option>
</select><br/><br/>
    ����ѧԺ: <select name="xueyuan" size=1>
    <option value="�����ѧԺ">�����ѧԺ</option>
    <option value="��ѧԺ">��ѧԺ</option>
    <option value="ͨ��ѧԺ">ͨ��ѧԺ</option>
    <option value="�����ѧԺ">�����ѧԺ</option>
    <option value="���ù���ѧԺ">���ù���ѧԺ</option>
</select><br/><br/>
    <input type="submit" value="��ѯ" name="sure">
</form>
</body>
</html>
