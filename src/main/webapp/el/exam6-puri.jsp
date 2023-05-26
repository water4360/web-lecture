<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.book.BookVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//풀이 1번. 자바빈즈
	//안 쓸 것 같지만 써요... 데이터를 하나만 가져온다는 보장이 없기때문에...
	BookVO book = new BookVO();
	book.setTitle("풀이1 : 자바빈즈!");
	
	BookVO[] books = {book};
	
	pageContext.setAttribute("book1", books);
	
	
	
	
	
	
	//풀이 2번. Map 객체 + 배열
	Map<String, String> books2 = new HashMap<>();
	books2.put("title", "풀이2 : Map객체+배열!");
	
	Map[] book2 = {books2};
	
	pageContext.setAttribute("book2", book2);
	
	
	
	
	
	//풀이 3번. 자바빈즈 + 컬렉션
	//젤 자주 쓰임.
	BookVO books3 = new BookVO();
	books3.setTitle("풀이3 : 자바빈즈+컬렉션! 젤 자주쓰임.");
	
	//add하는거 까먹지 말고...ㅎㅎ
	List<BookVO> book3 = new ArrayList<>();
	book3.add(books3);
	
	pageContext.setAttribute("book3", book3);
	
	
	
	
	
	//4번. Map 객체 + 컬렉션
	Map<String, String> books4 = new HashMap<>();
	books4.put("title", "풀이4 : Map객체 + 컬렉션!");
	
	List<Map<String, String>> book4 = new ArrayList<>();
	book4.add(books4);
	
	pageContext.setAttribute("book4", book4);
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성공 출력 풀이!!!</title>
</head>
<body>
	<%-- 성공 출력..
		4가지 방법이 있음.
		1. 자바빈즈V
		2. 맵V
		3. 어레이V
		4. 어레이리스트V
		
		객체를 받아와야
		0번째 객체의 title = "성공"이어야함.
	--%>
	
	성공/실패?? ${ book1[0].title }<br>
	성공/실패?? ${ book2[0].title }<br>
	성공/실패?? ${ book3[0].title }<br>
	성공/실패?? ${ book4[0].title }<br>
</body>
</html>