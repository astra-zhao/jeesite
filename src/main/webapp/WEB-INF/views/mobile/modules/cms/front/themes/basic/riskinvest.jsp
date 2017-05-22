<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<head>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
p {
	font-size: 16px;
	line-height: 1.4;
}

.indent {
	text-indent: 2em;
}
</style>
<title>中国饭店协会风险管理项目2017年度企业风险评估调查问卷</title>
</head>
<body class="container">
	<div class="panel panel-default" style="margin: 30px 0;">
		<div class="panel-body">
			<div style="text-align: center;">
				<img src="${ctxStaticTheme}/images/bktg.png" />
				<h4 class="page-header">中国饭店协会风险管理项目2017年度企业风险评估调查问卷</h4>
			</div>
			<form:form id="inputForm" modelAttribute="questiondes" onsubmit="return check();"
				action="${ctx}/riskinvest/save" method="post"
				class="form-horizontal">
				<p class="indent">非常感谢您抽出宝贵时间参加风险评估问卷调查。本问卷共含10项一级风险，请您结合企业实际情况对各二级风险发生可能性和影响程度作出判断并认真填写，为全面、客观辨识公司2017年生产经营管理中可能面临的风险状况提供依据。</p>
				<hr
					style="height: 3px; border: none; border-top: 3px solid skyblue;" />
				<p id="tag57" class="text-capitalize">
					<label for="a570">姓名        </label> <span
						style="color: red; font-size: 14px; display: none;" id="msg57">请输入姓名</span>
					<form:input path="submitname" htmlEscape="false" maxlength="50"
						class="required input-xlarge" />
				</p>
				<p id="tag58" class="text-capitalize">
					<label for="a580">您的职务</label> <span
						style="color: red; font-size: 14px; display: none;" id="msg58">请选择您的职务</span>
					<form:select path="commandname" class="input-xxlarge">  
          				<option value="">--请选择您的职务--</option>  
          				<option value="主管领导">主管领导</option>  
          				<option value="分管领导">分管领导</option>  
        			</form:select>
				</p>
				<p id="tag59" class="text-capitalize">
					<label>所在单位</label> <span
						style="color: red; font-size: 14px; display: none;" id="msg59">请输入您所在单位，并选择行业信息</span>
					<form:input path="company" htmlEscape="false" maxlength="50"
						class="required input-xlarge" />
				</p>
				<p class="text-capitalize">
					<label class="radio-inline" style="width: 100px;"> <input
						type="radio" name="orgFullpath" value="股份公司"> 酒店行业
					</label> <label class="radio-inline"> <input type="radio"
						name="orgFullpath" value="xx"> 非酒店行业
					</label>
				</p>
				<p class="text-capitalize">一、战略风险评估（共计10个一级风险项）</p>
				<p id="tag1" class="text-capitalize">1.酒店是否建立健全校内各项安全管理制度和安全应急机制，及时消除隐患，预防发生事故。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg1">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="emergencyrisk_a1"
							path="emergencyrisk" htmlEscape="false" maxlength="50"
							class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a10" onclick="show('a1',0,'emergencyRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a11" onclick="show('a1',1,'emergencyRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a12" onclick="show('a1',2,'emergencyRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a13" onclick="show('a1',3,'emergencyRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a14" onclick="show('a1',4,'emergencyRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">2.酒店是否建立校内安全工作领导机构，实行校长负责制。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="responserisk_a1" path="responserisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'responseRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'responseRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'responseRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'responseRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'responseRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">3.酒店是否设立保卫机构，配备专职或者兼职安全保卫人员，明确其安全保卫职责。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="guardorgrisk_a1" path="guardorgrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">4.安全管理机构设置、专兼职安全保卫人员配备、专职门卫和保安员的聘用、管理情况是否报县（区）级教育行政部门和公安机关备案。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="recordrisk_a1" path="recordrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">5.酒店是否有健全的门卫制度。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="guardrisk_a1" path="guardrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">6.是否建立校外人员入校的登记或者验证制度，禁止无关人员和校外机动车入内，禁止将非教学用易燃易爆物品、有毒物品、动物和管制器具等危险物品带入校园。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="registerrisk_a1" path="registerrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">7.酒店门卫是否由专职保安或者其他能够切实履行职责的人员担任。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="personresprisk_a1" path="personresprisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">8.报告制度，按照国家有关规定安排对酒店建筑物、构筑物、设备、设施进行安全检查、检验。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="buildcheckrisk_a1" path="buildcheckrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">9.酒店发现存在安全隐患的建筑物、构筑物、设备、设施，是否停止使用，及时维修或者更换。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="buildwarnrisk_a1" path="buildwarnrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<p id="tag2" class="text-capitalize">10.存在安全隐患的建筑物、构筑物、设备、设施维修、更换前是否采取必要的防护措施或者设置警示标志。</p>
				<p style="color: red; font-size: 14px; display: none;" id="msg2">请为所有选项打分</p>
				<span class="help-block">影响重大性（低->高）</span>
				<div class="panel panel-default">
					<div class="panel-body" style="height: 40px; position: relative;">
						<form:input type="hidden" id="reportrisk_a1" path="reportrisk"
							htmlEscape="false" maxlength="50" class="required input-xlarge" />
						<span class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 10px;"
							id="a20" onclick="show('a2',0,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 60px;"
							id="a21" onclick="show('a2',1,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 110px;"
							id="a22" onclick="show('a2',2,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 160px;"
							id="a23" onclick="show('a2',3,'guardOrgRisk')"></span> <span
							class="glyphicon glyphicon-star-empty"
							style="font-size: 30px; position: absolute; top: 5px; left: 210px;"
							id="a24" onclick="show('a2',4,'guardOrgRisk')"></span>
					</div>
				</div>
				<div style="text-align: center;">
					<button type="submit" class="btn btn-success btn-lg">提交</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	//重新设置样式  
	function resetColor(name) {
		for (var j = 0; j <= 5; j++) {
			$("#" + name + j).css("color", "black");
		}
	}
	// 重新设置提示信息  
	function resetInfo() {
		for (var i = 1; i <= 60; i++) {
			$("#msg" + i).css("display", "none");
		}
	}
	// 将点击之前的样式都设置为蓝色  
	function show(name, index, dbName) {
		resetColor(name);
		for (var j = 0; j <= index; j++) {
			$("#" + name + j).css("color", "#ea0000");
		}
		$("#" + dbName + "_" + name).val(index + 1);
	}
	// 验证  
	function check() {
		resetInfo();
		// 验证职务  
		var position = $("#commandname").val();
		if (!position) {
			window.location.href = "#tag58";
			$("#msg58").css("display", "block");
			return false;
		}
		// 验证单位  
		var position = $('input[name="orgFullpath"]:checked');
		if (!position.length) {
			window.location.href = "#tag59";
			$("#msg59").css("display", "block");
			return false;
		}

	}
	// 颜色转换：RGB转成字符串  
	function rgb2hex(rgb) {
		rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
		function hex(x) {
			return ("0" + parseInt(x).toString(16)).slice(-2);
		}
		return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
	}
</script>