<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="testtest.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="msg1" class="testtest.Message" />
<ul>
<li> �ʱⰪ(Bean): <jsp:getProperty name="msg1" property="message" /> </li>
<li> �ʱⰪ(Jsp tag): <%= msg1.getMessage() %> </li>
<jsp:setProperty name="msg1" property="message" value="Changed" />
<li> ����� ��(Bean): <jsp:getProperty name="msg1" property="message" /> </li>
<li> ����� ��(): ${msg1.message} </li>
</ul>
</body>
</html>