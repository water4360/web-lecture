<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL에 대하여, 복습중</title>
</head>
<body>
	<%--
		http://localhost:8080/WebLecture/el/exam01.jsp?name=hong 입력시 화면에 hong 출력
	 --%>
	 
	 이름 : <%= request.getParameter("name") %> <br><br>
	 
	 이름 : ${ param.name } <br><br>
	 
	 아이디 : ${ param.id } <br><br>
</body>
</html>