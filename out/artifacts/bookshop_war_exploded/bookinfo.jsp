<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2023/5/8
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>bookinformation</title>
  <link rel="stylesheet" type="text/css" href="./css/bookinformation.css">
</head>
<body>

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
  <div id="search">
    <div id="sear">
      <form action="" method="post">
        <input placeholder="输入图书ISBN" name="keyword" type="text" id="searchtxt">
        <button type="submit" id="sousuo">搜索</button>
      </form>
    </div>
  </div>
  <div id="tab">
    <table  width="100%" height="100%" border="1" bordercolor="black">
      <tr>
        <td colspan="8"  >全部图书</td>
      </tr>
      <tr>
        <th width="8%" align="center">书名</th><th width="8%">作者</th><th width="12%">出版社</th><th width="12%">ISBN</th><th width="5%">价格</th><th width="5%" >库存</th><th width="5%">编辑</th><th width="5%">删除</th>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>
      <tr>
        <td>活着</td><td>余华</td><td>沈阳出版社</td><td>9787544138000</td><td>20.00</td><td>2</td><td><a href="./edit.html"><input type="button" value="编辑" class="p"></a></td><td><a href=""><input type="button" value="删除" class="p"></a> </td>
      </tr>

    </table>
  </div>
</div>
</body>
</html>
