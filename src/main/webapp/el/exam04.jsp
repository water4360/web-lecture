<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String[] nameArr = {"홍길동","강길동","고길동"};
	pageContext.setAttribute("names", nameArr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 꺽쇠</title>
</head>
<body>
	<h1>EL에서 꺽쇠를 쓰는 곳! 배열, 그리고 컬렉션</h1>
	1. 첫번째이름 : <%= nameArr[0] %><br>
	<h3>명시적 형변환으로, 받아와서, 그 요소의, 0번째 값... 너무 길죠?</h3>
	2. 첫번째이름 : <%= ((String[])pageContext.getAttribute("names"))[0] %><br>
	<h3>하지만 EL을 이용하면? 이렇게 쓸 수 있다~~</h3>
	3. 첫번째이름 : ${ names[0] }<br>
	<h3>만약 존재하지 않는 4번째 이름을 받는다면?</h3>
	<h3>조건식을 안써도 되고, 에러가 나지 않는 것이 큰 장점!</h3>
	4. 네번째 이름 : ${ names[4] }<br>
</body>
</html>