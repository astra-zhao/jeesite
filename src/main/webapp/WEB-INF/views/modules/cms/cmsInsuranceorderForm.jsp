<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/cms/cmsInsuranceorder/">单表列表</a></li>
		<li class="active"><a href="${ctx}/cms/cmsInsuranceorder/form?id=${cmsInsuranceorder.id}">单表<shiro:hasPermission name="cms:cmsInsuranceorder:edit">${not empty cmsInsuranceorder.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="cms:cmsInsuranceorder:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="cmsInsuranceorder" action="${ctx}/cms/cmsInsuranceorder/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">财产一切险标准保额：</label>
			<div class="controls">
				<form:input path="standardproperty" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">财产一切险地震保额：</label>
			<div class="controls">
				<form:input path="standardpropertyex" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">公众责任险保额：</label>
			<div class="controls">
				<form:input path="publicproperty" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">公众责任险电梯责任保额：</label>
			<div class="controls">
				<form:input path="publicelevator" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">公众责任险娱乐场所保额：</label>
			<div class="controls">
				<form:input path="publicsocial" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">公众责任险游泳场：</label>
			<div class="controls">
				<form:input path="publicswimming" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">公众责任险停车场：</label>
			<div class="controls">
				<form:input path="publicparking" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">食品安全责任险：</label>
			<div class="controls">
				<form:input path="publicfood" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">雇主责任险保额：</label>
			<div class="controls">
				<form:input path="publicemployer" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">团体意外险保额：</label>
			<div class="controls">
				<form:input path="groupaccident" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">机器损坏保额：</label>
			<div class="controls">
				<form:input path="machinedamage" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">营业中断保额：</label>
			<div class="controls">
				<form:input path="businessinterruption" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">机器中断保额：</label>
			<div class="controls">
				<form:input path="machineinterruption" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">创建人：</label>
			<div class="controls">
				<form:input path="reUserId" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">修改日期：</label>
			<div class="controls">
				<input name="reDate" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${cmsInsuranceorder.reDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">修改说明：</label>
			<div class="controls">
				<form:input path="reContent" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">金额：</label>
			<div class="controls">
				<form:input path="amount" htmlEscape="false" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">联系人姓名：</label>
			<div class="controls">
				<form:input path="submitname" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">联系人电话：</label>
			<div class="controls">
				<form:input path="submitphone" htmlEscape="false" maxlength="30" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">单位名称：</label>
			<div class="controls">
				<form:input path="company" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="cms:cmsInsuranceorder:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>