<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单表管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/cms/cmsInsuranceorder/">单表列表</a></li>
		<shiro:hasPermission name="cms:cmsInsuranceorder:edit"><li><a href="${ctx}/cms/cmsInsuranceorder/form">单表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="cmsInsuranceorder" action="${ctx}/cms/cmsInsuranceorder/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>联系人姓名：</label>
				<form:input path="submitname" htmlEscape="false" maxlength="30" class="input-medium"/>
			</li>
			<li><label>联系人电话：</label>
				<form:input path="submitphone" htmlEscape="false" maxlength="30" class="input-medium"/>
			</li>
			<li><label>单位名称：</label>
				<form:input path="company" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>财产一切险标准保额</th>
				<th>财产一切险地震保额</th>
				<th>公众责任险保额</th>
				<th>公众责任险电梯责任保额</th>
				<th>公众责任险娱乐场所保额</th>
				<th>公众责任险游泳场</th>
				<th>公众责任险停车场</th>
				<th>食品安全责任险</th>
				<th>雇主责任险保额</th>
				<th>团体意外险保额</th>
				<th>机器损坏保额</th>
				<th>营业中断保额</th>
				<th>机器中断保额</th>
				<th>创建日期</th>
				<th>创建人</th>
				<th>修改日期</th>
				<th>修改说明</th>
				<th>删除标志</th>
				<th>金额</th>
				<th>联系人姓名</th>
				<th>联系人电话</th>
				<th>单位名称</th>
				<shiro:hasPermission name="cms:cmsInsuranceorder:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="cmsInsuranceorder">
			<tr>
				<td><a href="${ctx}/cms/cmsInsuranceorder/form?id=${cmsInsuranceorder.id}">
					${cmsInsuranceorder.standardproperty}
				</a></td>
				<td>
					${cmsInsuranceorder.standardpropertyex}
				</td>
				<td>
					${cmsInsuranceorder.publicproperty}
				</td>
				<td>
					${cmsInsuranceorder.publicelevator}
				</td>
				<td>
					${cmsInsuranceorder.publicsocial}
				</td>
				<td>
					${cmsInsuranceorder.publicswimming}
				</td>
				<td>
					${cmsInsuranceorder.publicparking}
				</td>
				<td>
					${cmsInsuranceorder.publicfood}
				</td>
				<td>
					${cmsInsuranceorder.publicemployer}
				</td>
				<td>
					${cmsInsuranceorder.groupaccident}
				</td>
				<td>
					${cmsInsuranceorder.machinedamage}
				</td>
				<td>
					${cmsInsuranceorder.businessinterruption}
				</td>
				<td>
					${cmsInsuranceorder.machineinterruption}
				</td>
				<td>
					<fmt:formatDate value="${cmsInsuranceorder.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${cmsInsuranceorder.reUserId}
				</td>
				<td>
					<fmt:formatDate value="${cmsInsuranceorder.reDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${cmsInsuranceorder.reContent}
				</td>
				<td>
					${fns:getDictLabel(cmsInsuranceorder.delFlag, 'del_flag', '')}
				</td>
				<td>
					${cmsInsuranceorder.amount}
				</td>
				<td>
					${cmsInsuranceorder.submitname}
				</td>
				<td>
					${cmsInsuranceorder.submitphone}
				</td>
				<td>
					${cmsInsuranceorder.company}
				</td>
				<shiro:hasPermission name="cms:cmsInsuranceorder:edit"><td>
    				<a href="${ctx}/cms/cmsInsuranceorder/form?id=${cmsInsuranceorder.id}">修改</a>
					<a href="${ctx}/cms/cmsInsuranceorder/delete?id=${cmsInsuranceorder.id}" onclick="return confirmx('确认要删除该单表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>