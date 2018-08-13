<%@ page language="java" import="Dao.*,beans.*,DButil.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
request.setCharacterEncoding("utf-8");
String title,description,language;
int id;
title=request.getParameter("title");%>
<%=title%>
<% description=request.getParameter("description");
language=request.getParameter("language");
id=Integer.parseInt(request.getParameter("id"));%>
<%=id%>
<% FilmDao dao=new FilmDao();
Film o = new Film();
o.setFilm_id(id);
o.setTitle(title);
o.setDescription(description);
o.setLanguage(language);
	boolean flag = dao.save(o);
	String msg;
	if(flag){
		msg="修改成功";
	}
	else{
		msg="修改失败";
	}	
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>保存</title>
<script>
alert("<%=msg%>");
window.location.href="index.jsp";
</script>
</head>
<body>

</body>
</html>