<%--
  Created by IntelliJ IDEA.
  User: 孙博雪
  Date: 2023/5/7
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="./css/addbook.css">
</head>
<body>
<form action="addBookServlet" method="post">
  <div id="left">
    <div class="text"><a href="./home page.html">首页</a> </div>
    <div class="d"></div>
    <div class="text"><a href="./dingdan.html">订单管理</a> </div>
    <div class="d"></div>
    <div class="text"><a href="./table.html">用户管理</a> </div>
    <div class="d"></div>
    <div class="text"><a href="./bookinfor.html">图书信息管理</a> </div>
    <div class="d"></div>
    <div class="text"><a href="./addbook.html">图书入库管理</a> </div>
    <div class="d"></div>
  </div>
  <div id="main">
    <div id="a"><strong>增加书籍</strong></div>
    <div class="name">图书名</div>
    <div class="contend"><input type="text" name="bookname" class="txt"></div>
    <div class="name">作者</div>
    <div class="contend"><input type="text" name="author" class="txt"></div>
    <div class="name">出版社</div>
    <div class="contend"><input type="text" name="publisher" class="txt"></div>
    <div class="name">ISBN</div>
    <div class="contend"><input type="text" name="ISBN" class="txt"></div>
    <div class="name">简介</div>
    <div class="extra"><textarea name="extra" id="profile" placeholder=""></textarea></div>
    <div class="name">价格</div>
    <div class="contend"><input type="text" name="price" class="txt"></div>
    <div class="name">数量</div>
    <div class="contend"><input type="text" name="number" class="txt"></div>
    <div id="buttom"> <button type="submit" name="button2" id="add">添加</button></div>
  </div>
</form>
</body>
</html>
