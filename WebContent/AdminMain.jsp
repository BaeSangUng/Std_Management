<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% 
	String admin_id = (String)session.getAttribute("sessionid");
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str="";
	
	try{
		
		String jdbUrl = "jdbc:mysql://localhost:3306/std_management";
		String dbId = "root";
		String dbPass = "4821";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbUrl, dbId, dbPass);
			
	;
	}catch(Exception e){
		e.printStackTrace();
		str="����";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login ȭ��</title>
</head>
<body>
	<%=str %>
<a href="AddStudent.jsp">�й��ο�</a>

</body>
</html>