<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#container {
  width: max-content;
  margin: auto;
}

td>input {
  width: 100%;
  border: 0;
}
</style>
</head>
<body>
<div id="container" align="center">
  <div><h1>공지사항 작성</h1></div>
  <br>
  <div>
    <form action="noticeWrite" method="post" enctype="multipart/form-data">
      <div>
        <table class="table table-bordered">
          <tr>
            <th width="150">작성자</th>
            <td width="150">
              <input type="text" id="noticeWriterName" name="noticeWriterName" value="홍길동" readonly>
            </td>
            <th width="150">작성일자</th>
            <td width="150">
              <input type="date" id="noticeDate" name="noticeDate" required="required">
            </td>
          </tr>
          <tr>
            <th>제목</th>
            <td colspan="3">
              <input type="text" id="noticeTitle" name="noticeTitle" required="required">
            </td>
          </tr>
          <tr>
            <th>내용</th>
            <td colspan="3">
              <textarea name="noticeSubject" id="noticeSubject" cols="50" rows="10"></textarea>
            </td>
          </tr>
          <tr>
            <th>첨부파일</th>
            <td colspan="3">
              <input type="file" id="file" name="file">
            </td>
          </tr>
        </table>
      </div>
      <br>
      <div>
        <input type="text" name="noticeWriterId" value="2024001" />
        <input type="submit" value="등록"/>&nbsp;&nbsp;
        <input type="reset" value="취소"/>
      </div>
    </form>
  </div>
</div>
</body>
</html>