<%@ page language="java" import="Dao.*,beans.*,DButil.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑</title>
</head>
<body>
 <%
 int id=Integer.parseInt(request.getParameter("id"));
FilmDao dao=new FilmDao();
Film f= dao.findById(id);
%>
<form action="update.jsp" method="post">
 <input type="hidden" value="<%=id%>" name="id">
 <div>
   编
   号:<input type="text" name="film_id" value="<%=f.getFilm_id()%>">
 </div>
 
 <div>
    标题:<input type="text" name="title" value="<%=f.getTitle()%>">
 </div> 
 <div>
    描述:<input type="text" name="description" value="<%=f.getDescription()%>">
 </div> 
 <div>
    语言:<input type="text" name="language" value="<%=f.getLanguage()%>">
 </div> 	
 <div><input type="submit" value="保存" >
      <input type="reset" value="重置">
 </div>
    </form>
</body>
</html>