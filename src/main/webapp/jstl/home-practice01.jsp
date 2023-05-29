<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page 지시자로 들어올 수 있는 것 3가지 : page, taglib, import -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String[] names = { "강길동", "홍길동", "윤길동", "박길동", "김길동" };

pageContext.setAttribute("names", names);
pageContext.setAttribute("length", names.length);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[exam03]forEach 태그 활용</title>
</head>
<body>

	<!-- 코드1 마지막 항목만 , 안나오게 하기 -->
	<c:forEach begin="0" end="${ fn:length(names) -1 }" var="i">
		<c:choose>
			<c:when test="${ i < fn:length(names) - 1 }">
				${ names[i] },&nbsp;&nbsp;
				</c:when>
			<c:when test="${ i == fn:length(names)-1 }">
				${ names[i] }&nbsp;&nbsp;
				</c:when>
		</c:choose>
	</c:forEach>
	<br>
	<br>


	<!-- 코드2 마지막 항목만 , 안나오게 하기 -->
	<c:forEach var="i" items="${names}" varStatus="status">
		<c:choose>
			<c:when test="${ !status.last }">
            ${i}~&nbsp;&nbsp;
        </c:when>
			<c:otherwise>
            ${i}&nbsp;&nbsp;
        </c:otherwise>
		</c:choose>
	</c:forEach>
	<br>
	<br>






</body>
</html>