<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Information</title>
</head>
<body>
<jsp:include page="Title.jsp"></jsp:include>
<br/>
<jsp:useBean id="db" class="bean.ConfirmBean"></jsp:useBean>
<%
    response.setContentType("text/html;charset=gb2312");
    request.setCharacterEncoding("gb2312");

    String name = request.getParameter("name");
    if (name == null) {
        name = "";
    }
    byte a[] = name.getBytes("gb2312");
    name = new String(a);
    String zhicheng = request.getParameter("zhicheng");
    String xueyuan = request.getParameter("xueyuan");
    String sql = "select * from school where realname='" + name
            + "' and department='" + xueyuan + "' and occupation='" + zhicheng + "';";

    out.print("<Table Border>");
    out.print("<TR>");
    out.print("<TH width=100>" + "����");
    out.print("<TH width=100>" + "����");
    out.print("<TH width=50>" + "�Ա�");
    out.print("<TH width=50>" + "ѧԺ");
    out.print("<TH width=50>" + "��ַ");
    out.print("<TH width=50>" + "��������");
    out.print("<TH width=50>" + "ְ��");
    out.print("<TH width=50>" + "����");
    out.print("<TH width=50>" + "�绰����");
    out.print("<TH width=100>" + "���ڿγ�1");
    out.print("<TH width=100>" + "���ڿγ�2");
    out.print("</TR>");
    out.print("<TR>");

    if (db.executeQuery(sql)) {
        String num = db.rs.getString(1);
        out.print("<TD >" + num + "</TD>");
        String mingzi = db.rs.getString(4);
        out.print("<TD >" + mingzi + "</TD>");
        String gender = db.rs.getString(5);
        out.print("<TD >" + gender + "</TD>");
        String xy = db.rs.getString(6);
        out.print("<TD >" + xy + "</TD>");
        String dizhi = db.rs.getString(7);
        out.print("<TD >" + dizhi + "</TD>");
        String shengri = db.rs.getString(8);
        out.print("<TD >" + shengri + "</TD>");
        String zc = db.rs.getString(9);
        out.print("<TD >" + zc + "</TD>");
        String youxiang = db.rs.getString(10);
        out.print("<TD >" + youxiang + "</TD>");
        String dihua = db.rs.getString(11);
        out.print("<TD >" + dihua + "</TD>");
        String kc1 = db.rs.getString(12);
        out.print("<TD >" + kc1 + "</TD>");
        String kc2 = db.rs.getString(13);
        out.print("<TD >" + kc2 + "</TD>");
        out.print("</TR>");
    }

    out.print("</Table>");

%>
</body>
</html>
