<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="./css/denglu.css" rel="stylesheet" >
    <title>管理员登录</title>
</head>

<body style="background-color: #0062CC;">
<form action="Managerlogin" method="post">
    <div class="a"><h1><font color="#F0F8FF"/>网上书店后台登录系统</h1></div>
    <div id="b">
        <div class="c" style="float: relative;"><h2><font color="#1E90FF"/>&nbsp;&nbsp;现 在 登 录</h2></div>
        <div id="d">
            <div id="f">用户名:</div>
            <div id="g"><input class="m" type="text" name="username"> <br/></div>
        </div>
        <div id="d">
            <div id="f">密码:</div>
            <div id="g"><input class="m" type="password" name="password" /><br/></div>
        </div>
        <div id="e"><input class="h" type="submit"  value="登录"  /></div>
    </div>
</form>
<%
    if((String)request.getAttribute("log")=="err")
    {%><script>
          alert("用户名或密码错误，请重新输入！");
      </script><%}
%>
</body>
</html>