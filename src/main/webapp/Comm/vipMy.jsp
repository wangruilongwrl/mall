<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>17商城</title>
    <%@include file="../Common.jsp"%>
    <link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/js.js"></script>
    <script src="${ctx}/static/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function(){
            $(".vipNav dd:eq(1)").show();
        })
    </script>
</head>

<body>
<div class="mianCont">
    <div class="top">
        <span>您好！欢迎来到17商城 请&nbsp;<a href="../login.jsp">[登录]</a>&nbsp;<a href="../reg.jsp">[注册]</a></span>
        <span class="topRight">
    <a href="../WEB-INF/view/vip.jsp">我的17</a>&nbsp;|
    <a href="../WEB-INF/view/order.jsp">我的订单</a>&nbsp;|
    <a href="../login.jsp">会员中心</a>&nbsp;|
    <a href="../WEB-INF/view/contact.jsp">联系我们</a>
   </span>
    </div><!--top/-->
        <div class="lsg">
            <h1 class="logo"><a href="../index.jsp"><img src="${ctx}/static/images/logo.png" width="217" height="90" /></a></h1>
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
                    <strong class="red">0</strong>&nbsp;件&nbsp;|
                    <strong class="red">￥ 0.00</strong>
                    <a href="../WEB-INF/view/order.jsp">去结算</a> <img src="${ctx}/static/images/youjian.jpg" width="5" height="8" />
                </div><!--gouCar/-->
                <div class="myChunlv">
                    <a href="../WEB-INF/view/vip.jsp"><img src="${ctx}/static/images/mychunlv.jpg" width="112" height="34" /></a>
                </div><!--myChunlv/-->
            </div><!--gouwuche/-->
        </div><!--lsg/-->
        <div class="pnt">
        <div class="pntLeft">
            <h2 class="Title">所有商品分类
                <ul class="InPorNav">
                    <c:forEach items="${applicationScope.types}" var="t" varStatus="status">
                        <li><a href="${ctx}/brand?id=${t.id}">${t.name}</a>
                            <div class="chilInPorNav">
                                    <%--<script>console.log('-->${t.name}')</script>--%>
                                <c:forEach items="${applicationScope.brand[status.index].shopp}" var="s">
                                    <%--<script>console.log('${s.name}')</script>--%>
                                    <a href="#">${s.name}</a>
                                </c:forEach>
                            </div>
                        </li>
                    </c:forEach>
                </ul><!--InPorNav/-->
            </h2>
        </div><!--pntLeft/-->
        <div class="pntRight">
            <ul class="nav">
                <li><a href="../index.jsp">商城首页</a></li>
                <li><a href="../WEB-INF/view/product.jsp">促销中心</a></li>
                <li><a href="../login.jsp">会员中心</a></li>
                <li><a href="../WEB-INF/view/help.jsp">帮助中心</a></li>
                <div class="clears"></div>
                <div class="phone">TEL：021-12345678</div>
            </ul><!--nav/-->
        </div><!--pntRight/-->
        <div class="clears"></div>
    </div><!--pnt/-->
    <div class="positions">
        当前位置：<a href="../index.jsp">首页</a> &gt; <a href="../WEB-INF/view/vip.jsp">会员中心</a>
        &gt; <a href="#" class="posCur">我的订单</a>
    </div><!--positions/-->
    <div class="cont">
        <div class="contLeft" id="contLeft">
            <h3 class="leftTitle">会员中心</h3>
            <dl class="helpNav vipNav">
                <dt>我的主页</dt>
                <dd>
                    <a href="../WEB-INF/view/vip.jsp">个人中心</a>
                    <a href="../WEB-INF/view/vipOrder.jsp">我的订单</a>
                </dd>
                <dt>账户设置</dt>
                <dd>
                    <a href="vipMy.jsp" class="vipCur">个人信息</a>
                    <a href="vipPwd.jsp">密码修改</a>
                    <a href="vipAdress.jsp">收货地址</a>
                </dd>
                <dt>客户服务</dt>
                <dd>
                    <a href="../WEB-INF/view/vipExit.jsp">网站使用条款</a>
                    <a href="../WEB-INF/view/vipTuihuo.jsp">网站免责声明</a>
                    <%--<a href="Comm/message.jsp">在线留言</a>--%>
                </dd>


            </dl><!--helpNav/-->
        </div><!--contLeft/-->
        <div class="contRight">
            <h1 class="vipName"><span>用户名：</span>纯小绿先森  <strong class="vipUp">[点击修改/补充个人信息]</strong></h1>
            <table class="vipMy">
                <tr>
                    <th>用户名</th>
                    <th>邮编</th>
                    <th>真实姓名</th>
                    <th>联系方式</th>
                    <th>证件号码</th>
                    <th>地址</th>
                </tr>
                <tr>
                    <td>纯小绿先森</td>
                    <td>200000</td>
                    <td>张益达</td>
                    <td>13322256586</td>
                    <td>3124199901235468</td>
                    <td>上海市普陀区中友大厦1040弄19楼</td>
                </tr>
            </table><!--vipMy/-->
            <div class="address">
                <div class="addList">
                    <label><span class="red">* </span>用户名:</label>
                    <input type="text" />
                </div><!--addList-->
                <div class="addList">
                    <label><span class="red">* </span>详细地址:</label>
                    <input type="text" />
                </div><!--addList-->
                <div class="addList">
                    <label><span class="red">* </span>邮政编码:</label>
                    <input type="text" />
                </div><!--addList-->
                <div class="addList">
                    <label><span class="red">* </span>证件号码:</label>
                    <input type="text" />
                </div><!--addList-->
                <div class="addList">
                    <label><span class="red">* </span>手机号码:</label>
                    <input type="text" /> 或者固定电话 <input type="text" />
                </div><!--addList-->
                <div class="addList">
                    <label><span class="red">* </span>选择地区:</label>
                    <select>
                        <option>请选择省</option>
                    </select>
                    <select>
                        <option>请选择市</option>
                    </select>
                    <select>
                        <option>请选择地区</option>
                    </select>
                </div><!--addList-->
                <div class="addList2">
                    <input type="image" src="${ctx}/static/images/baocun.png" width="79" height="30" />
                </div><!--addList2/-->
            </div><!--address/-->
        </div><!--contRight/-->
        <div class="clears"></div>
    </div><!--cont/-->
    <div class="inHelp">
        <div class="inHLeft">
            <h4>帮助中心</h4>
            <ul class="inHeList">
                <li><a href="../WEB-INF/view/help.jsp">购物指南</a></li>
                <li><a href="../WEB-INF/view/help.jsp">支付方式</a></li>
                <li><a href="../WEB-INF/view/help.jsp">售后服务</a></li>
                <li><a href="../WEB-INF/view/about.jsp">企业简介</a></li>
                <div class="clears"></div>
            </ul><!--inHeList/-->
        </div><!--inHLeft/-->
        <div class="inHLeft">
            <h4>会员服务</h4>
            <ul class="inHeList">
                <li><a href="../reg.jsp">会员注册</a></li>
                <li><a href="../login.jsp">会员登录</a></li>
                <li><a href="../WEB-INF/view/order.jsp">购物车</a></li>
                <li><a href="../WEB-INF/view/order.jsp">我的订单</a></li>
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
            <a href="../index.jsp">商城首页</a>&nbsp;|&nbsp;
            <a href="../WEB-INF/view/product.jsp">促销中心</a>&nbsp;|&nbsp;
            <a href="../WEB-INF/view/order.jsp">我的订单</a>&nbsp;|&nbsp;
            <a href="new.jsp">新闻动态</a>&nbsp;|&nbsp;
            <a href="../login.jsp">会员中心</a>&nbsp;|&nbsp;
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
