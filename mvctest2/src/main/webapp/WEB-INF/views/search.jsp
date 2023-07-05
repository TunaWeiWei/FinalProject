<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <title>良心比價網-搜尋頁面</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>
        </div>
        <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" value="${param.keyword}" placeholder="搜尋比價  請輸入關鍵字">
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
                    <span class="mffont">登入/註冊</span>
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
    <main>
        <div id="ra">
            <div class="range" style="font-size: larger;">價格區間 :&nbsp;&nbsp;</div>
                <div>
                    <a href="<c:url value='/search'/>">
                    
                        <div  class="price">$0-1000</div>
                    </a>
                    <a href="">
                        <div  class="price">$1000-3000</div>
                    </a>
                    <a href="">
                        <div  class="price">$3000-5000</div>
                    </a>
                    <a href="">
                        <div  class="price">$5000-7000</div>
                    </a>
                    <a href="">
                        <div  class="price">$7000-9000</div>
                    </a>
                    <a href="">
                        <div  class="price">$9000 up</div>
                    </a>
                </div>
        </div>
        <div id="result">
            <div class="range" style="font-size: larger;">搜尋結果 ：${sum} 筆</div>
                <div id="hl">
                    <a href="<c:url value='/search?keyword=${param.keyword}&sort=price&order=asc'/>">
                    
                        <div  class="highlow">價格由低到高</div>
                    </a>
                    <a href="?keyword=${param.keyword}&sort=price&order=desc">
                        <div  class="highlow">價格由高到低</div>
                    </a>
                </div>
        </div>
        
        <ul id="showsearch" >
            <c:forEach var ="item" items = '${items}'>
            <div class="boxstyle">
                <span class="showbox">
                    <a href="${item.url}">
                        <img src="${item.img} " width="150">
                    </a>
                </span>
                <li type="none" class="searchbox">
                    <div class="showbox-1">
                        <a href="" class="itemname">
                            <span>${item.name} </span>
                        </a>
                    </div>    
                    <div class="showbox-2">
                        <span class="price-1">$ ${item.price}</span>
                    </div>
                    <div class="cp">
                        <a href="" class="compare">
                            <span>比較20件商品售價</span>
                        </a>
                        <div href="" class="addlove">
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </div>
                    </div>       
                </li>
            </div>
           </c:forEach>
           
        </ul>
    </main>
   
</body>
</html>