<%@ page language="java" import="java.util.*,Dao.*,beans.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String username=(String)session.getAttribute("u_name");
if(username==null)
response.sendRedirect("/login.jsp");
else
	out.print(username+"欢迎登录！");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>列表</title>
</head>
<body>
<span><center>列表</center></span><a href="add.jsp" >添加</a>
<table align="center" cellpadding="8" cellspacing="0" border="1">
<tr><th>编号</th><th>标题</th><th>描述</th><th>语言</th><th colspan=2>操作 </th></tr>
<%List<Film> list=new ArrayList<>();
FilmDao dao=new FilmDao();
list=dao.findAll();%>
<%for (int i=0;i<list.size();i++){
	Film f=(Film)list.get(i);%>
<tr>
	<td><%=f.getFilm_id()%></td>
	<td><%=f.getTitle()%></td>
	<td><%=f.getDescription()%></td>
	<td><%=f.getLanguage()%></td>
	<td><a href="edit.jsp?id=<%=f.getFilm_id() %>">编辑</a></td>
	<td><a href="delete.jsp?id=<%=f.getFilm_id() %>">删除</a></td>
</tr>	
<%} %>
</table>

</body>
</html>