<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<jsp:include page="Title.jsp"/>

<p align="left"><font color="pink" weight="bold" size=6>�³�Աע��</font></p>
<form action="RegTable.jsp" method="post">
    <p align="left"><font color="red" size=4>��*Ϊ����д����</font></p><br/>
    ��ʵ������<input type=text name="realname"><br/>
    �û�����<input type="text" name="logname"><br/>
    ��¼���룺<input type="text" name="password"><br/>
    ����ȷ�ϣ�<input type="text" name="confirm"><br/>
    �����ʼ���<input type="text" name="email"><br/>
    �Ա�<input type="radio" name="sex" value="��" checked>��
    <input type="radio" name="sex" value="Ů">Ů<br/>
    ����ѧԺ��<select name="department" size=1>
    <option value="�����ѧԺ">�����ѧԺ</option>
    <option value="��ѧԺ">��ѧԺ</option>
    <option value="ͨ��ѧԺ">ͨ��ѧԺ</option>
    <option value="�����ѧԺ">�����ѧԺ</option>
    <option value="���ù���ѧԺ">���ù���ѧԺ</option>
</select><br/>
    �������£�<input type="text" name="birthday"><br/>
    ����ְ�ƣ�<select name="occupation" size=1>
    <option value="����">����</option>
    <option value="������">������</option>
    <option value="��ʦ">��ʦ</option>
    <option value="����">����</option>
</select><br/>
    ���ڿγ̣�<input type="text" name="course1"><br/>
    ��ϵ�绰��<input type="text" name="telnum"><br/>
    ��ͥסַ��<input type="text" name="add"><br/>
    <input type="submit" name="submit" value="�ύ">
</form>
</body>
</html>
