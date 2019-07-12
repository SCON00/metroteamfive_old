<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 공지글 상세 보기 </title>

<link href="/MetroTeamTest/resources/css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src='/MetroTeam/resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='/MetroTeam/resources/js/bootstrap.js'></script>

<style type="text/css">
img {
	width: 15px;
	height: 15px;
}
</style>

</head>
<body>

<h2> 공지글 상세 보기 </h2>
	<hr/>

	<div class="row">
		<div class="col-xs-6 mx-auto col-md-offset-3">
				<table class="table teble-dark">
					<thead>
						<tr>
							<th scope="col">${notice.lno }호선</th>
							<th scope="col"> | ${notice.ntitle }</th>
						</tr>
						<tr>
							<td scope="col"><img src="/MetroTeam/resources/img/noticeView_clock.png"/> ${notice.ndate }</td>
							<td scope="col"><img src="/MetroTeam/resources/img/noticeView_book.png"/> ${notice.cnt }</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">${notice.ncontent }</td>
						</tr>
					</tbody>
				</table>
			
			<!-- 목록가기 버튼 -->
			<a href="noticeList.do" class='btn btn-outline-success'>목록가기</a>
					
		</div>
	</div>

</body>
</html>