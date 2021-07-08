<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<h1>글 목록 </h1>
	<table class="table table-bordered">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${listALL }" var="boardVO">
			<tr>
				<td>${boardVO.bno }</td>
				<td>
<!-- 				<a href="/board/read?bno=${boardVO.bno }"> -->
				<a href="/board/read/${boardVO.bno}">
				${boardVO.title }
				</a>
				</td>
				<td>${boardVO.writer }</td>
				<td>
				
				<fmt:formatDate value="${boardVO.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>	
				
				</td>
				<td>
				<span class="badge bg-red">
					${boardVO.viewcnt }
				</span>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<script>
		//EL 표현식으로 js에서도 값을 가져와서 사용가능하다.
		var result = '${result}' ; 
		//alert(result); 
	
		if( result === 'success'){
			alert("정상 처리 완료!"); 
		}
	</script>
<%@ include file="../include/footer.jsp"%>