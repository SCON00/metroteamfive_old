/**
 *	cs
 */

/**
 *	index.jsp 
 */
$(function() {
	/* 
			##### 스크롤을 따라 움직이는 퀵메뉴바 #####
	 */
	var offset = $("#quickMenu").offset();
	var topPadding = 110;
	$(window).scroll(function() {
		if ($(window).scrollTop() > offset.top) {
			$("#quickMenu").stop().animate({
				marginTop : $(window).scrollTop() - offset.top + topPadding
			}, 500);
		} else {
			$("#quickMenu").stop().animate({
				marginTop : 0
			});
		};
	});

	/* 
			##### 날씨 이미지 클릭시 날씨정보 제공 #####
	 */
	$("#weather").click(function(){
		alert("날씨정보버튼");
	});

	/* 
			##### 마이페이지 이미지 클릭시 마이페이지로 이동 #####
	 */
	$("#map").click(function(){
		alert("역/노선 검색 팝업 띄우기");
	});

	/* 
			##### 메세지 이미지 클릭시 메세지창 띄움, 다시 클릭하면 창 숨김 #####
	 */
	$("#message").click(function(){
		alert("메세지창 팝업 띄우기")
		$("#msg").toggle();
	});

	/* 
			##### 상향 이미지 클릭시 페이지 상단으로 이동 #####
	 */
	$("#up").click(function(){
		$('html, body').animate({scrollTop: 0}, 1000);
	});

	/* 
			##### 하향 이미지 클릭시 페이지 하단으로 이동 #####
	 */
	$("#down").click(function(){
		$('html, body').animate({scrollTop: $(document).height()}, 1000);
	});
});