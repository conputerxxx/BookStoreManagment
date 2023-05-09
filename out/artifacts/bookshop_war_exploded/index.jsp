<%--
  Created by IntelliJ IDEA.
  User: cc
  Date: 2023/4/26
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <title>首页</title>
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
  <link href="./css/shouye.css" rel="stylesheet" />
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <script type="text/javascript">
    var t = n = 0,
            count;
    $(document).ready(function() {
      // 获取图片标签长度
      count = $("#banner_list a").length;
      // 不是当前显示的图片隐藏
      $("#banner_list a:not(:first-child)").hide();
      // 点击下面的1234按钮，切换图片
      $("#banner li").click(function() {
        var i = $(this).text() - 1;
        n = i;
        if (i >= count) return;
        // 淡入淡出效果
        $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
        // 响应点击
        $(this).toggleClass("on");

        // 切换按钮的时候让上一个按钮回归原来的样式
        $(this).siblings().removeAttr("class");
      });
      t = setInterval("showAuto()", 4000);
      $("#banner").hover(function() {
                clearInterval(t)
              },
              function() {
                t = setInterval("showAuto()", 4000);
              });
    })
    // 自动轮播
    function showAuto() {
      n = n >= (count - 1) ? 0 : ++n;
      $("#banner li").eq(n).trigger('click');
    }
  </script>
</head>

<body>
<div class="top">
  <div class="a1"><a href="./login.html">登录</a></div>
  <div class="a2"><a href="./register.html">注册</a></div>
  <div class="a2"><a href="./shopping car.html">购物车</a></div>
  <div class="a2"><a href="./queren.html">订单</a></div>
  <div class="a2"><a href="./address.html">我的</a></div>

</div>
<div class="b">
  <div class="b1"><img src="./img/00.jpeg" height="100%" width="100%"/></div>
  <div id="search">
    <form action="" method="post">
      <input  name="keyword" type="text" id="searchtxt">
      <button type="submit" id="sousuo">搜索</button>
    </form>
  </div>
</div>
<div class="c"><h2>电子书分类</h2></div>
<div class="d">
  <div class="d1">
    <div class="d11">文学</div>
    <div class="d12"><a href="./index.html">影视原著</a></div>
    <div class="d12"><a href="./index.html">文学小说</a></div>
  </div>
  <div class="d2"></div>
  <div class="d1">
    <div class="d11">经管励志</div>
    <div class="d12"><a href="./index.html">金融投资</a></div>
    <div class="d12"><a href="./index.html">市场营销</a></div>
  </div>
  <div class="d2"></div>
  <div class="d1">
    <div class="d11">人文社科</div>
    <div class="d12"><a href="./index.html">历史考古</a></div>
    <div class="d12"><a href="./index.html">政治军事</a></div>
  </div>
  <div class="d2"></div>
  <div class="d1">
    <div class="d11">生活休闲</div>
    <div class="d12"><a href="./index.html">两性情感</a></div>
    <div class="d12"><a href="./index.html">健康养生</a></div>
  </div>
  <div class="d2"></div>
  <div class="d1">
    <div class="d11">学习教育</div>
    <div class="d12"><a href="./index.html">外语学习</a></div>
    <div class="d12"><a href="./index.html">教辅用书</a></div>
  </div>
</div>
<div class="container">
  <div id="banner">
    <div id="banner_bg">
    </div>
    <div id="banner_info">
    </div>
    <ul>
      <li class="on">
        1
      </li>
      <li>
        2
      </li>
      <li>
        3
      </li>

    </ul>
    <div id="banner_list">
      <a  href="./detailedpage.html"><img src="./img/1.png" height="400px" width="100%"/></a>
      <a  href="./detailedpage.html"><img src="./img/2.png" height="400px" width="665px"/></a>
      <a  href="./detailedpage.html"><img src="./img/3.jpg" height="400px" width="665px"/></a>

    </div>
  </div>

</div>
<div class="f">
  <div class="f1"><a  href="./detailedpage.html"><img src="./img/5.png" height="100%" width="100%"/></a></div>
  <div class="f1"><a  href="./detailedpage.html"><img src="./img/6.png" height="100%" width="100%"/></a></div>
</div>
<div class="g"><h1>特价专区</h1></div>
<div class="h"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/4.png" height="100%" width="100%"/>
  </div>
  <div class="h2">微积分的力量</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/7.png" height="100%" width="100%"/>
  </div>
  <div class="h2">财富、贫穷与政治</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/8.png" height="100%" width="100%"/>
  </div>
  <div class="h2">复盘的技术</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/9.png" height="100%" width="100%"/>
  </div>
  <div class="h2">今宵欢乐多</div>
