<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		width: 70%;
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
			
			let searchDate = $('#searchDate').val().split('-').join('')
				
			//2023-06-21 박스오피스 요청하고싶음.
			//그게 바로 얘. 제이쿼리 ajax.
			//url 머쓸지, get?post? 파라미터는 뭔지?
			//그 형태는 전부 json형태로 들어감.
			//콤마 주의, 괄호지옥 주의
			//url, type, datatype(Jsonp), data, success
			//get 방식은 항상 ?를 이용해서 전달!
			//type은 정해주지 않으면 기본이 get임
			//response 코드값이 200이면 success가 실행!
			//404(내부 에러?), 405(서블릿 에러), 500(외부에러?)
			//메소드 실행시 젤 마지막것만 실행!
			//자스는 메소드 오버로딩이 없음!
			//지금 $.ajax()의 괄호 안에 객체를 넘긴것.
			//$('#searchDate')
			$.ajax({
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
				type: 'get',
				data: {
					key: '2f6f629daa0405dd4a6b385515b40be8',
					targetDt: searchDate,
					itemPerPage: '5'
				},
				success: callback,
				error: function() {
					alert('실패')
				}
			})
		})
	})
	
	
// 	let list << 이렇게 전역변수로 설정할 수도 있고
	function callback(result) {
		$('#searchResult').empty()
		let list = result.boxOfficeResult.dailyBoxOfficeList
		for(let i = 0; i < list.length; i++) {
			let movieInfo = list[i]
			let name = movieInfo.movieNm
			let rank = movieInfo.rank
			let audiCnt = movieInfo.audiCnt
			
			$('#searchResult').append('<h4>' + rank + '위</h4> ')
			$('#searchResult').append('<strong>' + name + '</strong>' + '(관람객 ' + audiCnt + '명)')
			$('#searchResult').append('<br><input type="button" value="상세보기">');
			$('#searchResult').append('<hr>');
			console.log(rank, name, audiCnt)
		}
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