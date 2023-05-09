<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2023/4/26
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="./css/addr.css">
  <title>addresspage</title>
</head>

<body>
<form action="address" method="post">
  <div id="topper">
    <div class="a1"><a href="./login.html">登录</a></div>
    <div class="a2"><a href="./register.html">注册</a></div>
    <div class="a2"><a href="./shopping car.html">购物车</a></div>
    <div class="a2"><a href="./queren.html">订单</a></div>
    <div class="a2"><a href="./address.html">我的</a></div>
    <div class="a2"><a href="./首页.html">首页</a></div>

  </div>
  <div id="top">
    <div id="mine">我的</div>
    <div id="addrmana">地址管理</div>
  </div>
  <div id="left"></div>
  <div id="mid">
    <div id="title"> 收货地址</div>
    <div id="add">新增收货地址</div>
    <div id="addinfor">  <div id="t1">* 地址信息：</div>
      <div id="text1">
        <form action="http://localhost:8080/bs/address" method="post">
          <select name="addr" class="s1" >
            <option value="1">北京</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select>
        </form>
      </div></div>
    <div id="exact">
      <div id="t2">* 详细地址:</div>
      <div id="text2"><textarea name="exact" id="s2" placeholder="请输入详细地址信息，如道路、门牌号、小区、楼栋号、单元等信息"></textarea></div>
    </div>
    <div id="num">
      <div id="t3">邮政编码:</div>
      <div id="text3"><input type="text" name="email" class="s3" placeholder="请输入邮编"></div>
    </div>
    <div id="name">
      <div id="t4">* 收货人姓名:</div>
      <div id="text4"><input type="text" name="name" class="s3" placeholder="长度不超过25个字符"></div>
    </div>
    <div id="phone">
      <div id="t5">* 手机号码:</div>
      <div id="zone">
        <form>
          <select name="phone" id="s4">
            <option value="1">中国大陆 +86</option>
          </select>
        </form>
      </div>
      <div id="text5"><input type="text" name="phonenumber" id="s5" placeholder="电话号码、手机号码必须填一项"></div>
    </div>

    <div id="OK">
      <input type="submit"  name="button1" id="s6" valve="确认"/>
    </div>
  </div>
  <div id="bottomend">
    <p>
      <a href="#">关于我们 </a>|
      <a href="#">联系我们 </a>|
      <a href="#">商家入驻 </a>|
      <a href="#">广告服务 </a>|
      <a href="#">书友社区 </a>|
      <a href="#">书店公益 </a>
    </p>
  </div>
</form>
<%
   if((String)request.getAttribute("log") == "ok")
   {%><script>
     alert("添加成功");
     </script><%}
   if((String)request.getAttribute("log")=="err")
   {%><script>
     alert("您尚未注册或未填写完整信息，请重新输入！");
   </script><%}
%>
</body>
</html>

