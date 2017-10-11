<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>保险公司管理</title>
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
		<li class="active"><a href="${ctx}/inscom/tInscom/">保险公司列表</a></li>
		<shiro:hasPermission name="inscom:tInscom:edit"><li><a href="${ctx}/inscom/tInscom/form">保险公司添加</a></li></shiro:hasPermission>
	</ul>
 	<form:form id="searchForm" modelAttribute="tInscom" action="${ctx}/inscom/tInscom/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>保险公司编码：</label>
				<form:input path="suppliercode" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>保险公司显示编码：</label>
				<form:input path="suppliershowcode" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>保险公司中文名称：</label>
				<form:input path="suppliername" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>保险公司编码</th>
				<th>保险公司显示编码</th>
				<th>保险公司中文名称</th>
				<th>保险公司英文名称</th>
				<th>update_date</th>
				<th>remarks</th>
				<shiro:hasPermission name="inscom:tInscom:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="tInscom">
			<tr>
				<td><a href="${ctx}/inscom/tInscom/form?id=${tInscom.id}">
					${tInscom.suppliercode}
				</a></td>
				<td>
					${tInscom.suppliershowcode}
				</td>
				<td>
					${tInscom.suppliername}
				</td>
				<td>
					${tInscom.supplierengname}
				</td>
				<td>
					<fmt:formatDate value="${tInscom.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${tInscom.remarks}
				</td>
				<shiro:hasPermission name="inscom:tInscom:edit"><td>
    				<a href="${ctx}/inscom/tInscom/form?id=${tInscom.id}">修改</a>
					<a href="${ctx}/inscom/tInscom/delete?id=${tInscom.id}" onclick="return confirmx('确认要删除该保险公司吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>