<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Begin Main Content -->
  <div class="content">
    <div class="container-fluid">
      <!-- Page Heading -->
      <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">My Page</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
          <i class="fas fa-download fa-sm text-white-50"></i> Generate Report
        </a>
      </div>
      <!-- DataTales Example -->
      <div class="card shadow mb-4 col-12">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">질의응답 상세보기</h6>
        </div>
        <div class="card-body">
          <div class="container-fluid text-center">
            <table class="table table-bordered">
              <tr>
                <th>순번</th>
                <td>${ data.messageId }</td>
                <th>작성자</th>
                <td>${ data.messageWriterName }</td>
                <th>이메일</th>
                <td>${ data.messageWriterEmail }</td>
                <th>처리여부</th>
                <td>${ data.messageYn }</td>
              </tr>
              <tr>
                <th>제목</th>
                <td colspan="7">${ data.messageTitle }</td>
              </tr>
              <tr>
                <th>내용</th>
                <td colspan="7"><textarea style="width: 100%;" rows="10">${ data.messageSubject }</textarea></td>
              </tr>
            </table>
            <br>
            <div>
              <button type="button" class="btn btn-primary" onclick="callReply(${ data.messageId })">댓글작성</button>
              <button type="button" class="btn btn-secondary" onclick="location.href='adminpage'">목록가기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>