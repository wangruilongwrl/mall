<%--
  Created by IntelliJ IDEA.
  User: WRL
  Date: 2017/11/16
  Time: 17:36
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
    <script type="text/javascript">
       $(function () {
           $("input[name='aba']").click(function () {
               if($(this).is(':checked')){
                   $(".register").removeAttr("disabled");
               }else{
                   $(".register").attr("disabled",true);
               }
           });

                   $("input[id=username]").blur(function () {
                       //点击按钮，发起ajax请求
                       $.ajax({
                           //请求地址
                           url:"reg",
                           //请求类型
                           type:"POST",
                           //请求参数
                           data:{
                               username:$(this).val()
                           },
                           success:function (result) {
                               console.log("success");
                               console.log(result.msg);
                               //在按钮下添加p标签，标签内容就是result
                               $("span[id=us]").text(result.msg);
                           },
                           error:function (error) {
                               console.log("error"+error);
                               console.log(error);
                           }
                       });
                   });
       })
    </script>
</head>

<body style=" background:#FFF;">
<div class="loginLogo">
    <div class="logoMid">
        <h1 class="logo" style="height:71px;padding-top:10px;"><a href="index.jsp"><img src="${ctx}/static/images/loginLogo.jpg" width="241" height="71" /></a></h1>
        <div class="loginReg">
            还没有会员账号?&nbsp;<a href="login.jsp">登录</a>
        </div><!--loginReg/-->
    </div><!--logoMid/-->
</div><!--loginLogo/-->
<div class="loginBox">
    <img src="${ctx}/static/images/chengnuo.jpg" width="295" height="393" class="chengnuo" />
    <form action="regis" method="post" class="reg">
        <div class="regList">
            <label><span class="red">*</span> 账户名</label>
            <input type="text" name="username" id="username"/>
            <span id="us"></span>
        </div><!--regList/-->
        <div class="regList">
            <label><span class="red">*</span> 请设置密码</label>
            <input type="password"  name="password"/>
        </div><!--regList/-->
        <div class="regList">
            <label><span class="tel">*</span> 请输入手机号</label>
            <input type="text"  name="tel" title="请输入正确的手机号格式" pattern="\^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$\"/>
        </div><!--regList/-->
        <%--<div class="regList">
            <label><span class="red">*</span> 验证码</label>
            <input type="text" class="yanzheng" /><img src="${ctx}/static/images/yanzheng.jpg" width="103" height="38" />
        </div><!--regList/-->--%>
        <div class="xieyi">
            <input type="checkbox" name="aba" class="checkb" /> 我已经阅读并同意<a href="#">《17用户注册协议》</a>
        </div><!--xieyi/-->
        <div class="reg">
           <%-- <input type="image" src="${ctx}/static/images/reg.jpg" width="284" height="34"  disabled="disabled" class="register"/>--%>
            <input type="submit" disabled="disabled" class="register" value="注册" />
        </div><!--reg/-->
    </form><!--reg/-->
    <div class="clears"></div>
</div><!--loginBox/-->
</body>
</html>
