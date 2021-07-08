<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ include file="../include/header.jsp" %>

  <h1>views/board/read.jsp</h1>
  <h2> 글 본문 보기  </h2>

  <form role="form" id="editForm" action="">
  	<!--  글번호 정보만 전달 -->
  	<input type="hidden" name="bno" value="${boardVO.bno}">
  </form>  
  
      <div class="box-body">
      	<div class="form-group">
          <label for="exampleInputEmail1">글번호</label>
          <input  type="text" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.bno }">
        </div>
        
        <div class="form-group">
          <label for="exampleInputEmail1">제목</label>
          <input  type="text" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.title }">
        </div>
         <div class="form-group">
          <label for="exampleInputEmail1">글쓴이</label>
          <input type="text" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.writer }">
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1">글내용</label>
          <textarea class="form-control" rows="3" readonly="readonly">${boardVO.content }</textarea>
        </div>

      </div>
      <!-- /.box-body -->
      <div class="box-footer">
        <button class="btn btn-warning">수정하기</button>
        <button class="btn btn-danger">삭제하기</button>
        <button class="btn btn-primary">목록으로</button>
       </div>
  	
  <script>
  
  	$(document).ready(function(){
  		
  		var formObj = $("form[role='form']");
//   		var formObj = $("#editForm");
  		//alert(formObj); 
  		//console.log(formObj); 
  		
  		//목록으로 버튼 클릭시
  		$(".btn-primary").click(function(){
  			location.href="/board/listAll";
  		});
  		
  		//수정하기 버튼 클릭시
  		$(".btn-warning").click(function(){
  			//   /board/modify 주소로 이동 (get방식) => submit() 
  			formObj.attr("action","/board/modify"); 
  			formObj.attr("method" , "get"); 
  			formObj.submit(); 
  		});
  		
  		//삭제하기 버튼 클릭시
  		$(".btn-danger").click(function(){
  			formObj.attr("action","/board/delete"); 
  			formObj.attr("method" , "post"); 
  			formObj.submit();
  		}); 
  	}) ; 
  
  </script>
  
  
  
  <%@ include file="../include/footer.jsp" %>
