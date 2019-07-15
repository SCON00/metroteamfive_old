/**
 * 로그인, 회원가입 ajax 처리 등
 */

$(function(){
	// 회원가입시 전화번호나 이메일 입력할 때 중복되는지 검사	
	$("#second #mid").focusout(function(){
		$.ajax({
			type : 'post',
			async : true,
			url : 'member/midCheck.do',
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data : {mid : $('#second input[name="mid"]').val()},
			success : function(data){
				$('#midmessage').text(data);
				$('#midmessage').show();
			},
			error : function(){
				alert("에러 발생");
			}
		})
	});
	
	// 로그인 확인
	$("#login").click(function(){
		$.ajax({
			type : 'post',
			async : true,
			url : 'member/login.do',
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			data : {mid : $('#first input[name="mid"]').val(), 
				pass : $('#first input[name="pass"]').val()},
			success : function(data){
				if(data.trim().match(/님/)){
					$("#dologin").attr("aria-expanded", "false");
					$("#dologin").parent("li").removeClass("open");
					$('#dologin').text("마이페이지");
					$('#dosignup').text("Logout");
				} else{
					$('#loginresult').text(data);
					$('#loginresult').show();
				}
			},
			error : function(){
				alert("에러 발생");
			}
		})
	});
	
	// 회원가입창에서 로그인하기 눌렀을 때
	$('#gotologin').click(function(){
		$("#dosignup").attr("aria-expanded", "false");
		$("#dosignup").parent("li").removeClass("open");
		
		$("#dologin").attr("aria-expanded", "true");
		$("#dologin").parent("li").addClass("open");
	});
	
	// 로그인창에서 회원가입 눌렀을 때
	$('#gotosignup').click(function(){
		$("#dologin").attr("aria-expanded", "false");
		$("#dologin").parent("li").removeClass("open");
		
		$("#dosignup").attr("aria-expanded", "true");
		$("#dosignup").parent("li").addClass("open");
	});
	
	// 상단 로그인, 회원가입 폼 관련 js
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
	
	
});
