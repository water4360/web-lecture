<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		width: 50%;
		height: 500px;
		border: 3px dotted royalblue;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<%-- 시점상 body가 로드 되기 전이므로 이벤트를 처리할 그게 필요함 --%>
<script>
	<%-- 제이쿼리는 무조건 달러($)로 사용!
	$(식별자).함수() 이게 문법 --%>
	
	$(document).ready(function() {
		
		$('button').click(function() {
			//2023-06-21 박스오피스 요청하고싶음.
			//그게 바로 얘. 제이쿼리 ajax.
			//url 머쓸지, get?post? 파라미터는 뭔지?
			//그 형태는 전부 json형태로 들어감.
			//콤마 주의, 괄호지옥 주의
			//type은 정해주지 않으면 기본이 get임
			//
			$.ajax({
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
				type: 'get',
				data: {
					key: '2f6f629daa0405dd4a6b385515b40be8',
					targetDt: '20230621',
					itemPerPage: '5'
				},
				success: callback,
				error: function() {
					alert('실패')
				}
			})
		})
	})
	
	let list
	function callback(result) {
		list = result.boxOfficeResult.dailyBoxOfficeList
		console.log(list)
	}
	
</script>
</head>
<body>
	<h2>일별 박스오피스 서비스</h2>
	검색일 : <input type="date" id="searchDate"><button>검색</button>
	<h3>검색결과</h3>
	<div id="searchResult"></div>
</body>
</html>