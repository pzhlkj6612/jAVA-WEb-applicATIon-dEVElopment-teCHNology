<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>LoginCheck</title>
</head>
<body>
<jsp:useBean id="wx" class="bean.ConfirmBean"/>
<%
    String name = request.getParameter("name");
    if (name == null || name.isEmpty()) {
        return;
    }
    String password = request.getParameter("password");
    if (password == null || password.isEmpty()) {
        return;
    }
    String pw = "";
    String sql = "select * from school where logname='" + name + "' and password='" + password + "'";
    if (wx.executeQuery(sql)) {
        session.setAttribute("id", String.valueOf(name));
        String message = "��½�ɹ�";
        session.setAttribute("success", String.valueOf(message));
        response.sendRedirect("Home.jsp");
    } else {
        String message = "��½ʧ�ܣ��û�������������";
        session.setAttribute("error", String.valueOf(message));
        response.sendRedirect("Login.jsp");
    }
%>
</body>
</html>
