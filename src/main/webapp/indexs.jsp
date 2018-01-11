<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>17商城</title>
  <%--<%@include file="Common.jsp"%>--%>
  <link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
  <script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
  <script type="text/javascript" src="${ctx}/static/js/js.js"></script>
  <script src="${ctx} /static/js/wb.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
      $(function(){
          $("#kinMaxShow").kinMaxShow();
      });
  </script>
</head>

<body>
<div class="mianCont">
  <div class="top">
   <%-- <span>您好！欢迎来到17商城 请&nbsp;<a href="login.jsp">[登录]</a>&nbsp;<a href="reg.jsp">[注册]</a></span>--%>
    <c:choose>
      <c:when test="${sessionScope.username!=null}">
        <span>欢迎<a href="#">${sessionScope.username}</a>登录</span>
        <span><a href="${ctx}/zhuxiao">[注销]</a></span>
      </c:when>
      <c:otherwise>
        <a href="${ctx}/login.jsp">[登录]</a>
        <a href="reg.jsp">[注册]</a>
      </c:otherwise>
    </c:choose>
    <span class="topRight">
    <a href="WEB-INF/view/vip.jsp">我的17</a>&nbsp;|
    <a href="WEB-INF/view/order.jsp">我的订单</a>&nbsp;|
    <%--<a href="vip.jsp">会员中心</a>&nbsp;|--%>
    <a href="WEB-INF/view/contact.jsp">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
    <h1 class="logo"><a href="indexs.jsp"><img src="${ctx}/static/images/logo.png" width="217" height="90" /></a></h1>
    <form action="mohu" method="get" class="subBox">
      <div class="subBoxDiv">
        <input type="text" class="subLeft" name="shopname"/>
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
        <%--<strong class="red">0</strong>&nbsp;件&nbsp;|
        <strong class="red">￥ 0.00</strong>--%>
        <a href="${ctx}/insertcart?id=${requestScope.shopid.id}">我的购物车</a> <img src="${ctx}/static/images/youjian.jpg" width="5" height="8" />
      </div><!--gouCar/-->
      <div class="myChunlv">
        <a href="WEB-INF/view/vip.jsp"><img src="${ctx}/static/images/mychunlv.jpg" width="112" height="34" /></a>
      </div><!--myChunlv/-->
    </div><!--gouwuche/-->
  </div><!--lsg/-->
  <div class="pnt">
    <div class="pntLeft">
      <h2 class="Title">所有商品分类</h2>
      <ul class="InPorNav">
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
    </div><!--pntLeft/-->
    <div class="pntRight">
      <ul class="nav">
        <li class="navCur"><a href="indexs.jsp">商城首页</a></li>
        <%--<li><a href="product.jsp">促销中心</a></li>--%>
        <li><a href="vip">会员中心</a></li>
        <li><a href="WEB-INF/view/help.jsp">帮助中心</a></li>
        <div class="clears"></div>
        <div class="phone">TEL：021-12345678</div>
      </ul><!--nav/-->
      <div class="banner">
        <div id="kinMaxShow">
          <div>
            <a href="#"><img src="${ctx}/static/images/ban1.jpg" height="360"  /></a>
          </div>
          <div>
            <a href="#"><img src="${ctx}/static/images/ban2.jpg" height="360"  /></a>
          </div>
          <div>
            <a href="#"><img src="${ctx}/static/images/ban3.jpg" height="360"  /></a>
          </div>
          <div>
            <a href="#"><img src="${ctx}/static/images/ban4.jpg" height="360"  /></a>
          </div>
          <div>
            <a href="#"><img src="${ctx}/static/images/ban5.jpg" height="360"  /></a>
          </div>
        </div><!--kinMaxShow/-->
      </div><!--banner/-->
    </div><!--pntRight/-->
    <div class="clears"></div>
  </div><!--pnt/-->
  <div class="rdPro">
    <div class="rdLeft">
      <ul class="rdList">
        <li>热销产品</li>
        <div class="clears"></div>
      </ul><!--rdList/-->
      <div class="rdProBox">
        <c:forEach items="${applicationScope.sale}" var="sa" end="4">
        <dl>
          <dt><a href="${ctx}/byid?id=${sa.id}"><img src="${ctx}/${sa.src}" width="132" height="129" /></a></dt>
          <dd>${sa.name}</dd>
          <dd class="cheng">￥${sa.price}</dd>
        </dl>
        </c:forEach>
        <%--<dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <div class="clears"></div>
      </div><!--rdPro/-->
      <div class="rdProBox">
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>
        <dl>
          <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
          <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
          <dd class="cheng">￥19.80/袋</dd>
        </dl>--%>
        <div class="clears"></div>
      </div><!--rdPro/-->
    </div><!--rdLeft/-->
    <div class="rdRight">
      <img src="${ctx}/static/images/rdRight.jpg" width="221" height="254" />
    </div><!--rdRight/-->
    <div class="clears"></div>
  </div><!--rdPro/-->
  <div class="hengfu">
    <img src="${ctx}/static/images/hengfu1.jpg" width="979" height="97" />
  </div><!--hengfu/-->

  <%--<div class="floor" id="floor1">
    <h3 class="floorTitle">
      1F&nbsp;&nbsp;&nbsp;&nbsp;生活用品
      <a href="proinfo.jsp" class="more">更多 &gt;</a>
    </h3>
    <div class="floorBox">
      <div class="floorLeft">
        <ul class="flList">
          <li>零食</li>
          <li>水杯</li>
          <li>宠物</li>
          <li>学习</li>
          <li></li>
          <li><a href="proinfo.jsp">更多&gt;&gt;</a></li>
          <div class="clears"></div>
        </ul><!--flList/-->
        <div class="flImg"><img src="${ctx}/static/images/flListimg.jpg" width="198" height="290" /></div>
      </div><!--floorLeft/-->
      <div class="floorRight">
        <div class="frProList">
          <c:forEach items="${applicationScope.types}" var="t" varStatus="status">
            <c:forEach items="${applicationScope.shops[status.index].shop}" var="s">
              <dl>
                <dt></dt>
                <dd>${s.name}</dd>
                <dd></dd>
              </dl>
            </c:forEach>
          </c:forEach>
          &lt;%&ndash;<dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>&ndash;%&gt;
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
      </div><!--floorRight/-->
      <div class="clears"></div>
    </div><!--floorBox/-->
  </div><!--floor/-->
  <div class="hengfu">
    <img src="${ctx}/static/images/hengfu2.jpg" width="978" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor3">
    <h3 class="floorTitle">
      2F&nbsp;&nbsp;&nbsp;&nbsp;餐具系列
      <a href="proinfo.jsp" class="more">更多 &gt;</a>
    </h3>
    <div class="floorBox">
      <div class="floorLeft">
        <ul class="flList">
          <li>蛋糕</li>
          <li>沙拉</li>
          <li>西餐</li>
          <li>中餐</li>
          <li>外带打包</li>
          <li><a href="proinfo.jsp">更多&gt;&gt;</a></li>
          <div class="clears"></div>
        </ul><!--flList/-->
        <div class="flImg"><img src="${ctx}/static/images/flListimg.jpg" width="198" height="290" /></div>
      </div><!--floorLeft/-->
      <div class="floorRight">
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src=${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src=${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
      </div><!--floorRight/-->
      <div class="clears"></div>
    </div><!--floorBox/-->
  </div><!--floor/-->
  <div class="hengfu">
    <img src="${ctx}/static/images/hengfu1.jpg" width="978" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor2">
    <h3 class="floorTitle">
      3F&nbsp;&nbsp;&nbsp;&nbsp;纸浆模塑系列
      <a href="proinfo.jsp" class="more">更多 &gt;</a>
    </h3>
    <div class="floorBox">
      <div class="floorLeft">
        <ul class="flList">
          <li>纸碟</li>
          <li>纸袋</li>
          <li>纸碗</li>
          <li>食品袋</li>
          <li>外带打包</li>
          <li><a href="proinfo.jsp">更多&gt;&gt;</a></li>
          <div class="clears"></div>
        </ul><!--flList/-->
        <div class="flImg"><img src="${ctx}/static/images/flListimg.jpg" width="198" height="290" /></div>
      </div><!--floorLeft/-->
      <div class="floorRight">
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro3.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
        <div class="frProList">
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro1.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro2.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro4.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <dl>
            <dt><a href="proinfo.jsp"><img src="${ctx}/static/images/rdPro5.jpg" width="132" height="129" /></a></dt>
            <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
            <dd class="cheng">￥19.80/袋</dd>
          </dl>
          <div class="clears"></div>
        </div><!--frProList-->
      </div><!--floorRight/-->--%>
     <%-- <div class="clears"></div>--%>
    </div><!--floorBox/-->
 <%-- </div><!--floor/-->--%>
  <%--<div class="inHelp">
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
        <li><a href="reg.jsp">会员注册</a></li>
        <li><a href="login.jsp">会员登录</a></li>
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
      <a href="indexs.jsp">商城首页</a>&nbsp;|&nbsp;
      <a href="product.jsp">促销中心</a>&nbsp;|&nbsp;
      <a href="order.jsp">我的订单</a>&nbsp;|&nbsp;
      <a href="new.jsp">新闻动态</a>&nbsp;|&nbsp;
      <a href="login.jsp">会员中心</a>&nbsp;|&nbsp;
      <a href="help.jspl">帮助中心</a>
    </p>
    <p>
      版权所有：上海17实业有限公司 版权所有  Copyright 2010-2015   沪ICP备00000000号   <a href="http://www.mycodes.net/" target="_blank">源码之家</a>
</p>
</div><!--mianCont/-->
<a href="#" class="backTop">&nbsp;</a>--%>
<c:import url="WEB-INF/view/TongYong.jsp"></c:import>
</body>
</html>

