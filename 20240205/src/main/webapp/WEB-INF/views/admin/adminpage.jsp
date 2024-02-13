<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

      <!-- Content Row for Card -->
      <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <!-- Content Row for Table -->
      <div class="row">

        <!-- DataTales Example -->
        <div class="card shadow mb-4 col-12">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">질의응답</h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table row-border table-hover" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>순 번</th>
                    <th>작성자</th>
                    <th>이메일</th>
                    <th>제 목</th>
                    <th>처리여부</th>
                  </tr>
                </thead>
                <tbody>
                  <c:if test="${ not empty messages }">
                    <c:forEach items="${ messages }" var="m">
                      <tr onclick="callFunction(${ m.messageId })">
                        <td>${ m.messageId }</td>
                        <td>${ m.messageWriterName }</td>
                        <td>${ m.messageWriterEmail }</td>
                        <td>${ m.messageTitle }</td>
                        <td>${ m.messageYn }</td>
                      </tr>
                    </c:forEach>
                  </c:if>
                  <c:if test="${ empty messages }">
                    <tr>
                      <td colspan="5" align="center">문의한 내용이 없습니다.</td>
                    </tr>
                  </c:if>
                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

  <!-- custom hidden form -->
  <div>
    <form id="frm" action="messageselect" method="post">
      <input type="text" id="messageId" name="messageId" />
    </form>
  </div>

  <!-- custom script -->
  <script type="text/javascript">
  	function callFunction(id){
  		document.getElementById("messageId").value = id;
  		frm.submit();
  	}
	</script>
</body>
</html>