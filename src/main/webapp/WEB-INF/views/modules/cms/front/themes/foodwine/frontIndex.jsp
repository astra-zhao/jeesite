<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" type="text/css" href="${ctxStaticTheme}/css/public.css">
	<link rel="stylesheet" type="text/css" href="${ctxStaticTheme}/css/index.css">
	<link rel="stylesheet" type="text/css" href="${ctxStaticTheme}/css/swiper.css">
</head>
<body class="body-bg">
	<header>
		<div class="head">首页</div>	
	</header>
	<section class="content-top">
	<div class="swiper-container swiper-banner">
		<div class="swiper-wrapper">
			<!-- 第一张 -->
				<div class="swiper-slide">
					<img src="${ctxStaticTheme}/images/01.png">
				</div>
		<!-- 第二张 -->
			<div class="swiper-slide">
				<img src="${ctxStaticTheme}/images/02.png">
			</div>
		<!-- 第三张 -->
			<div class="swiper-slide">
				<img src="${ctxStaticTheme}/images/03.png">
			</div>
		</div>
		<div class="swiper-pagination"></div>
	</div>
	<div class="menu">
		<ul>
			<li>
				<span>
					<a href="safety.html">
						<i><img src="${ctxStaticTheme}/images/aqgl.png"></i>
						<p>安全管理</p>
					</a>
				</span>
				<span>
					<a href="insured.html">
						<i><img src="${ctxStaticTheme}/images/tblp.png"></i>
						<p>投保理赔</p>
					</a>
				</span>
				<span>
					<a href="login.html">
						<i><img src="${ctxStaticTheme}/images/wdzh.png"></i>
						<p>我的账户</p>
					</a>
				</span>
			</li>
		</ul>
	</div>
	</section>
<script type="text/javascript" src="${ctxStaticTheme}/js/swiper.js"></script>
<script>
var swiper =  Swiper('.swiper-banner', {
	spaceBetween: 0,
	loop:true,
	pagination: '.swiper-pagination',
	autoplay: 2500,     //开启自动播放
	autoplayDisableOnInteraction:false,// false禁用自动播放的交互,如 “点击” 交互后，滑动将继续自动播放
});
</script>
</body>
</html>