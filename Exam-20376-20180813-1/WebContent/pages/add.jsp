<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
</head>
<body>
<form action="save.jsp" method="post">
<div>
   编
  号:<input type="text" name="id" />
 </div>
 
<div>
   标
   题:<input type="text" name="title" />
 </div>
 
 <div>
    描述:<input type="text" name="description" />
 </div> 
 <div>
    语言:<input type="text" name="language" />
 </div>	
 <div><input type="submit" value="保存" >
      <input type="reset" value="重置">
 </div>
    </form>
</body>
</html>