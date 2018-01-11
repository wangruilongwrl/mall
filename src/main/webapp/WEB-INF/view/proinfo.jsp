<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>17商城</title>
    <%@include file="../../Common.jsp"%>
    <link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/js.js"></script>
    <script src="${ctx}/static/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <script src="${ctx}/static/js/MagicZoom.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
            $("#gm").click(function () {
                var quantity = $("#sl").val();
                location = '${ctx}/gouwuche?id=${requestScope.shopid.id}&value='+quantity;
                return false;
            });
        });

    </script>
</head>

<body>
<div class="mianCont">
    <div class="top">
        <c:choose>
            <c:when test="${sessionScope.username!=null}">
                <span>欢迎<a href="#">${sessionScope.username}</a>登录</span>
                <span><a href="${ctx}/zhuxiao">[注销]</a></span>
            </c:when>
            <c:otherwise>
                <a href="${ctx}/login.jsp">[登录]</a>
                <a href="../../reg.jsp">[注册]</a>
            </c:otherwise>
        </c:choose>
        <span class="topRight">
    <a href="vip.jsp">我的17</a>&nbsp;|
    <a href="order.jsp">我的订单</a>&nbsp;|
    <a href="contact.jsp">联系我们</a>
   </span>
    </div><!--top/-->
    <div class="lsg">
        <h1 class="logo"><a href="../../index.jsp"><img src="${ctx}/static/images/logo.png" width="217" height="90" /></a></h1>
        <form action="#" method="get" class="subBox">
            <div class="subBoxDiv">
                <input type="text" class="subLeft" />
                <input type="image" src="${ctx}/static/images/subimg.png" width="63" height="34" class="sub" />
                <div class="hotWord">
                    热门搜索：
                    <c:forEach items="${applicationScope.sale}" var="sa" end="1">
                        <a href="${ctx}/byid?id=${sa.id}">${sa.name}</a>&nbsp;
                    </c:forEach>
                </div><!--hotWord/-->
            </div><!--subBoxDiv/-->
        </form><!--subBox/-->
        <div class="gouwuche">
            <div class="gouCar">
                <img src="${ctx}/static/images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp;
                <a href="${ctx}/insertcart?id=${requestScope.shopid.id}">我的购物车</a> <img src="${ctx}/static/images/youjian.jpg" width="5" height="8" />
            </div><!--gouCar/-->
            <div class="myChunlv">
                <a href="vip.jsp"><img src="${ctx}/static/images/mychunlv.jpg" width="112" height="34" /></a>
            </div><!--myChunlv/-->
        </div><!--gouwuche/-->
    </div><!--lsg/-->
    <div class="pnt">
        <div class="pntLeft">
            <h2 class="Title">所有商品分类
                <ul class="InPorNav">
                </ul><!--InPorNav/-->
            </h2>
        </div><!--pntLeft/-->
        <div class="pntRight">
            <ul class="nav">
                <li><a href="../../index.jsp">商城首页</a></li>
               <%-- <li class="navCur"><a href="product.jsp">促销中心</a></li>--%>
                <li><a href="vip">会员中心</a></li>
                <li><a href="help.jsp">帮助中心</a></li>
                <div class="clears"></div>
                <div class="phone">TEL：021-12345678</div>
            </ul><!--nav/-->
        </div><!--pntRight/-->
        <div class="clears"></div>
    </div><!--pnt/-->
    <div class="positions">
        当前位置：<a href="../../index.jsp">首页</a> &gt; <a href="#" class="posCur">促销商品</a>
    </div><!--positions/-->
    <div class="cont">
        <div class="contLeft">
            <ul class="leftPorNav">
                <c:forEach items="${applicationScope.types}" var="t" varStatus="status">
                    <li><a href="${ctx}/brand?id=${t.id}">${t.name}</a>
                        <div class="chilInPorNav">
                                <%--<script>console.log('-->${t.name}')</script>--%>
                            <c:forEach items="${applicationScope.brand[status.index].shopp}" var="s">
                                <%--<script>console.log('${s.name}')</script>--%>
                                <a href="${ctx}/brands?id=${s.id}">${s.name}</a>
                            </c:forEach>
                        </div>
                    </li>
                </c:forEach>
            </ul><!--InPorNav/-->
        </div><!--contLeft/-->

        <div class="contRight" style="border:0;">
            <div class="proBox">
                <div id="tsShopContainer">
                    <div id="tsImgS"><a href="${ctx}/${requestScope.shopid.src}" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="${ctx}/${requestScope.shopid.src}" /></a></div>
                    <div id="tsPicContainer">
                        <div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
                        <div id="tsImgSCon">
                            <ul>
                                <li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img height="42" width="42" src="${ctx}/${requestScope.shopid.src}" tsImgS="${ctx}/${requestScope.shopid.src}" /></li>
                            </ul>
                        </div>
                        <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
                    </div>
                    <img class="MagicZoomLoading" width="16" height="16" src="${ctx}/static/images/loading.gif" alt="Loading..." />
                    <script src="${ctx}/static/js/ShopShow.js"></script>
                </div><!--tsShopContainer/-->
                <div class="proBoxRight">
                    <h3 class="proTitle">${requestScope.shopid.name}</h3>
                    <div>商品编号： ${requestScope.shopid.merno} </div>
                    <div>价格：<strong class="red">¥${requestScope.shopid.price}</strong> </div>
                    <%--<div>单位：袋 </div>--%>
                    <%--<div>库存：<strong class="red">${requestScope.shopid.stock}</strong> 从济宁发货</div>--%>
                   <%-- <ul class="rongliang">
                        <li>100ml</li>
                        <li>200ml</li>
                        <li>300ml</li>
                        <li>400ml</li>
                        <li>500ml</li>
                        <div class="clears"></div>--%>
                    </ul><!--rongliang/-->
                    <div class="shuliang2">
                        数量： <input type="text" id="sl"  value="1" />
                    </div><!--shuliang2/-->
                    <div class="gc">
                        <a href="${ctx}/gouwuche?id=${requestScope.shopid.id}" id="gm"><img src="${ctx}/static/images/shoucang.png" width="117" height="36" /></a>&nbsp;&nbsp;
                        <%--<a href="${ctx}/goumai?id=${requestScope.shopid.id}"><img src="${ctx}/static/images/goumai.png" width="117" height="36" /></a>--%>
                    </div><!--gc/-->
                </div><!--proRight/-->
                <div class="clears"></div>
            </div><!--proBox/-->
            <ul class="fangyuan">
                <li>商品描述</li>
               <%-- <li>商品参数</li>
                <li>商品评论</li>--%>
                <%--<li>商品晒图</li>--%>
                <div class="clears"></div>
            </ul><!--fangyuan/-->
            <div class="fangList">
                <div class="fangPar">
                    ${requestScope.shopid.details}
                </div><!--fangPar/-->
               <%-- <img src="${ctx}/static/images/ban2.jpg" width="756" height="310" />--%>
            </div><!--fangList/-->
            <%--<div class="fangList">
                商品参数
            </div><!--fangList/-->
            <div class="fangList">
                商品评论
            </div><!--fangList/-->--%>
            <<%--div class="fangList">
                <img src="${ctx}/${requestScope.shopid.src}" width="132" height="129" /><br /><br />
            </div><!--fangList/-->--%>
        </div><!--contRight/-->
        <div class="clears"></div>
    </div><!--cont/-->
    <div class="inHelp">
        <div class="inHLeft">
            <h4>帮助中心</h4>
            <ul class="inHeList">
                <li><a href="help.jsp">购物指南</a></li>
                <li><a href="help.jsp">支付方式</a></li>
                <li><a href="help.jsp">售后服务</a></li>
                <li><a href="about.jsp">企业简介</a></li>
                <div class="clears"></div>
            </ul><!--inHeList/-->
        </div><!--inHLeft/-->
        <div class="inHLeft">
            <h4>会员服务</h4>
            <ul class="inHeList">
                <li><a href="../../reg.jsp">会员注册</a></li>
                <li><a href="../../login.jsp">会员登录</a></li>
                <li><a href="order.jsp">购物车</a></li>
                <li><a href="order.jsp">我的订单</a></li>
                <div class="clears"></div>
            </ul><!--inHeList/-->
        </div><!--inHLeft/-->
        <div class="inHRight">
            <h4>全国统一免费服务热线</h4>
            <div class="telBox">400-0000-0000</div>
            <div class="weibo">
                <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
            </div>
        </div><!--inHRight/-->
        <div class="clears"></div>
    </div><!--inHelp/-->
    <div class="footer">
        <p>
            <a href="#">进入17官网</a>&nbsp;|&nbsp;
            <a href="../../index.jsp">商城首页</a>&nbsp;|&nbsp;
            <a href="product.jsp">促销中心</a>&nbsp;|&nbsp;
            <a href="order.jsp">我的订单</a>&nbsp;|&nbsp;
            <a href="new.jsp">新闻动态</a>&nbsp;|&nbsp;
            <a href="../../login.jsp">会员中心</a>&nbsp;|&nbsp;
            <a href="help.jspl">帮助中心</a>
        </p>
        <p>
            版权所有：上海17实业有限公司 版权所有  Copyright 2010-2015   沪ICP备00000000号   <a href="http://www.mycodes.net/" target="_blank">源码之家</a>
        </p>
    </div><!--footer/-->
</div><!--mianCont/-->
<a href="#" class="backTop">&nbsp;</a>
</body>
</html>

