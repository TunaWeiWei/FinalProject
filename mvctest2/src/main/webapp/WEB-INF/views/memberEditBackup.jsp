<%@ page language="java" contentType="text/html; charset=UTF8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%
	//此項為確認連線者是否有通過帳號認證連進來 否則退回到登入頁面 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
	
	if (session.getAttribute("id") == null){
		response.sendRedirect("login");
	}	
%>
<%String UserNameCheck="${username}"; %>      
<!DOCTYPE html>
<html>	
		
	<head>
		<meta charset="UTF-8">
		<title>會員資料修改</title>
		
		 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberWebSetting.css" type="text/css">
		 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberShipCenter.css" type="text/css">
   <style>
        label {
            color: black;
        }

        table {
            text-align: center;
        }   
        
        #account:hover,
        #userName:hover,
        #passWord:hover,
        #checkPassWord:hover,
        #age:hover,
        #tel:hover,
        #cellphone:hover,
        #email:hover {
            background-color: pink;
        }

        #send {
            color: blue;
        }

        #cancelMemberECreate {
            color: red;

        }
    </style>
	</head>
	<body>	
		  <header>
        <div class="logo">
            <a href="Home.jsp"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>

        </div>
        <form action="">
            <div class="search_in">
                <input id="search_input" type="text" placeholder="搜尋比價  請輸入關鍵字">
                <!-- <img id="zoom_in_item" src="img/zoomin2.png" onclick=""> -->
                <button id="search_btn"></button>
            </div>

        </form>

        <div class="user">
            <a href="" id="mf">
                <div class="my_favorite">
                    <img id="member_img" src="${pageContext.request.contextPath}/images/love.png">
                    <span class="mffont">我的最愛</span>
                </div>
            </a>
        </div>
        
        <div class="user">        	
            <button id="member_btn" onclick="">
            	<a href="<c:url value='memberShipCenter'/>">
                <div class="member_item">
                    <img id="member_img-1" src="${pageContext.request.contextPath}/images/mem 2.png">
                    <span class="mffont" id="member"></span>                               
                </div>
                </a>
            </button>            
        </div>
    </header>
		 		
		<form method="post" action="memberUpdate">
			<input type="hidden" name="account" value="${account}" required/>			
			
        <fieldset>
        <br />
        <label id="title">會員資料修改</label>
        <br /><br />
            <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;用戶名:&emsp;&emsp;&emsp;</label></th>
                    <td><input type="text1" placeholder="請輸入2-10位英文或數字"
                		   pattern=^[a-zA-Z0-9]*$ minlength="2" maxlength="10" title="請最少輸入2-10位英文或數字"
                		   id="userName" name="username" value="${username}" required></td>
                     
                </tr>
            </table>
       <br /><br />  
             <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;密碼:&emsp;&emsp;&emsp;&emsp;</label></th>
                    <td><input type="password" placeholder="請包含英數字混合4~10字內"
                           pattern="^([a-zA-Z]+\d+|\d+[a-zA-Z]+)[a-zA-Z0-9]*$" minlength="4" maxlength="10" title="請輸入4-10位英文+數字"
                           id="passWord" name="passWord" required></td>
                    
                </tr>
            </table>
       <br /><br />
             <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;年齡:&emsp;&emsp;&emsp;&emsp;</label></th>
                    <td><input type="number" name="age" id="age" value="${age}" required /></td>
                   
                </tr>
            </table>
       <br /><br />     
             <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;電話:&emsp;&emsp;&emsp;&emsp;</label></th>
                    <td><input type="text1" placeholder="請輸入含區號之電話號碼"
                	      	   pattern="^0([0-9]*$)" minlength="9" maxlength="10" title="請輸入含區號之電話號碼(例如04xxxxoooo)"
                	           id="tel" name="tel" value="0${tel}" required></td>
                    
                </tr>
            </table>
       <br /><br />    
            <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;手機:&emsp;&emsp;&emsp;&emsp;</label></th>
                    <td><input type="text1" placeholder="請輸入手機號碼" 
                		  	   pattern="^09([0-9]*$)" minlength="10" maxlength="10" title="請輸入手機號碼(例如09xxxxoooo)"
                		       id="cellphone" name="cellphone" value="0${cellphone}" required></td>
                    
                </tr>
            </table>
       <br /><br />     
             <table>
                <tr>
                    <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;電子郵件:&emsp;&emsp;</label></th>
                    <td><input type="email" name="email" id="email" value="${email}" required /></td>
                </tr>
            </table>
       <br /><br />     
            	<input type="submit" id="send" value="確認修改" />
            	<a href="<c:url value='/cancelEdit'/>" id="cancelMemberEdit">取消修改</a>
        </fieldset>   
     </form>
     
    
	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來:"+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>	
	
		
	</body>
</html>