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
<jsp:useBean id="msg1" class="testtest.Message" scope="application" />
<jsp:setProperty property="*" name="msg1"/>
<ul>
<li> <jsp:getProperty property="code" name="msg1"/> </li>
<li> <jsp:getProperty property="message" name="msg1"/> </li>
</ul>
</body>
</html>