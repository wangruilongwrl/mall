<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/21
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../Common.jsp"%>
<div class="top">
    <%--<span>您好！欢迎来到17商城 请&nbsp;<a href="login.jsp">[登录]</a>&nbsp;<a href="reg.jsp">[注册]</a></span>--%>
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
    <form action="mohu" method="get" class="subBox">
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
                <%--<li><a href="product.jsp">纸杯系列</a>
                    <div class="chilInPorNav">
                        <a href="#">单层热饮杯</a>
                        <a href="#">双层中空杯</a>
                        <a href="#">瓦楞隔热杯</a>
                        <a href="#">双淋膜冷饮杯</a>
                        <a href="#">爆米花桶</a>
                        <a href="#">纸碗</a>
                        <a href="#">冰淇淋纸杯</a>
                        <a href="#">PS杯盖</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">PET系列</a>
                    <div class="chilInPorNav">
                        <a href="#">PET透明杯</a>
                        <a href="#">PET透明盖</a>
                        <a href="#">PET透明沙拉盒</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">饮品杯配套系列</a>
                    <div class="chilInPorNav">
                        <a href="#">杯袖</a>
                        <a href="#">环保纸浆杯托</a>
                        <a href="#">纸杯打包袋</a>
                        <a href="#">吸管</a>
                        <a href="#">搅拌棒</a>
                        <a href="#">杯盖</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">纸浆环保餐具系列</a>
                    <div class="chilInPorNav">
                        <a href="#">纸碟</a>
                        <a href="#">纸碗</a>
                        <a href="#">纸浆带盖汤碗</a>
                        <a href="#">连体餐盒</a>
                        <a href="#">分体餐盒</a>
                        <a href="#">纸浆沙拉盒</a>
                        <a href="#">纸托盘</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">纸餐盒系列</a>
                    <div class="chilInPorNav">
                        <a href="#">圆底纸餐盒</a>
                        <a href="#">方底纸餐盒</a>
                        <a href="#">三明治纸盒</a>
                        <a href="#">蛋糕盒</a>
                        <a href="#">其他纸餐盒</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">刀叉勺餐具</a>
                    <div class="chilInPorNav">
                        <a href="#">PS刀叉勺系列</a>
                        <a href="#">PLA刀叉勺系列</a>
                        <a href="#">淀粉刀叉勺系列</a>
                        <a href="#">搅拌棒/吸管</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">生活用纸</a>
                    <div class="chilInPorNav">
                        <a href="#">餐巾纸</a>
                        <a href="#">抽纸</a>
                        <a href="#">卫生纸</a>
                        <a href="#">擦手纸</a>
                        <a href="#">其他纸类</a>
                    </div><!--chilLeftNav/-->
                </li>
                <li><a href="product.jsp">纸袋/环保打包袋</a>
                    <div class="chilInPorNav">
                        <a href="#">纸袋</a>
                        <a href="#">环保淀粉塑料袋</a>
                        <a href="#">PLA塑料袋</a>
                        <a href="#">食品袋</a>
                    </div><!--chilLeftNav/-->
                </li>--%>
            </ul><!--InPorNav/-->
        </h2>
    </div><!--pntLeft/-->
    <div class="pntRight">
        <ul class="nav">
            <li><a href="../../index.jsp">商城首页</a></li>
           <%-- <li><a href="product.jsp">促销中心</a></li>--%>
            <li><a href="vip">会员中心</a></li>
            <li class="navCur"><a href="help.jsp">帮助中心</a></li>
            <div class="clears"></div>
            <div class="phone">TEL：021-12345678</div>
        </ul><!--nav/-->
    </div><!--pntRight/-->
    <div class="clears"></div>
</div><!--pnt/-->