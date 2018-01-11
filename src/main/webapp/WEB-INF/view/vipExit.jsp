<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:38
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
    <script type="text/javascript">
        $(function(){
            $(".vipNav dd:eq(2)").show();
        })
    </script>
</head>

<body>
<div class="mianCont">
    <c:import url="Hert.jsp"></c:import>
    <div class="positions">
        当前位置：<a href="../../indexs.jsp">首页</a> &gt; <a href="vip.jsp">会员中心</a>
        &gt; <a href="#" class="posCur">我的订单</a>
    </div><!--positions/-->
    <div class="cont">
        <div class="contLeft" id="contLeft">
            <h3 class="leftTitle">会员中心</h3>
            <dl class="helpNav vipNav">
                <dt>我的主页</dt>
                <dd>
                    <a href="vip.jsp">个人中心</a>
                    <%--<a href="vipOrder.jsp">我的订单</a>--%>
                </dd>

                <%--<dd>
                    <a href="Comm/vipMy.jsp">个人信息</a>
                    <a href="Comm/vipPwd.jsp">密码修改</a>
                    <a href="Comm/vipAdress.jsp">收货地址</a>
                </dd>--%>
                <dt>客户服务</dt>
                <dd>
                    <a href="vipExit.jsp" class="vipCur">网站使用条款</a>
                    <a href="vipTuihuo.jsp">网站免责声明</a>
                    <%--<a href="Comm/message.jsp">在线留言</a>--%>
                </dd>
            </dl><!--helpNav/-->
        </div><!--contLeft/-->
        <div class="contRight">
            <h2 class="oredrName">
                网站使用条款
            </h2>
            <div class="helpPar">
                &nbsp;&nbsp;&nbsp;&nbsp;首先，你要注册一个淘宝帐号，然后下载一个在线聊天工具：淘宝旺旺（淘宝网也提供网页版阿里旺旺）。登录后，可以在我的淘宝中先选择你要购买的商品进行查询，在查询出的页面，你可以选择以商家信誉排列商品或以价格高低排列商品，这样比较一目了然的可以看到你所要选的商品。<br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;然后，选定一家信誉尚可，价格较佳的商家，就你所要的商品和他详谈商品的品质，价格及售后和所走的物流，一切谈妥后，选择支付方式，在这里推荐使用第三方支付平台：支付宝，这一支付平台是你先把货款打入一第三方帐户，只有当你收到货时确认货品与商家承诺一致，支付宝才会把你的款项转入商家户头，这样对你购物比较有保障。你可以用网上银行给支付宝充值，如果无网上银行，可以让有网上银行的朋友给你充值，还有部分商家支持信用卡在线支付的。<br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;第三，当你收到货物后及时查验是否与卖家说描述的相符合，如果没有问题的话可以就货物是否与卖家说描述的相符、卖家的服务态度、卖家的发货速度对卖家的进行评价，这有助于提高双方的信誉，也为其他人购物提供了参考。等到卖家对买家进行了评价后可以说这次交易就完全结束。
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
            <a href="../../indexs.jsp">商城首页</a>&nbsp;|&nbsp;
            <%--<a href="product.jsp">促销中心</a>&nbsp;|&nbsp;--%>
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