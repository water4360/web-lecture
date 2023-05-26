<%@page import="kr.ac.kopo.book.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	BookVO book = new BookVO("123-456","JSTL","홍길동");
	pageContext.setAttribute("book", book);
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예시</title>
</head>
<body>
	ISBN : ${ book.isbn }<br>
	TITLE : <a href="../el/exam06.jsp"><c:out value="${ book.title }"></c:out></a><br>
	WRITER : ${ book.writer }<br>

</body>
</html>