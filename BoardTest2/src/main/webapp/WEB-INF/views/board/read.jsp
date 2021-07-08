<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ include file="../include/header.jsp" %>

  <h1>views/board/regist.jsp</h1>
  <h2> 글쓰기 </h2>
  
  <!-- 
     action 페이지 정보 없음
     => 다시 자기자신의 주소 호출
   -->
  <form role="form" action="./regist" method="post">
      <div class="box-body">
        <div class="form-group">
          <label for="exampleInputEmail1">제목</label>
          <input name="title" type="text" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.title }">
        </div>
         <div class="form-group">
          <label for="exampleInputEmail1">글쓴이</label>
          <input name="writer" type="text" class="form-control" id="exampleInputEmail1" readonly="readonly" value="${boardVO.writer }">
        </div>

        <div class="form-group">
          <label for="exampleInputEmail1">글내용</label>
          <textarea name="content" class="form-control" rows="3" readonly="readonly">${boardVO.content }</textarea>
        </div>

      </div>
      <!-- /.box-body -->

<!--       <div class="box-footer"> -->
<!--         <button type="submit" class="btn btn-primary">글쓰기</button> -->
<!--       </div> -->
    </form>
  
  <%@ include file="../include/footer.jsp" %>
