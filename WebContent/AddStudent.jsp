<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		
<h1>Student Insert</h1>
   <form method="post" action="ConfirmAdd.jsp">
      	�й� : <input type="text" name="student_id" maxlength="10"><br/>
      	�н����� : <input type="password" name="password" maxlength="10"><br/>
      	�г� : <input type="text" name="grade" maxlength="50"><br/>
      	�̸� : <input type="text" name="name" maxlength="50"><br/>
      	������� : <input type="text" name="birth" maxlength="50"><br/>
      	�б� : <input type="text" name="school" maxlength="50"><br/>
      	�а� : <input type="text" name="major" maxlength="50"><br/>
   <input type="submit" value="�л� �߰�">
   
   </form>
   
   <br />
   <a href="AdminMain.jsp">�ڷΰ���</a>

</body>
</html>