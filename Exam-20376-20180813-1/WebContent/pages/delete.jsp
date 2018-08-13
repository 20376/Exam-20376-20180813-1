<%@ page language="java" import="Dao.*,beans.*,DButil.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>delete</title>
</head>
<body>
 <%
 int id=Integer.parseInt(request.getParameter("id"));
 FilmDao dao=new FilmDao();
 Film f= dao.findById(id);
%>
<%Boolean flag=dao.deleteById(id); 
String msg;
	if(flag){
		msg="删除成功";
	}
	else{
		msg="删除失败";
	}	%>

</body>
</html>
<script>
alert("<%=msg%>");
window.location.href="index.jsp";
</script>