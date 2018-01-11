<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:31
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
</head>

<body>
<div class="mianCont">
       <c:import url="Hert.jsp"/>
    <div class="positions">
        当前位置：<a href="../../index.jsp">首页</a> &gt; <a href="#" class="posCur">填写核对订单</a>
    </div><!--positions/-->
    <div class="cont">
        <div class="carImg"><img src="${ctx}/static/images/car2.jpg" width="961" height="27" /></div>
        <h4 class="orderTitle">收货地址</h4>
        <table class="ord">
            <tr>
                <td width="30%">
                    <input type="radio" />${sessionScope.username}
                </td>
                <td width="50%">
                    ${requestScope.uname.address}
                </td>
               <%-- <td>
                   &lt;%&ndash; <span class="green upd">[修改]</span> |&ndash;%&gt; <span class="green add">[添加]</span>
                </td>--%>
            </tr>
        </table><!--ord/-->
        <div class="address">
            <div class="addList">
                <%--<label><span class="red"></span></label>--%>
                <%--<select>
                    <option>请选择省</option>
                </select>
                <select>
                    <option>请选择市</option>
                </select>
                <select>
                    <option>请选择地区</option>
                </select>--%>
            </div><!--addList-->
            <%--<div class="addList">
                <label><span class="red">* </span>详细地址:</label>
                <input type="text" />
            </div><!--addList-->
            <div class="addList">
                <label><span class="red">* </span>邮政编码:</label>
                <input type="text" />
            </div><!--addList-->
            <div class="addList">
                <label><span class="red">* </span>收件人:</label>
                <input type="text" />
            </div><!--addList-->
            <div class="addList">
                <label><span class="red">* </span>手机号码:</label>
            </div><!--addList-->--%>
            <div class="addList2">
                <%--<input type="image" src="${ctx}/static/images/queren.jpg" width="100" height="32" />--%>
            </div><!--addList2/-->
        </div><!--address/-->
        <h4 class="orderTitle">支付方式</h4>
        <ul class="zhiList">
            <li>网银支付-借记卡</li>
            <li>网银支付-信用卡</li>
            <li>财付通-余额支付</li>
            <li>支付宝-余额支付</li>
            <div class="clears"></div>
        </ul><!--zhiList/-->
        <div class="zhifufangshi">
            <ul class="yinhang">
                <li><input type="radio" /><img src="${ctx}/static/images/yin1.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin2.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin3.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin4.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin5.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin6.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin7.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin8.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin9.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin1.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin2.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin3.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin4.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin5.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin6.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin7.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin8.gif" /></li>
                <div class="clears"></div>
            </ul>
        </div><!--zhzhifufangshii/-->
        <div class="zhifufangshi">
            <ul class="yinhang">
                <li><input type="radio" /><img src="${ctx}/static/images/yin7.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin8.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin9.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin1.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin2.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin3.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin4.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin5.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin6.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin7.gif" /></li>
                <li><input type="radio" /><img src="${ctx}/static/images/yin8.gif" /></li>
                <div class="clears"></div>
            </ul>
        </div><!--zhzhifufangshii/-->
        <div class="zhifufangshi">
            <ul class="yinhang">
                <li><input type="radio" /><img src="${ctx}/static/images/caifutong.jpg" /></li>
                <div class="clear"></div>
            </ul>
        </div><!--zhzhifufangshii/-->
        <div class="zhifufangshi">
            <ul class="yinhang">
                <li><input type="radio" /><img src="${ctx}/static/images/zhifubao.jpg" /></li>
                <div class="clear"></div>
            </ul>
        </div><!--zhzhifufangshii/-->
        <h4 class="orderTitle">购物清单</h4>
        <table class="orderList">
            <tr>
                <th width="20"></th>
                <th width="430">商品</th>
                <th width="135">单价</th>
                <th width="135">数量</th>
                <th width="135">总金额</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${requestScope.cidshop}" var="v">
                <tr>
                    <td><input type="checkbox" /></td>
                    <td>
                        <dl>
                            <dt><%--<a href="${ctx}/insertcart?id=${v.['r.id']}">--%><img src="${ctx}/${v.src}" width="85" height="85" /></a></dt>
                            <dd>${v.name}<br /><%--<span class="red">有货：</span>从上海出发--%></dd>
                            <div class="clears"></div>
                        </dl>
                    </td>
                    <td><strong class="red">￥${v.price}</strong></td>
                    <td>
                        <div class="jia_jian">
                            <%--<img src="${ctx}/static/images/jian.jpg" width="21" height="25" class="jian" />--%>
                            <input type="text" class="shuliang" value="${v.count}" />
                            <%--<img src="${ctx}/static/images/jia.jpg" width="21" height="25" class="jia" />--%>
                        </div>
                    </td>
                    <td><strong class="red">￥${v.price*v.count}</strong></td>
                    <td><a href="${ctx}/dingdan?id=${v.sid}&count=${v.count}" class="green">提交</a>
                </tr><%--<a href="#" class="green">删除</a></td>--%>
            </c:forEach>
            <%--<tr>
                <td colspan="6"><div class="shanchu"><img src="${ctx}/static/images/lajio.jpg" /> 全部删除</div></td>
            </tr>--%>
        </table><!--orderList/-->
        <%--<table class="zongjia" align="right">
            <tr>
                <td width="120" align="left">商品总价：</td>
                <td width="60"><strong class="red">+7.88</strong></td>
            </tr>
            <tr>
                <td width="120" align="left">运费总额：</td>
                <td><strong class="red">+121.88</strong></td>
            </tr>
            <tr>
                <td width="120" align="left">促销优惠：</td>
                <td><strong class="red">+341.88</strong></td>
            </tr>
            <tr>
                <td width="120" align="left">合计：</td>
                <td><strong class="red">+2271.88</strong></td>
            </tr>--%>
            <tr>
                <%--<td colspan="2" style="height:50px;">
                    <a href="success.jsp"><img src="${ctx}/static/images/tijao.png" width="142" height="32" /></a>
                </td>--%>
            </tr>
        </table><!--zongjia/-->
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
