<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%String UserNameCheck="${username}"; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>良心比價網</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/FrontPage.css">
    
</head>
<body> 
    <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>       
        </div>
        <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" placeholder="搜尋比價  請輸入關鍵字">
                <button type="submit" class="search_btn" id="searchbtn"></button>
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
    <hr>
    <div id="product_index">
        <div class="product_border">
            <h2 class="product_name">商品分類</h2>
            <div class="shoes">
                <a href="<c:url value='/sortShose'/>">
                
                
                    <img src="${pageContext.request.contextPath}/images/shoes.png" width="180" height="180" alt="">
                </a>
            </div>
            <div class="shirt">
                <a href="" >
                    <img src="${pageContext.request.contextPath}/images/shirt.png" width="180" height="180" alt="">
                </a>
            </div>
            <div class="pants">
                <a href="" >
                    <img src="${pageContext.request.contextPath}/images/pants.png" width="180" height="180" alt="">
                </a>
            </div>
            <div class="socks">
                <a href="" >
                    <img src="${pageContext.request.contextPath}/images/socks.png" width="180" height="180" alt="">
                </a>
            </div>
            <div class="underwear">
                <a href="" >
                    <img src="${pageContext.request.contextPath}/images/uw.png" width="180" height="180" alt="">
                </a>
            </div>
            <div class="shoes_ch">
                <a href="" class="ch">
                    <span>鞋子</span>
                </a>
            </div>
            <div class="shirt_ch">
                <a href="" class="ch">
                    <span>上衣</span>
                </a>
            </div>
            <div class="pants_ch">
                <a href="" class="ch">
                    <span>褲子</span>
                </a>
            </div>
            <div class="socks_ch">
                <a href="" class="ch">
                    <span>襪子</span>
                </a>
            </div>
            <div class="underwear_ch">
                <a href="" class="ch">
                    <span>運動內衣</span>
                </a>
            </div>
        </div>
    </div>
    <div id="Hot_better">
        <div class="Hot_better_border">
            <h2 class="Hot_better_border_name">熱門商品比較</h2>
            <div class="hot_1">
                <div class="item_pic">
                    <img src="${pageContext.request.contextPath}/images/dunk.png" width="100" height="100" alt="">
                </div>
                <a href="" class="item_name">
                    Nike Dunk Low 休閒鞋 熊貓 黑白 低筒
                </a>
                <div class="web">
                    <div class="nike_web">
                        <a href="https://www.nike.com/tw/">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" height="60" alt="">
                        </a>
                        <div class="nike_web_name">
                            <span>Nike官網</span>
                        </div>
                    </div>
                    <div class="shopee_web">
                        <a href="https://shopee.tw/">
                            <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="60" height="60" alt="">
                        </a>
                        <div class="shopee_web_name">
                            <span>蝦皮商城</span>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="hot_2">
                <div class="item_pic">
                    <img src="${pageContext.request.contextPath}/images/dunk.png" width="100" height="100" alt="">
                </div>
                <a href="" class="item_name">
                    Nike Dunk Low 休閒鞋 熊貓 黑白 低筒
                </a>
                <div class="web">
                    <div class="nike_web">
                        <a href="https://www.nike.com/tw/">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" height="60" alt="">
                        </a>
                        <div class="nike_web_name">
                            <span>Nike官網</span>
                        </div>
                    </div>
                    <div class="shopee_web">
                        <a href="https://shopee.tw/">
                            <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="60" height="60" alt="">
                        </a>
                        <div class="shopee_web_name">
                            <span>蝦皮商城</span>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="hot_3">
                <div class="item_pic">
                    <img src="${pageContext.request.contextPath}/images/dunk.png" width="100" height="100" alt="">
                </div>
                <a href="" class="item_name">
                    Nike Dunk Low 休閒鞋 熊貓 黑白 低筒
                </a>
                <div class="web">
                    <div class="nike_web">
                        <a href="https://www.nike.com/tw/">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" height="60" alt="">
                        </a>
                        <div class="nike_web_name">
                            <span>Nike官網</span>
                        </div>
                    </div>
                    <div class="shopee_web">
                        <a href="https://shopee.tw/">
                            <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="60" height="60" alt="">
                        </a>
                        <div class="shopee_web_name">
                            <span>蝦皮商城</span>
                        </div>
                    </div> 
                </div>
            </div>
            <div class="hot_4">
                <div class="item_pic">
                    <img src="${pageContext.request.contextPath}/images/dunk.png" width="100" height="100" alt="">
                </div>
                <a href="" class="item_name">
                    Nike Dunk Low 休閒鞋 熊貓 黑白 低筒
                </a>
                <div class="web">
                    <div class="nike_web">
                        <a href="https://www.nike.com/tw/" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" height="60" alt="">
                        </a>
                        <div class="nike_web_name">
                            <span>Nike官網</span>
                        </div>
                    </div>
                    <div class="shopee_web">
                        <a href="https://shopee.tw/" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="60" height="60" alt="">
                        </a>
                        <div class="shopee_web_name">
                            <span>蝦皮商城</span>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>
    <div id="official_web">
        <div class="official_web_border">
            <h2 class="Hot_better_border_name">商店分類總覽</h2>
            <div class="webweb">
                <div class="nike_web_web">
                    <a href="https://www.nike.com/tw/" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="180"  alt="">
                    </a>
                </div>
                <div class="shopee_web_web">
                    <a href="https://shopee.tw/" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="150"  alt="">
                    </a>
                </div>
                <div class="momo_web_web">
                    <a href="https://www.momoshop.com.tw/" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/momologo.png" width="150" height="150" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來:"+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>
</html>