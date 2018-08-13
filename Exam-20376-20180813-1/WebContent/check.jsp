<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String userName=request.getParameter("username");
String userPwd=request.getParameter("userpwd");
if("admin".equals(userName)){
	session.setAttribute("u_name", userName);
	request.getRequestDispatcher("/pages/index.jsp").forward(request, response);
}else{
	request.getRequestDispatcher("/error.jsp").forward(request, response);}%>
</body>
</html>
