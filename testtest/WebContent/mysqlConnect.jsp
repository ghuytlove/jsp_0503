<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Connection connection = null;
Statement st = null;
String driver = "com.mysql.cj.jdbc.Driver";
String url ="jdbc:mysql://localhost:3306/db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

try {
    Class.forName(driver);
    connection = DriverManager.getConnection(url,"root","123123");
    st = connection.createStatement();
    String sql;
    sql = "select * FROM student;";
    ResultSet rs = st.executeQuery(sql);
    while (rs.next()) {
        String sqlRecipeProcess = rs.getString("dept");
    	System.out.println(sqlRecipeProcess);
    }
    rs.close();
    st.close();
    connection.close();
} catch (SQLException se1) {
    se1.printStackTrace();
} catch (Exception ex) {
    ex.printStackTrace();
} finally {
    try {
        if (st != null)
            st.close();
    } catch (SQLException se2) {
    }
    try {
        if (connection != null)
            connection.close();
    } catch (SQLException se) {
        se.printStackTrace();
    }
}    


출처: https://dwfox.tistory.com/53 [DWFOX]
%>
</body>
</html>