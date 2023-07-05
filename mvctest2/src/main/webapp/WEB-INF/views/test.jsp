<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String UserNameCheck="${username}"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- jQuery v1.9.1 -->
  <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- toastr v2.1.4 -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
  
  
</head>
<body onload="memberStatus(); LoginStatus()";>
		${username}<hr/>
		
		<div class="user">
        	
            <button id="member_btn" onclick="">
            	<a href="<c:url value='memberShipCenter'/>">
                <div class="member_item" >
                    <img id="member_img-1" src="${pageContext.request.contextPath}/images/mem 2.png">
                    <span class="mffont" id="member"></span>                               
                </div>
                </a>
            </button>     
        </div>
        <hr/>
        <button onclick="test()">測試跳窗</button>
        <hr/>
            
        <script>
	function LoginStatus() {
		if (UserNameCheck = "${username}") {
			document.getElementById("member").innerText = "歡迎回來:"+"${username}" ;
			
		}else {
			document.getElementById("member").innerText = "登入/註冊" ;
		}	
	}
	</script>
	<script>	
	function memberStatus() {
		if (${alert}==0) {				
			toastr.options.timeOut = 3000; 
	        toastr.info('會員登入成功');
		}else if(${alert}==1) {
			toastr.options.timeOut = 3000; 
	        toastr.info('此帳號已經存在,請再嘗試其他帳號名稱');			  
		}else if(${alert}==2) {
			toastr.options.timeOut = 3000; 
	        toastr.info('會員申請成功');				
		}else if (${alert}==3){			
			toastr.options.timeOut = 3000; 
	        toastr.info('會員修改成功');	
		}
	}	
	</script>
        

	
	
	
	
</body>
</html>