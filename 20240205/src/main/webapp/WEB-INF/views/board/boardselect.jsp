<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
          <li class="breadcrumb-item"><a href="home">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Pages</a></li>
          <li class="breadcrumb-item text-dark" aria-current="page">Acticle</li>
        </ol>
      </nav>
    </div>
  </div>
  <!-- Page Header End -->
  <!-- board start -->
  <div class="container-xxl py-5">
    <div class="container text-center">
      <h1 class="display-5 text-dark mb-4 animated slideInDown">상세내용</h1>
      <div class="row g-5">
        <table class="table table-hover table-bordered">
          <tr>
            <th>순번</th>
            <td>${ board.boardId }</td>
            <th>작성자</th>
            <td>${ board.memberName }</td>
            <th>작성일자</th>
            <td>${ board.boardDate }</td>
          </tr>
          <tr>
            <th>제목</th>
            <td colspan="5">${ board.boardTitle }</td>
          </tr>
          <tr>
            <th>내용</th>
            <td colspan="5">
              <textarea style="width: 100%;" rows="10">${ board.boardSubject }</textarea>
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</body>
</html>