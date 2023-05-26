<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core-if, choose 태그 실습</title>
</head>
<body>
	<!-- 
		http://localhost:8080/WebLecture/jstl/exam02.jsp?type=S 요청시
		관리자님, 환영합니다 메세지가 출력되고
		http://localhost:8080/WebLecture/jstl/exam02.jsp?type=U 요청시
		XXX 회원님, 환영합니다 메세지가 출력되도록.
		
		그럼 param의 type이 S이나 U냐에 따라 나뉘겠지.
		이 조건을 test라는 문구가 구별함. test라고 딱 정해져있음.
		그리고 혹시나 type에 다른 문자를 넣어도 에러가 나지는 않음!!!
	-->
<%-- 	<c:if test="${ param.type == 'S' }"> --%>
<!-- 		<h2>관리자님, 환영합니다^^</h2> -->
<%-- 	</c:if> --%>
<%-- 	<c:if test="${ param.type eq 'U' }"> --%>
<!-- 		<h2>OOO회원님, 환영합니다!</h2> -->
<%-- 	</c:if> --%>

		<c:choose>
			<c:when test="${ param.type == 'S' }">
			<h2>관리자님, 환영합니다^^</h2>
			</c:when>
			<c:when test="${ param.type == 'U' }">
			<h2>OOO회원님, 환영합니다!</h2>
			</c:when>
			<c:otherwise>
			<h2>파라미터가 잘못되었습니다</h2>
			</c:otherwise>
		</c:choose>

</body>
</html>