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
<li> 초기값(Bean): <jsp:getProperty name="msg1" property="message" /> </li>
<li> 초기값(Jsp tag): <%= msg1.getMessage() %> </li>
<jsp:setProperty name="msg1" property="message" value="Changed" />
<li> 변경된 값(Bean): <jsp:getProperty name="msg1" property="message" /> </li>
<li> 변경된 값(): ${msg1.message} </li>
</ul>
</body>
</html>