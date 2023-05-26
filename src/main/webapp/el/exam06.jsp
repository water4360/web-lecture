<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.book.BookVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//3번
// 	Map<String, String> b = new HashMap<>();
// 	b.put("title", "성공");
// 	b.put("writer", "지유리");
	
// 	//pageContext에 갖다쓰기 위해 등록하는 과정.
// 	pageContext.setAttribute("books", b);

%>
<%
	//1번. 자바빈즈
	BookVO[] books = new BookVO[1];
	books[0] = new BookVO();
	books[0].setTitle("자바빈즈에서 성공");
	
	pageContext.setAttribute("book1", books);

	
	
	//2번. Map + 리스트
	Map<String, String> maps = new HashMap<>();
	maps.put("title", "Map에서 성공");
	
	List<Map<String, String>> book2 = new ArrayList<>();
	book2.add(maps);
	
	pageContext.setAttribute("book2", book2);	
	
			
	//3번. 배열 + 자바빈즈
	BookVO[] book3 = new BookVO[1];
	book3[0] = new BookVO();
	book3[0].setTitle("BookVO 어레이에서 성공");
	
	pageContext.setAttribute("book3", book3);
	
	
	
	//4번. 리스트 + 자바빈즈
	List<BookVO> book4 = new ArrayList<>();
	BookVO book = new BookVO();
	book.setTitle("List에서 성공");
	book4.add(book);
	
	pageContext.setAttribute("book4", book4);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성공하는 4가지 방법</title>
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