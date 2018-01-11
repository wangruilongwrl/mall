<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>17商城</title>
    <%@include file="../../Common.jsp"%>
    <link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/js.js"></script>
    <script src="${ctx}/static/js/wb.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<div class="mianCont">
    <c:import url="Hert.jsp"></c:import>
    <div class="positions">
        当前位置：<a href="../../index.jsp">首页</a> &gt; <a href="#" class="posCur">帮助中心</a>
    </div><!--positions/-->
    <div class="cont">
        <div class="contLeft" id="contLeft">
            <h3 class="leftTitle">帮助中心</h3>
            <dl class="helpNav">
                <dt class="help4">关于我们</dt>
                <dd><a href="#">17官网</a></dd>
                <dd><a href="contact.jsp">联系方式</a></dd>
                <dd><a href="about.jsp" class="helpCur">企业简介</a></dd>
            </dl><!--helpNav/-->
        </div><!--contLeft/-->
        <div class="contRight">
            <h4 class="gouLiu">企业简介</h4>
            <div class="helpPar">
                &nbsp;&nbsp;&nbsp;&nbsp;济宁17实业有限公司是一家集设计、开发、生产于一体的企业。几年来，公司在全体200多位员工共同努力下，本着“以信为本、以诚待人、以新拓展、以质 取胜”的企业宗旨，大胆创新，不断进取，逐渐成为引领一次性纸制品发展潮流中的领先企业。
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;目前公司拥有德国海德堡CP2000四色胶印机、宽幅柔版印刷机、进口全自动高速纸杯成型机、台湾模切机等一系列具有国 际先进水平的生产设备，以满足不同客户的需要。本公司本着“诚信为本、质量第一、开创新品、精益求精”的企业精神，致 力为用户提供至善至美的服务，欢迎垂询。
                <br />
                公司的承诺：
                　   &nbsp;&nbsp;&nbsp;&nbsp; 对工作：提供高质量的产品，传播优质理念，迅速反应，马上行动。
                　   &nbsp;&nbsp;&nbsp;&nbsp; 对客户：合作双赢，共同发展。
                　   &nbsp;&nbsp;&nbsp;&nbsp; 对员工：教育培训，成就人生。
                　   &nbsp;&nbsp;&nbsp;&nbsp; 对社会：依法经营，保护生态，回馈大众。
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;环保，是我们最关注的问题之一！远传在生产应用中，大量采购使用环保纸张，环保型油墨。并在生产中重点对废料、回料进 行有效处理。保证产品符合国家环保标准，符合食品卫生标准。
            </div><!--helpPar-->
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
