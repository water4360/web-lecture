<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> b = new HashMap<>();
	b.put("isbn", "123-456");
	b.put("title", "EL은 무엇인가?");
	b.put("writer", "지유리");
	//pageContext에 갖다쓰기 위해 등록하는 과정.
	pageContext.setAttribute("book", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL을 Map에서도 써볼까?</title>
</head>
<body>
	<h1>Map에서는 key로 value를 가져온다는 걸 잊지마세요!</h1>
	1. ISBN : <%= b.get("isbn") %><br>
	2. EL로 ISBN : ${ book.isbn } <br>
	3. EL로 TITLE : ${ book.title }<br>
	<h3>얘는 empty라서 출력이 안돼요~ null이 아니라~</h3>
	4. EL로 COMPANY : ${ book.company }<br>
</body>
</html>