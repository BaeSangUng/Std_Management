<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션 속성 설정 및 사용</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	session.setAttribute("id", id);
	session.setAttribute("passwd", passwd);
%>
id와 passwd 세션 속성을 설정하였습니다.<br />

id속성의 속성값은 <%=(String)session.getAttribute("id") %>이고<br/>
passwd속성의 속성값은 <%=(String)session.getAttribute("passwd") %>입니다.
</body>
</html>