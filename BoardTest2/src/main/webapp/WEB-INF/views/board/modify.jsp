<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ include file="../include/header.jsp" %>

  <h1>views/board/modify.jsp</h1>
  <h2> 글 수정 </h2>

  
  <form role="form" action="/board/regist" method="post">
      <div class="box-body">
      	<div class="form-group">
          <label for="exampleInputEmail1">글번호</label>
          <input readonly="readonly" name="bno" type="text" class="form-control"  value="${vo.bno }">
        </div>
        
        <div class="form-group">
          <label for="exampleInputEmail1">제목</label>
          <input name="title" type="text" class="form-control"   value="${vo.title }">
        </div>
         <div class="form-group">
          <label for="exampleInputEmail1">글쓴이</label>
          <input name="writer" type="text" class="form-control"  value="${vo.writer }">
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1">글내용</label>
          <textarea name="content" class="form-control" rows="3" >${vo.content }</textarea>
        </div>

      </div>
      <!-- /.box-body -->
    </form>
    <div class="box-footer">
        <button type="submit" class="btn btn-warning">수정하기</button>
        <button class="btn btn-primary">목록으로</button>
    </div>

    
    
  <script>
  
  	$(document).ready(function(){
  		
   		var formObj = $("form[role='form']");
  		
  		//목록으로 버튼 클릭시
  		$(".btn-primary").click(function(){
  			location.href="/board/listAll";
  		});
  		
  		//수정하기 버튼 클릭시
  		$(".btn-warning").click(function(){
  			formObj.attr("action","/board/modify"); 
  			formObj.attr("method" , "post"); 
  			formObj.submit(); 
  		});
  		
  	}) ; 
  
  </script>
  
  
  
  <%@ include file="../include/footer.jsp" %>
