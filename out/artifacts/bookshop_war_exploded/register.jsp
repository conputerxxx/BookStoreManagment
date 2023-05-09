
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <link href="./css/shudian.css" rel="stylesheet" >
  <title>register</title>
</head>
<body>
<form action="register" method="post">
  <div id="footer0" style="">
    <div id="topper">
      <div class="a1"><a href="./login.html">登录</a></div>
      <div class="a2"><a href="./register.html">注册</a></div>
      <div class="a2"><a href="./shopping car.html">购物车</a></div>
      <div class="a2"><a href="./queren.html">订单</a></div>
      <div class="a2"><a href="./address.html">我的</a></div>
      <div class="a2"><a href="./首页.html">首页</a></div>

    </div>
  </div>
  <div id="container" style="width:100%">
    <div id="header" style="height:90px;width:100%;font-family:arial;color:#a52a2a;;font-size:18px;">
      <h1 style="margin-bottom:0;">新用户注册</h1></div>


    <div id="content" style="height:60px;width:100%;text-align:center;">
      <div id="phone" style="background-color:#ffffff;height:100%;width:100%;">手机号 * &nbsp &nbsp &nbsp<input type="text" name="txtphone" /><br/></div>

      <div id="password" style="background-color:#ffffff;height:100%;width:100%;">&nbsp;&nbsp;密 码 * &nbsp &nbsp &nbsp<input type="password" name="txtpassword"/><br/></div>
      <div id="school" style="background-color:#FFFFFF;height:100%;width:100%;">&nbsp;&nbsp;确认密码 *   &nbsp<input type="password" name="password2"/><br/></div>


      <div id="name" style="background-color:#ffffff;height:100%;width:100%;">&nbsp;&nbsp;昵  称 * &nbsp &nbsp &nbsp<input type="text" name="txtname"/><br/></div>
      <div id="sex" style="background-color:#FFFFFF;height:80%;width:100%;">&nbsp;&nbsp;性别 * &nbsp &nbsp &nbsp<select name="txtsex" id="txtsex">
        <option value ="1">男</option>
        <option value ="2">女</option>
      </select>
        <br></div>

      <div id="sub" style="background-color:#FFFFFF;height:100%;width:100%;"><input type="submit" id="button1" name="button1" value="提交注册"/>
      </div>
      <div id="bottomend" style="height:100px;width:100%;clear:both;text-align:center;">
        <p>
          <a href="#">关于我们 </a>|
          <a href="#">联系我们 </a>|
          <a href="#">商家入驻 </a>|
          <a href="#">广告服务 </a>|
          <a href="#">书友社区 </a>|
          <a href="#">书店公益 </a>
        </p>
      </div>
    </div>
  </div>
</form>
<%
  if((String)request.getAttribute("loog")=="err")
   {%><script>
       alert("该用户已注册过或两次密码输入不正确，请重新输入");
      </script><%}
%>
</body>
</html>