<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Page Header Start -->
  <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container text-center py-5">
      <h1 class="display-2 text-dark mb-4 animated slideInDown">Acticle</h1>
      <nav aria-label="breadcrumb animated slideInDown">
        <ol class="breadcrumb justify-content-center mb-0">
          <li class="breadcrumb-item">
            <a href="home">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Pages</a>
          </li>
          <li class="breadcrumb-item text-dark" aria-current="page">Acticle</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->
  <!-- board start -->
  <div class="container-xxl py-5">
    <div class="container text-center">
      <h1 class="display-5 text-dark mb-4 animated slideInDown">참여마당</h1>
      <div class="row g-5">
        <table class="table table-hover">
          <thead>
            <tr>
              <td>순번</td>
              <td>제목</td>
              <td>작성자</td>
              <td>작성일자</td>
            </tr>
          </thead>
          <tbody id="boardContent">
            <c:if test="${ not empty boards }">
              <c:forEach items="${ boards }" var="b">
                <tr onclick="boardSelect(${b.boardId})">
                  <td>${ b.boardId }</td>
                  <td>${ b.boardTitle }</td>
                  <td>${ b.memberName }</td>
                  <td>${ b.boardDate }</td>
                </tr>
              </c:forEach>
            </c:if>
            <c:if test="${empty boards }">
              <tr>
                <td colspan="4">등록된 글이 없습니다.</td>
              </tr>
            </c:if>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="container mt-3">
    <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="javascript:void(0)" onclick="callFunction(${ p.firstPageNoOnPageList } - 1)">Previous</a>
      </li>
      <c:forEach var="index" begin="${ p.firstPageNoOnPageList }" end="${ p.lastPageNoOnPageList }" step="1">
        <li class="page-item">
          <a class="page-link" href="javascript:void(0);" onclick="callFunction(${index});">${ index }</a>
        </li>
      </c:forEach>
      <li class="page-item">
        <a class="page-link" href="javascript:void(0)" onclick="callFunction(${ p.lastPageNoOnPageList } + 1)">Next</a>
      </li>
    </ul>
  </div>
  <div>
    <form id="frm" action="boardselect" method="post">
      <input type="hidden" id="boardId" name="boardId">
    </form>
    <form id="pageFrm" action="boardlist" method="post">
      <input type="hidden" id="currentPageNo" name="currentPageNo" />
    </form>
  </div>
  <!-- board end -->
  <script type="text/javascript">
		function boardSelect(id) {
			document.getElementById("boardId").value = id;
			frm.submit();
		}
		
		function callFunction(page){
			document.getElementById("currentPageNo").value = page;
			pageFrm.submit();
		}
	</script>
</body>
</html>