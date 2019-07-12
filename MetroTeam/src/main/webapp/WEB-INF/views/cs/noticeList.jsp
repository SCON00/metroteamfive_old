<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="/MetroTeamTest/resources/css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src='/MetroTeamTest/resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='/MetroTeamTest/resources/js/bootstrap.js'></script>
</head>
<body>

<h1 class="display-1">NOTICE-LIST</h1>

	<!-- 공지사항 div -->
	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">

			<!-- 호선별 select -->
			<select class="form-control" name="lineNo">
				<option value="0">전체</option>
				<%for (int i = 0; i < 9; i++) { %>
				<option value="<%=i + 1%>"><%=i + 1%>호선 </option>
				<%}%>
			</select><br />

			<!-- 호선별 공지사항 목록 -->
			<div class="table table-hover table-responsive">
				<table class="table teble-dark">
					<tr>
						<th>제목</th>
						<th>호선</th>
						<th>등록일</th>
					</tr>
					<c:forEach items="${noticeList }" var="no">
						<tr>
							<td align="left"><a href="noticeView.do?nid=${no.nid }">${no.ntitle }</a></td>
							<td>${no.lno }</td>
							<td>${no.ndate }</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>

</body>
</html>