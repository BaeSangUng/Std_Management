<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>

<% 

	int student_id = Integer.parseInt(session.getAttribute("sessionid").toString());
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str="";
	
	
	String rpassword = "";
	String rschool = "";
	String rmajor  = "";
	String rstudent_id  = "";
	String rname  = "";
	String rgrade  = "";
	String rbirth  = ""; 
	
	
	try{
		String jdbUrl = "jdbc:mysql://localhost:3306/std_management";
		String dbId = "root";
		String dbPass = "4821";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbUrl, dbId, dbPass);
			
		
		
		String sql = "select * from student where student_id = ?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, student_id);
		//pstmt.execute();
		//str=student_id+" ����";
		
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			
			 rpassword = rs.getString("password");
			 rschool = rs.getString("school");
			 rmajor = rs.getString("major");
			 rstudent_id = rs.getString("student_id");
			 rname = rs.getString("name");
			 rgrade = rs.getString("grade");
			 rbirth = rs.getString("birth");
		}
		
	}catch(Exception e){
		e.printStackTrace();
		//str="����";
	}
		
		
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="StudentRevise.jsp">


<table border="2">
<tr>
	<td>�й�</td>
	<td><%=rstudent_id %></td> 
</tr>
<tr>
	<td>����</td>
	 <td><%=rmajor %></td> 
</tr>
<tr>
	<td>�̸�</td> 
	<td><%=rname %></td> 
</tr>
<tr>
	<td>�г�</td>
	 <td><%=rgrade %></td> 
</tr>
<tr>
	<td>�������</td> 
	<td><input type="text" name="birth" value="<%=rbirth%>"></td> 
</tr>
<tr>
	<td>��й�ȣ</td>
	 <td><input type="password" name="password" value="<%=rpassword%>"></td> 
</tr>
<input type="submit" value="�����ϱ�" id="submit" onclick="submit_click()">
</form>

<script>
function submit_click() {
	alert("������ �մϴ�!");
}
</script>

<!-- 
     ���̺� ���� ���� ���
	<%out.println("�б� " + rschool);%><br/>
	<%out.println("���� " + rmajor);%><br/>
	<%out.println("�̸� " + rname);%><br/>
	<%out.println("�г� " + rgrade);%><br/>
	<%out.println("������� " + rbirth);%><br/>
	<%out.println("��й�ȣ " + rpassword);%><br/>
	 -->
</table>

</body>
</html>
