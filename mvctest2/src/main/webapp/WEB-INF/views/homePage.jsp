<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%String UserNameCheck="${username}"; %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <title>良心比價網-商品頁面</title>
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
    <aside>
        <div id="category">
            <h3 style="text-align: center;">商品分類</h3>
            <a href="<c:url value='/sortShose'/>" class="itemA">
                <div class="item">鞋 子</div>
            </a>
            <a href="" class="itemA">
                <div class="item">上 衣</div>
            </a>
            <a href="" class="itemA">
                <div class="item">褲 子</div>
            </a>
            <a href="" class="itemA">
                <div class="item">襪 子</div>
            </a>
            <a href="" class="itemA">
                <div class="item">運動內衣</div>
            </a>
        </div>
    </aside>

    <div class="middle">
        <div class="middle02">
            <div class="imggg">
                <a href="https://www.nike.com/tw/" style="height: 280px;">
                    <img src=".${pageContext.request.contextPath}/images/dunk.png" width="280">
                </a>
            </div>
            <ul id="ul1">
                <li class="middle03">
                    <a href="https://www.nike.com/tw/" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="80" alt="">
                    </a>
                </li>
                
                <li class="showbox-1">
                    <a href="" class="itemname">
                        <span style="float: left;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </a>
                </li>                  
                <li class="middle04">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money">$5100</div>
                    </a>
                </li>
                <li class="middle05">
                    <a href="" style="text-decoration: none;" target="_blank"> 
                        <div class="gobuy">前往購買</div>
                    </a>
                </li>
                <li class="middle06">
                    <div href="" class="love03">
                        <button onclick="" class="addbtn">加入我的最愛</button> 
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="center">
        <!-- <div id="hot">
            <h2>同款熱銷</h2>
        </div> -->
        <div class="leftcenter">
            
            <div class="leftcenter01">
                <ul class="ul2">
                    <li class="leftcenter02">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" alt="">
                        </a>
                    </li>
                    <div class="imgg">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="200">
                        </a>
                    </div>
                    <div class="leftcenter03">
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="money01">$5100</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="purch">前往購買</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <div href="" class="love">
                                <button onclick="" class="addbtn">加入我的最愛</button> 
                            </div>
                        </li>
                    </div>
                </ul>
            </div>
            <div class="leftcenter01">
                <ul class="ul2">
                    <li class="leftcenter02">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" alt="">
                        </a>
                    </li>
                    <div class="imgg">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="200">
                        </a>
                    </div>
                    <div class="leftcenter03">
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="money01">$5100</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="purch">前往購買</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <div href="" class="love">
                                <button onclick="" class="addbtn">加入我的最愛</button> 
                            </div>
                        </li>
                    </div>
                </ul>
            </div>
            <div class="leftcenter01">
                <ul class="ul2">
                    <li class="leftcenter02">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="60" alt="">
                        </a>
                    </li>
                    <div class="imgg">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="200">
                        </a>
                    </div>
                    <div class="leftcenter03">
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="money01">$5100</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                                <div class="purch">前往購買</div>
                            </a>
                        </li>
                        <li class="leftcenter02">
                            <div href="" class="love">
                                <button onclick="" class="addbtn">加入我的最愛</button> 
                            </div>
                        </li>
                    </div>
                </ul>
            </div>
        </div>
    </div>

    <div id="same">
        <h2>同款商品</h2>
    </div>

    <div class="centerdown">
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">1</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div href="" class="addl">
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">2</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div href="" class="addl">
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">3</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="${pageContext.request.contextPath}/images/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div href="" class="addl">
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </div>
                    </div>
                </div>
            </li>
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