<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>



<% 
	int student_id = Integer.parseInt(session.getAttribute("sessionid").toString());
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str="";
	try{
		String jdbUrl = "jdbc:mysql://localhost:3306/std_management";
		String dbId = "root";
		String dbPass = "4821";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbUrl, dbId, dbPass);
			
		String sql = "select * from student where student_id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, student_id);
		pstmt.execute();
		str=student_id+" ����";
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
<a href="StudentInfo.jsp">����</a>
   <a href="Register.jsp">���� ��û</a>
   <a href="Scholar.jsp">���л� ��Ȳ</a>
   <a href="Grading.jsp">����ǥ</a>
   <a href="Subject.jsp">������</a>
   <a href="SubjectPlan.jsp">���ǰ�ȹ��</a>
   <a href="scholar_main.jsp">���ǰ�ȹ��</a>
</body>
</html>