<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>RegTable</title>
</head>
<body>
<jsp:useBean id="ssyyg" class="bean.ConfirmBean"/>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");

    String realname = request.getParameter("realname") == null ? "null" : request.getParameter("realname");
    String logname = request.getParameter("logname") == null ? "null" : request.getParameter("logname");
    String password = request.getParameter("password") == null ? "null" : request.getParameter("password");
    String email = request.getParameter("email") == null ? "null" : request.getParameter("email");
    String sex = request.getParameter("sex") == null ? "null" : request.getParameter("sex");
    String department = request.getParameter("department") == null ? "null" : request.getParameter("department");
    String occupation = request.getParameter("occupation") == null ? "null" : request.getParameter("occupation");
    String birthday = request.getParameter("birthday") == null ? "null" : request.getParameter("birthday");
    String telnum = request.getParameter("telnum") == null ? "null" : request.getParameter("telnum");
    String address = request.getParameter("add") == null || request.getParameter("add").isEmpty() ? "null" : request.getParameter("add");
    String course1 = request.getParameter("course1") == null || request.getParameter("course1").isEmpty() ? "null" : request.getParameter("course1");
    String course2 = request.getParameter("course2") == null || request.getParameter("course1").isEmpty() ? "null" : request.getParameter("course2");

    String sql = "insert into school values('1','" + logname + "','" + password + "','" + realname + "','" + sex + "','"
            + department + "','" + address + "','" + birthday + "','" + occupation +
            "','" + email + "','" + telnum + "','" + course1 + "','" + course2 + "')";

    ssyyg.executeUpdate(sql);
    response.sendRedirect("RegSuccess.jsp");

%>
</body>
</html>
