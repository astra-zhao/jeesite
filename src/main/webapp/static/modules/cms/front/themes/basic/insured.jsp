<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>投保理赔</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<link rel="stylesheet" type="text/css" href="css/public.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/swiper.css">
</head>
<body class="body-bg">
	<header>
		<div class="head">
			<a class="iconfont icon-shangchengicon01 top-bar-back" href="javascript:history.back(1)"></a>
			投保理赔
		</div>	
	</header>
	<section class="content-top">
		<div class="safety-content">
			<div class="swiper-container swiper-banner">
				<div class="swiper-wrapper">
				<!-- 第一张 -->
					<div class="swiper-slide">
						<img src="images/insured-one.jpg">
					</div>
				<!-- 第二张 -->
				<div class="swiper-slide">
					<img src="images/insured-two.jpg">
				</div>
				<!-- 第三张 -->
				<div class="swiper-slide">
					<img src="images/insured-three.jpg">
				</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<ul>
				<li>
					<a href="${ctx}/insurance/order">
						<div class="ico-box">
							<em class="five iconfont icon-tuijian"></em>
						</div>
						<div class="menu-inf">
							<h2>协会推荐</h2>
						</div>
						<i class="iconfont icon-jiantou"></i>
					</a>
				</li>
				<li>
					<a href="#" onClick="alert('敬请期待······');">
						<div class="ico-box">
							<em class="sev iconfont icon-baokuan"></em>
						</div>
						<div class="menu-inf">
							<h2>爆款推广</h2>
						</div>
						<i class="iconfont icon-jiantou"></i>
					</a>
				</li>
				<li>
					<a href="claims.html">
						<div class="ico-box">
							<em class="six iconfont icon-lipei"></em>
						</div>
						<div class="menu-inf">
							<h2>一键理赔</h2>
						</div>
						<i class="iconfont icon-jiantou"></i>
					</a>
				</li>
			</ul>
		</div>
	</section>
	<script type="text/javascript" src="js/swiper.js"></script>
	<script type="text/javascript">
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