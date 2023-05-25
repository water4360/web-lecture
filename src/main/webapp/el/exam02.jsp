<%@page import="kr.ac.kopo.book.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//여기 이 스크립트릿은 나중에 서블릿으로 빠질 것.
	//jsp에서는 자바코드 안보이게 할 거니깐.
	BookVO b = new BookVO();
	b.setIsbn("123-456");
	b.setTitle("EL이란 무엇인가?");
	b.setWriter("지유리");
	
	//공유영역(pageContent)에 "book"이란 이름으로 생성된 BookVO객체를 등록시키려고 함.
	pageContext.setAttribute("book", b);
	
	//"book"이라는 이름의 객체 조회
	BookVO book = (BookVO)pageContext.getAttribute("book");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL이 왜 편한지 모르겠다고요?</title>
</head>
<body>
	<h1>EL이 왜 편한지 모르겠다면... 1,2,3 순서대로 돌아가봅시다^^</h1>
	3. 더더더 원래라면 : <%=((BookVO)pageContext.getAttribute("book")).getIsbn() %><br>
	2. 걍 표현식으로 가져온 ISBN : <%= book.getIsbn() %><br>
	1. EL방식으로 가져온 ISBN : ${ book.isbn }<br><br>
	
	EL TITLE : ${ book.title }<br>
	
<%-- 	EL COMPANY : ${ book.company }<br> --%>
	<h3>exam03에서 왔습니다. 얘도 empty라고 뜰까요?</h3>
	<h6>아뇨. 500에러가 뜹니다. getter 메소드자체가 없어서요.</h6>
	<h6>자바빈즈 클래스에서 없는 값을 출력하려고 하면 그렇습니다.</h6>
	
	<h3>데이터의 집합을 이용할때 이 []를 쓸 수 있지만 많이 안써요!<br>
		이건 배열과 콜렉션에서만 주로 쓴다. 데이터의 집합!! 
	</h3>
	EL TITLE : ${ book['title'] }
	
</body>
</html>