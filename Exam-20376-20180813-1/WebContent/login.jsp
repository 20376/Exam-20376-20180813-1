<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">登录页面</h2>
<form action="check.jsp" method="post">
<table align="center" width="100">
<tr><td>姓名:</td>
<td><input type="text" name="username"></td></tr>
<tr><td>密码:</td><td><input type="password" name="userpwd"></td></tr>
<tr><td><input type="submit" value="登录"/></td>
<td><input type="reset" value="取消"/></td></tr>
</table>
</form><center>
<a href="pages/index.jsp">点击进入主页面</a></center>
</body>
</html>
