<%--
  Created by IntelliJ IDEA.
  User: Jinx
  Date: 2018/6/26
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>newinfo</title>
</head>
<body>
<jsp:useBean id="ssyyg" class="bean.ConfirmBean"></jsp:useBean>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");

    /*
        ������Ҫ�޸���Ϣ��ʦ������:<input type=text name=name><br/>
    �������µ�����:<input type=text name=newemail><br/>
    �������µĵ绰����:<input type=text name=newphone><br/>
     */

    String sql = "update school set email='" + request.getParameter("newemail") + "',phone='"
            + request.getParameter("newphone") + "' where realname='" + request.getParameter("name") + "'";

    ssyyg.executeUpdate(sql);
    response.sendRedirect("Home.jsp");
%>
</body>
</html>
