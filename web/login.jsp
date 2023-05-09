<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2023/5/6
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/base.css">
</head>
<body>
<form action="login" method="post">
<!--登录头部开始-->
<div id="topper">
    <div class="a1"><a href="./login.html">登录</a></div>
    <div class="a2"><a href="./register.html">注册</a></div>
    <div class="a2"><a href="./shopping car.html">购物车</a></div>
    <div class="a2"><a href="./queren.html">订单</a></div>
    <div class="a2"><a href="./address.html">我的</a></div>
    <div class="a2"><a href="./首页.html">首页</a></div>
</div>
<!--登录头部结束-->

<!--主体开始-->
<div class="main_content">
    <div class="text">
        <p>依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！ </p>
    </div>
    <div class="login_w">
        <div class="form">
            <div class="form_text">
                <p>不会以任何理由要求您转账汇款，谨防诈骗。</p>
            </div>
            <div class="top">
                <a href="./login.html" class="one">账户登录</a>
            </div>
            <div class="middle">
                <div class="inputs">
                    <form action="#" method="post">
                        <label for="user"><input type="text" class="public user" id="user" name="username"></label>
                        <label for="pwd"><input type="password" class="public pwd" id="pwd" name="password"></label>
                        <span class="user_img"></span>
                        <span class="pwd_img"></span>
                        <input type="submit" class="btn" id="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--主体结束-->

<!--尾部开始-->
<div class="footer">
    <p>
        <a href="#">关于我们 </a>|
        <a href="#">联系我们 </a>|
        <a href="#">商家入驻 </a>|
        <a href="#">广告服务 </a>|
        <a href="#">书友社区 </a>|
        <a href="#">书店公益 </a>
    </p>
</div>
<!--尾部结束-->
</form>
<%
    if((String)request.getAttribute("log")=="err")
    {%><script>
             alert("用户名或密码错误，请重新输入！");
       </script><%}
%>
</body>
</html>
