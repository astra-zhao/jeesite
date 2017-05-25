<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>表单</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${ctxStaticTheme}/css/public.css">
<link rel="stylesheet" type="text/css"
	href="${ctxStaticTheme}/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${ctxStaticTheme}/css/form.css">
<link rel="stylesheet" type="text/css"
	href="${ctxStaticTheme}/css/index.css">
<script type="text/javascript"
	src="${ctxStaticTheme}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${ctxStaticTheme}/js/insuranceOrder.js?1176227"></script>
</head>
<body class="body-bg">
	<header>
		<div class="head">
			<a class="iconfont icon-shangchengicon01 top-bar-back"
				href="javascript:history.back(1)"></a> 表单
		</div>
	</header>
	<form:form id="inputForm" modelAttribute="insuranceorder"
		onsubmit="return check();" action="${ctx}/insurance/save"
		method="post" class="form-horizontal">
		<section class="content-top">
			<!-- 财产一切险 -->
			<div class="insurance-box">
				<div class="title">
					财产一切险 <label> <input type="checkbox" id="cpyqx"
						class="iconfont checkbox buyCheckBox">购买 <!--checked="checked"-->
					</label>
				</div>
				<div class="content">
					<div class="list">
						<!-- 内容 -->
						<div class="right">
							<div class="name">标准保障</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="standardproperty" type="number" id="cpyqxbz" name="" value="0.0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="cpyqxbf">0</span>元
							</div>
							<input type="hidden" id="cpyqxbe">
						</div>
					</div>
					<!-- 内容展示 -->
					<div class="content-tip"></div>
					<div class="list">
						<!-- 复选 -->
						<div class="left">
							<input type="checkbox" name="" id="cpyqxkz" class="iconfont">
						</div>
						<!-- 内容 -->
						<div class="right">
							<div class="name">扩展地震</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="standardpropertyex" type="number" id="cpyqxkzdz" name="" value="0.0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="cpyqxkzdzbf">0</span>元
							</div>
							<input type="hidden" id="cpyqxkzdzbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="cpyqxhjbf">0</span>元
				</div>
				<input type="hidden" id="cpyqxhjbe">
			</div>
			<!-- 公众责任险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					公众责任险 <label> <input type="checkbox" id="gzzrx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<!-- <div class="list">
					内容
					<div class="right">
						<div class="name">公众责任险</div>
						<div class="fill">
							<span>保额</span>
							<div class="input-box">
								<input type="number" id="gzzrxbe" name="">
								<em>万元</em>
							</div>
						</div>
						<div class="quota">￥<span id="gzzrxbf">0</span>元</div>
					</div> -->
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="fill public">
								<span> <form:select path="publicproperty" name="" id="gzzrxbe" value="0">
										<option value="50">50</option>
										<option value="100">100</option>
										<option value="150">150</option>
										<option value="250">250</option>
										<option value="300">300</option>
										<option value="500">500</option>
										<option value="1000">1000</option>
										<option value="2000">2000</option>
								</form:select> <em style="width: 80%">万元累计限额/每次限额</em> <i></i>
								</span>
							</div>
							<div class="quota right">
								￥<span id="gzzrxbf">0</span>元
							</div>
							<input type="hidden" id="gzzrxbe">
						</div>
					</div>


					<!-- 电梯责任 -->
					<div class="list">
						<!-- 复选 -->
						<div class="left">
							<input type="checkbox" id="gzzrxdt" name="" class="iconfont">
						</div>
						<!-- 内容 -->
						<div class="right">
							<div class="name">电梯责任</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="publicelevator" type="number" id="gzzrxdtbe" name="" value="20"
										readonly="readonly"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="gzzrxdtbf">0</span>元
							</div>
							<input type="hidden" id="gzzrxdtbe">
						</div>
					</div>
					<!-- 社交娱乐场所 -->
					<div class="list">
						<!-- 复选 -->
						<div class="left">
							<input type="checkbox" id="gzzrxsj" name="" class="iconfont">
						</div>
						<!-- 内容 -->
						<div class="right">
							<div class="name">社交及娱乐场所</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="publicsocial" type="number" id="gzzrxsjbe" name="" value="10"
										readonly="readonly"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="gzzrxsjbf">0</span>元
							</div>
							<input type="hidden" id="gzzrxsjbe">
						</div>
					</div>
					<!-- 游泳池及健身房 -->
					<div class="list">
						<!-- 复选 -->
						<div class="left">
							<input type="checkbox" id="gzzrxyr" name="" class="iconfont">
						</div>
						<!-- 内容 -->
						<div class="right">
							<div class="name">游泳池及健身房</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="publicswimming" type="number" id="gzzrxyrbe" name="" value="10"
										readonly="readonly"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="gzzrxyrbf">0</span>元
							</div>
							<input type="hidden" id="gzzrxyrbe">
						</div>
					</div>
					<!-- 停车场 -->
					<div class="list">
						<!-- 复选 -->
						<div class="left">
							<input type="checkbox" id="gzzrxyrtc" name="" class="iconfont">
						</div>
						<!-- 内容 -->
						<div class="right">
							<div class="name">停车场</div>
							<div class="fill park">
								<div class="input-box">
									<form:input path="publicparking" type="number" id="gzzrxyrtccl" name="" value="4"/>
									<em>辆车/5万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="gzzrxyrtcbf">0</span>元
							</div>
							<input type="hidden" id="gzzrxyrtcbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="gzzrxhjbf">0</span>元
				</div>
				<input type="hidden" id="gzzrxhjbe">
			</div>
			<!-- 食品安全责任险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					食品安全责任险 <label> <input type="checkbox" id="spaqzrx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="fill food">
								<span>营业额</span>
								<div class="input-box">
									<form:input path="publicfood" type="number" id="spaqzrxyye" name="" value="0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="spaqzrxyyebf">0</span>元
							</div>
							<input type="hidden" id="spaqzrxyyebe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="spaqzrxhjbf">0</span>元
				</div>
				<input type="hidden" id="spaqzrxhjbe">
			</div>
			<!-- 雇主责任险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					雇主责任险 <label> <input type="checkbox" id="gzzrx11"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="fill employer">
								<span> <form:select path="publicemployer" name="" id="gzzrxlx" value="0">
										<option value="45">10</option>
										<option value="80">20</option>
										<option value="135">30</option>
								</form:select> <em>万元/人/年</em> <i></i>
								</span>
								<div class="input-box">
									<input type="number" id="gzzrxrd" name=""/> <em>人数</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="gzzrxbf11">0</span>元
							</div>
							<input type="hidden" id="gzzrxbe11">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="gzzrxhjbf11">0</span>元
				</div>
				<input type="hidden" id="gzzrxhjbe11">
			</div>
			<!-- 团体意外险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					团体意外险 <label> <input type="checkbox" id="ttywx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="fill employer">
								<span> <form:select path="groupaccident" name="" id="ttywxselect">
										<option value="60">10</option>
										<option value="120">20</option>
										<option value="180">30</option>
								</form:select> <em>万元/人/年</em> <i></i>
								</span>
								<div class="input-box">
									<input type="number" id="ttywxrd" name=""> <em>人数</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="ttywxbf">0</span>元
							</div>
							<input type="hidden" id="ttywxbe" name="ttywxbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="ttywxhjbf">0</span>元
				</div>
				<input type="hidden" id="ttywxhjbe" name="ttywxhjbe">
			</div>
			<!-- 机器损坏险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					机器损坏险 <label> <input type="checkbox" id="jqshx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="name">机器损坏险</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="machinedamage" type="number" id="jqshxbe" name="" value="0.0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="jqshxbf">0</span>元
							</div>
							<input type="hidden" id="jqshxbe" name="jqshxbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="jqshxhjbf">0</span>元
				</div>
				<input type="hidden" id="jqshxhjbe">
			</div>
			<!-- 财产险营业中断险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					财产险营业中断险 <label> <input type="checkbox" id="ccxyyzdx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="name">财产险营业中断险</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="businessinterruption" type="number" id="ccxyyzdxbe" name="" value="0.0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="ccxyyzdxbf">0</span>元
							</div>
							<input type="hidden" id="ccxyyzdxbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="ccxyyzdxhjbf">0</span>元
				</div>
				<input type="hidden" id="ccxyyzdxhjbe">
			</div>
			<!-- 机损险营业中断险 -->
			<div class="insurance-box mt-30">
				<div class="title">
					机损险营业中断险 <label> <input type="checkbox" id="jsxyyzdx"
						class="iconfont checkbox buyCheckBox">购买
					</label>
				</div>
				<div class="content">
					<div class="list no-pl-left">
						<!-- 内容 -->
						<div class="right">
							<div class="name">机损险营业中断险</div>
							<div class="fill">
								<span>保额</span>
								<div class="input-box">
									<form:input path="machineinterruption" type="number" id="jsxyyzdxbe" name="" value="0.0"/> <em>万元</em>
								</div>
							</div>
							<div class="quota">
								￥<span id="jsxyyzbf">0</span>元
							</div>
							<input type="hidden" id="jsxyyzbe">
						</div>
					</div>
				</div>
				<div class="total">
					合计保费<span id="jsxyyzdxhjbf">0</span>元
				</div>
				<form:input path="amount" type="hidden" id="jsxyyzdxhjbe" value="0.0"/>
			</div>
			<div class="total-expenses mt-30">
				<input type="hidden" id="hjzbe" name="hjzbe">
				<h2>
					合计总保费<span id="hjzbf">1000</span>元 ，优惠价格<span id="hjzbfyhj">900</span>元
				</h2>
				<p>以上价格仅供参考，最终价格以出单为准。</p>
			</div>
			<div class="total-expenses mt-30">
				<p id="tag57" class="text-capitalize">
					<label for="a570">姓名 ：</label> <span
						style="color: red; font-size: 14px; display: none;" id="msg57">请输入姓名</span>
					<form:input path="submitname" type="text" htmlEscape="false" maxlength="50"
						class="required input-xlarge" />
				</p>
				<p id="tag58" class="text-capitalize">
					<label for="a580">您的联系方式：</label> <span
						style="color: red; font-size: 14px; display: none;" id="msg58">请选择您的联系方式</span>					
					<form:input path="submitphone" type="text"  htmlEscape="false" maxlength="50"
						class="required input-xlarge" />
				</p>
				<p id="tag59" class="text-capitalize">
					<label>所在单位</label> <span
						style="color: red; font-size: 14px; display: none;" id="msg59">请输入您所在单位，并选择行业信息</span>
					<form:input path="company" type="text"  htmlEscape="false" maxlength="50"
						class="required input-xlarge" />
				</p>
			<div class="total-expenses mt-30">
			<div class="button-box">
				<button type="submit">报名参加</button>
			</div>
		</section>
	</form:form>
</body>
</html>
<script type="text/javascript">
		// 重新设置提示信息  
		function resetInfo() {
			for (var i = 1; i <= 60; i++) {
				$("#msg" + i).css("display", "none");
			}
		}
	// 验证  
	function check() {
		resetInfo();
		//验证姓名
		var position = $("#submitname").val();
		if (!position) {
			window.location.href = "#tag57";
			$("#msg57").css("display", "block");
			return false;
		}
		// 验证电话  
		position = $("#submitphone").val();
		if (!position) {
			window.location.href = "#tag58";
			$("#msg58").css("display", "block");
			return false;
		}
		
	}
</script>