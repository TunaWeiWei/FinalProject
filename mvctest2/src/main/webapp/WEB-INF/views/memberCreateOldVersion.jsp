<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html lang="en">		
	
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員創立</title>
    
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberWebSetting.css" type="text/css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberShipCenter.css" type="text/css">
     <!-- jQuery v1.9.1 -->
  	 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
  	 <!-- toastr v2.1.4 -->
 	 <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
 	 
    <style>
        label {
            color: black;
        }

        table {
            text-align: center;
        }
        
        .checkImg {
        	width: 30px;
        	height: 30px;
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

        #cancelMemberCreate {
            color: red;

        }
    </style>
</head>

<body onload="memberStatus()">
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
                    <span class="mffont">登入/註冊</span>                               
                </div>
                </a>
            </button>            
        </div>
    </header>

	<form method="post" action="memberCreate">
    <fieldset >
        <br />
        <label id="title">會員申請</label>
        <br /><br />
        <table>
            <tr>
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;帳號:&emsp;&emsp;&emsp;&emsp;</label></th>
                <td><input type="text1" placeholder="請包含英數字混合4~10字內" 
               			pattern="^([a-zA-Z]+\d+|\d+[a-zA-Z]+)[a-zA-Z0-9]*$" minlength="4" maxlength="10" title="請輸入4-10位英文+數字"
               			id="account" name="account" value="${account}" required></td>                          
            </tr>
            
        </table>

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
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;再次確認密碼:</label></th>
                <td><input type="password" placeholder="請再次輸入所設定之密碼" id="checkPassWord" name="checkpassword" required></td>                
            </tr>
        </table>

        <br /><br />
        
        <table>
            <tr>
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;年齡:&emsp;&emsp;&emsp;&emsp;</label></th>
                <td><input type="number" placeholder="請以數字輸入" id="age" name="age" value="${age}" required></td>                
            </tr>
        </table>
        
        <br /><br />
        
        <table>
            <tr>
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;電話:&emsp;&emsp;&emsp;&emsp;</label></th>
                <td><input type="text1" placeholder="請輸入含區號之電話號碼"
                	       pattern="^0([0-9]*$)" minlength="9" maxlength="10" title="請輸入含區號之電話號碼(例如04xxxxoooo)"
                	       id="tel" name="tel" value="${tel}" required></td>               
            </tr>
        </table>
        
        <br /><br />
        
        <table>
            <tr>
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;手機:&emsp;&emsp;&emsp;&emsp;</label></th>
                <td><input type="text1" placeholder="請輸入手機號碼" 
                		   pattern="^09([0-9]*$)" minlength="10" maxlength="10" title="請輸入手機號碼(例如09xxxxoooo)"
                		   id="cellphone" name="cellphone" value="${cellphone}" required></td>                
            </tr>
        </table>
        
        <br /><br />
        
        <table>
            <tr>
                <th><label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;電子郵件:&emsp;&emsp;</label></th>
                <td><input type="email" placeholder="請輸入電子郵件" id="email" name="email" value="${email}" required></td>
            </tr>
        </table>
        
        <br /><br />
        
        <button type="submit" id="send" value="add">申請</button>
        <a href="<c:url value='/logout'/>" id="cancelMemberCreate">取消申請</a>
    </fieldset>
	</form>

<!-- 彈出帳號重複提醒 -->
	<script>
	function memberStatus() {
		if ("${alert}"=="detectSameAccount") {
			toastr.options.timeOut = 3000; 
	        toastr.info('此帳號已經存在,請再嘗試其他帳號名稱');
		};
	}	
	</script>

	
	
	

</body>

</html>