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
<ul>
<li>First Name: ${emp.name.firstName}
<li>Last Name: ${emp.name.lastName}
<li>Company Name: ${emp.company.companyName}
<li>Company Business: ${emp.company.address}
</ul>
</body>
</html>