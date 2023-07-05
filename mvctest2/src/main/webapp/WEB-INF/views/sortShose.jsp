<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sort.css">
    <title>分類-良心比價網</title>
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
    <div id="bc"></div>
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
        <div class="sort">
            <h3>分類-鞋子</h3>
            <span class="sort-q">30件商品</span>
        </div>
        <div class="item-list">
            <div class="item-content">
                <div class="numbox">
                    <div class="num1">1</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image">
                            <img class="imgg" src="${pageContext.request.contextPath}/images/force01.jpeg">
                        </div>
                        <div class="name">
                            <h3 style="font-weight:400;">【NIKE 耐吉】Air Force 1 GS 大童 女鞋 灰 金屬銀 經典 AF1 皮革 休閒鞋(CT3839-004)</h3>
                        </div>
                        <div class="price">
                            <span class="price-1">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content">
                <div class="numbox">
                    <div class="num2">2</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image">
                            <img class="imgg" src="${pageContext.request.contextPath}/images/dunk01.jpeg">
                        </div>
                        <div class="name">
                            <h3 style="font-weight:400;">【NIKE 耐吉】休閒鞋 運動鞋 NIKE DUNK LOW SE 男鞋 女鞋 大童 黑(DM1051400)</h3>
                        </div>
                        <div class="price">
                            <span class="price-1">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content">
                <div class="numbox">
                    <div class="num3">3</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image">
                            <img class="imgg" src="${pageContext.request.contextPath}/images/adidas01.jpeg">
                        </div>
                        <div class="name">
                            <h3 style="font-weight:400;">【adidas 愛迪達】休閒鞋 NMD_R1 Spectoo 襪套 男女鞋 愛迪達 三葉草 NASA 太空總署 情侶鞋 白銀(FX6818)</h3>
                        </div>
                        <div class="price">
                            <span class="price-1">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content01">
                <div class="numbox">
                    <div class="num4">4</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image1">
                            <img class="imgg1" src="${pageContext.request.contextPath}/images/adidas01.jpeg">
                        </div>
                        <div class="name1">
                            <h4 style="font-weight:400;">【adidas 愛迪達】休閒鞋 NMD_R1 Spectoo 襪套 男女鞋 愛迪達 三葉草 NASA 太空總署 情侶鞋 白銀(FX6818)</h4>
                        </div>
                        <div class="price">
                            <span class="price-2">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content01">
                <div class="numbox">
                    <div class="num4">5</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image1">
                            <img class="imgg1" src="${pageContext.request.contextPath}/images/adidas01.jpeg">
                        </div>
                        <div class="name1">
                            <h4 style="font-weight:400;">【adidas 愛迪達】休閒鞋 NMD_R1 Spectoo 襪套 男女鞋 愛迪達 三葉草 NASA 太空總署 情侶鞋 白銀(FX6818)</h4>
                        </div>
                        <div class="price">
                            <span class="price-2">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content01">
                <div class="numbox">
                    <div class="num4">6</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image1">
                            <img class="imgg1" src="${pageContext.request.contextPath}/images/adidas01.jpeg">
                        </div>
                        <div class="name1">
                            <h4 style="font-weight:400;">【adidas 愛迪達】休閒鞋 NMD_R1 Spectoo 襪套 男女鞋 愛迪達 三葉草 NASA 太空總署 情侶鞋 白銀(FX6818)</h4>
                        </div>
                        <div class="price">
                            <span class="price-2">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="item-content01">
                <div class="numbox">
                    <div class="num4">7</div>
                </div>
                <div class="info">
                    <a class="info-a" href="" target="_blank">
                        <div class="image1">
                            <img class="imgg1" src="${pageContext.request.contextPath}/images/adidas01.jpeg">
                        </div>
                        <div class="name1">
                            <h4 style="font-weight:400;">【adidas 愛迪達】休閒鞋 NMD_R1 Spectoo 襪套 男女鞋 愛迪達 三葉草 NASA 太空總署 情侶鞋 白銀(FX6818)</h4>
                        </div>
                        <div class="price">
                            <span class="price-2">$ 5000</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </main>
    </div>