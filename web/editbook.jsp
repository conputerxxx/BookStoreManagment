<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2023/5/8
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>编辑</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link href="./css/edit.css" rel="stylesheet" />
</head>

<body>
<form action="editbook" method="post">
<div class="b">
    <div class="c"><a href="./home page.html">首页</a> </div>
    <div class="d"></div>
    <div class="c"><a href="./dingdan.html">订单管理</a> </div>
    <div class="d"></div>
    <div class="c"><a href="./table.html">用户管理</a> </div>
    <div class="d"></div>
    <div class="c"><a href="./bookinfor.html">图书信息管理</a> </div>
    <div class="d"></div>
    <div class="c"><a href="./addbook.html">图书入库管理</a> </div>
    <div class="d"></div>

</div>
<div class="e">
    <div class="f">编辑</div>
    <div class="input-group">
        <span class="ide">书名：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">作者：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">出版社：</span>
        <input type="text" name="name" class="sousuo2" />
    </div>
    <div class="input-group">
        <span class="ide">编号：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">简介：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">语言：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">价格：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">出版日期：</span>
        <input type="text" name="name" class="sousuo3" />
    </div>
    <div class="input-group">
        <span class="ide">库存：</span>
        <input type="text" name="name" class="sousuo" />
    </div>
    <div class="input-group">
        <span class="ide">书架号：</span>
        <input type="text" name="name" class="sousuo2" />
    </div>
    <input type="submit" name="ok" id="yes" value="确定" />
    <a href="./bookinfor.html">
        <input type="submit" name="ok" id="yes" value="返回" />
    </a>

</div>
</form>
</body>

</html>

