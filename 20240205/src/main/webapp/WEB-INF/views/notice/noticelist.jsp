<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>noticelist.jsp</title>
</head>

<body>
  <div align="center">
    <div>
      <h1>공지사항</h1>
    </div>
    <div>
      <form id="searchForm">
        <table border="1">
          <tr>
            <td width="400">
              <label for="selectbox"> </label>
              선택:
              <select id="key" name="key">
                <option value="all">전체</option>
                <option value="name">작성자</option>
                <option value="title">제목</option>
                <option value="subject">내용</option>
              </select>
              &nbsp;&nbsp;&nbsp;
              <input type="text" id="val" name="val" />
              <button type="button" onclick="searchNotice()">검색</button>
            </td>
          </tr>
        </table>
      </form>
    </div>
    <br>
    <div>
      <table border="1" id="content">
        <thead id="head">
          <tr>
            <th width="70">순번</th>
            <th width="350">제목</th>
            <th width="150">작성자</th>
            <th width="150">작성일자</th>
            <th width="70">첨부파일</th>
            <th width="70">조회수</th>
          </tr>
        </thead>
        <tbody id="body">
          <c:if test="${not empty notices}">
            <c:forEach items="${notices}" var="n">
              <tr>
                <td>${n.noticeId}</td>
                <td>${n.noticeTitle}</td>
                <td>${n.noticeWriterName}</td>
                <td>${n.noticeDate}</td>
                <td>${n.noticeAttach}</td>
                <td>${n.noticeHit}</td>
              </tr>
            </c:forEach>
          </c:if>
          <c:if test="empty notices">
            <tr>
              <td colspan="6" align="center">공지글이 존재하지 않습니다</td>
            </tr>
          </c:if>
        </tbody>
      </table>
    </div>
  </div>
  <script>
    // ajax로 만든다
    function searchNotice() {
      // let key = document.getElementById("key").value;
      // let val = document.getElementById("val").value;
      let formData = new FormData(document.getElementById("searchForm"));
      let payload = new URLSearchParams(formData);
      const url = "ajaxNoticeList";
      // let payload = "key=" + key + "&val=" + val;
  
      fetch(url, {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: payload
      })
        .then(res => res.json())
        .then(data => htmlConvert(data))
        .catch(err => console.log("Fetch error -> ", err));
    }
  
    function htmlConvert(data) {
      let tb = document.getElementById("content");
      document.getElementById("body").remove();
  
      let _tbody = document.createElement("tbody");
      _tbody.setAttribute("id", "body");
      _tbody.innerHTML = data.map((data) => htmlView(data)).join("");
      tb.appendChild(_tbody);
    }
  
    function htmlView(data) {
      return `
      <tr onmouseover="this.style.background='#C8FE2E'" onmouseout="this.style.background='#FFFFFF'"
        onclick="selectMember(\${data.noticeId})">
        <td>\${data.noticeId}</td>
        <td>\${data.noticeTitle}</td>
        <td>\${data.noticeWriterName}</td>
        <td>\${data.noticeDate}</td>
        <td>\${data.noticeAttach}</td>
        <td>\${data.noticeHit}</td>
      </tr>
      `;
    }
  </script>
</body>

</html>