</a></div>
<div class="j" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="l">
  <div class="l1">销售总榜</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/34.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">老爸评测：你的健康呵护指南</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/35.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">曾经少年</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/36.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">干法</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">前男友的遗书</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">吞噬星空</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">活着</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">兄弟</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">射雕英雄传</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">狂飙</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">胆小鬼</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">你好，旧时光</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">最好的我们</div>
  <div class="l2"><a href="./detailedpage.html">
    <img src="./img/37.png" height="100%" width="100%"/>
  </a></div>
  <div class="l3">请回答1988</div>

</div>
<div class="g"><h1>新书推荐</h1></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/10.png" height="100%" width="100%"/>
  </div>
  <div class="h2">我和妈妈的最后一年</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/11.png" height="100%" width="100%"/>
  </div>
  <div class="h2">刺客信条：长安望</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/12.png" height="100%" width="100%"/>
  </div>
  <div class="h2">表演课：迈斯纳方法</div>
</a></div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/13.png" height="100%" width="100%"/>
  </div>
  <div class="h2">前男友的遗书</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/14.png" height="100%" width="100%"/>
  </div>
  <div class="h2">看得见的黑暗</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/15.png" height="100%" width="100%"/>
  </div>
  <div class="h2">全世界有你就好</div>
</a></div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="m"><h1>重磅好书</h1></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/16.png" height="100%" width="100%"/>
  </div>
  <div class="h2">吞噬星空</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/17.png" height="100%" width="100%"/>
  </div>
  <div class="h2">枪炮、病菌与钢铁</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/18.png" height="100%" width="100%"/>
  </div>
  <div class="h2">长安的荔枝</div>
</a></div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/19.png" height="100%" width="100%"/>
  </div>
  <div class="h2">深入理解Java虚拟机</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/20.png" height="100%" width="100%"/>
  </div>
  <div class="h2">一本书讲透数据治理</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/21.png" height="100%" width="100%"/>
  </div>
  <div class="h2">笔杆子是怎样炼成的</div>
</a></div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="m"><h1>一周好书榜</h1></div>
<div class="n">文学小说</div>
<div class="n">经济管理</div>
<div class="o">
  <p><a href="">言情小说</a></p>
  <p><a href="">散文随笔</a></p>
  <p><a href="">名家文集</a></p>
</div>
<div class="p">
  <p><a href="">诗词戏剧</a></p>
  <p><a href="">悬疑小说</a></p>
  <p><a href="">科幻小说</a></p>
</div>
<div class="p">
  <p><a href="">经济学</a></p>
  <p><a href="">金融投资</a></p>
  <p><a href="">领导学</a></p>
</div>
<div class="p">
  <p><a href="">管理学</a></p>
  <p><a href="">市场营销</a></p>
  <p><a href="">企业管理</a></p>
</div>
<div class="h"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/22.png" height="100%" width="100%"/>
  </div>
  <div class="h2">世界上最丑的女人</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/23.png" height="100%" width="100%"/>
  </div>
  <div class="h2">明日记忆定格</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/24.png" height="100%" width="100%"/>
  </div>
  <div class="h2">巨人的方法</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/25.png" height="100%" width="100%"/>
  </div>
  <div class="h2">无法落地战略一文不值</div>
</a></div>
<div class="j" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="q"><h1>好书推荐</h1></div>


<div class="h"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/26.png" height="100%" width="100%"/>
  </div>
  <div class="h2">古董局中局</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/27.png" height="100%" width="100%"/>
  </div>
  <div class="h2">Blue</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/28.png" height="100%" width="100%"/>
  </div>
  <div class="h2">星空5500年</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/29.png" height="100%" width="100%"/>
  </div>
  <div class="h2">人间值一笑</div>
</a></div>
<div class="j" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="m1"><h1>作者专区</h1></div>
<div class="n">余华</div>
<div class="n">金庸</div>
<div class="h"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/30.png" height="100%" width="100%"/>
  </div>
  <div class="h2">活着</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/31.png" height="100%" width="100%"/>
  </div>
  <div class="h2">第七天</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/32.png" height="100%" width="100%"/>
  </div>
  <div class="h2">金庸作品集</div>
</a></div>
<div class="i"><a href="./detailedpage.html">
  <div class="h1">
    <img src="./img/33.png" height="100%" width="100%"/>
  </div>
  <div class="h2">射雕英雄传</div>
</a></div>
<div class="j" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
<div class="k" onclick="window.location.href= './detailedpage.html';return false">立即购买</div>
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


</body>

</html>

