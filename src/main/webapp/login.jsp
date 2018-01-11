<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>17商城</title>
    <%@include file="Common.jsp"%>
    <link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
    <script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/js.js"></script>
</head>

<body style=" background:#FFF;">
<div class="loginLogo">
    <div class="logoMid">
        <h1 class="logo" style="height:71px;padding-top:10px;"><a href="index.jsp"><img src="${ctx}/static/images/loginLogo.jpg" width="241" height="71" /></a></h1>
        <div class="loginReg">
            还没有会员账号?&nbsp;<a href="reg.jsp">免费注册</a>
        </div><!--loginReg/-->
    </div><!--logoMid/-->
</div><!--loginLogo/-->
<div class="loginBox">
    <div class="loginLeft">
        <img src="${ctx}/static/images/logoinimg.jpg" width="716" height="376" />
    </div><!--loginLeft/-->
    <form action="login" method="get" class="loginRight">
        <h2>会员登录</h2>
        <input type="hidden" class="name" name="returnUrl"/>
        <h3>用户名</h3>
        <input type="text" class="name" name="username" />
        <h3>密码</h3>
        <input type="password" class="pwd" name="password"/>
        <div class="zhuangtai">
       <%-- <input type="checkbox" checked="checked" /> 下次自动登录--%>
    </div><!--zhuangtai/-->
        <div class="subs">
            <input type="image" src="${ctx}/static/images/sub.jpg" class="submit" />
        </div>
    </form><!--loginRight/-->
    <div class="clears"></div>
</div><!--loginBox/-->
</body>
</html>
