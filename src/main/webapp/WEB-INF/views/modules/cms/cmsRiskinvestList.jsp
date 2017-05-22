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
		<li class="active"><a href="${ctx}/cms/cmsRiskinvest/">单表列表</a></li>
		<shiro:hasPermission name="cms:cmsRiskinvest:edit"><li><a href="${ctx}/cms/cmsRiskinvest/form">单表添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="cmsRiskinvest" action="${ctx}/cms/cmsRiskinvest" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<li><label>提交人姓名：</label>
				<form:input path="submitname" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>提交人职务：</label>
				<form:input path="commandname" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>提交人公司：</label>
				<form:input path="company" htmlEscape="false" maxlength="100" class="input-medium"/>
		</li>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>submitname</th>
				<th>commandname</th>
				<th>company</th>
				<th>emergencyrisk</th>
				<th>responserisk</th>
				<th>guardorgrisk</th>
				<th>recordrisk</th>
				<th>guardrisk</th>
				<th>registerrisk</th>
				<th>personresprisk</th>
				<th>buildcheckrisk</th>
				<th>buildwarnrisk</th>
				<th>reportrisk</th>
				<th>create_date</th>
				<th>re_user_id</th>
				<th>re_date</th>
				<th>re_content</th>
				<th>del_flag</th>
				<shiro:hasPermission name="cms:cmsRiskinvest:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="cmsRiskinvest">
			<tr>
				<td><a href="${ctx}/cms/cmsRiskinvest/form?id=${cmsRiskinvest.id}">
					${cmsRiskinvest.id}
				</a></td>
				<td>
					${cmsRiskinvest.submitname}
				</td>
				<td>
					${cmsRiskinvest.commandname}
				</td>
				<td>
					${cmsRiskinvest.company}
				</td>
				<td>
					${cmsRiskinvest.emergencyrisk}
				</td>
				<td>
					${cmsRiskinvest.responserisk}
				</td>
				<td>
					${cmsRiskinvest.guardorgrisk}
				</td>
				<td>
					${cmsRiskinvest.recordrisk}
				</td>
				<td>
					${cmsRiskinvest.guardrisk}
				</td>
				<td>
					${cmsRiskinvest.registerrisk}
				</td>
				<td>
					${cmsRiskinvest.personresprisk}
				</td>
				<td>
					${cmsRiskinvest.buildcheckrisk}
				</td>
				<td>
					${cmsRiskinvest.buildwarnrisk}
				</td>
				<td>
					${cmsRiskinvest.reportrisk}
				</td>
				<td>
					<fmt:formatDate value="${cmsRiskinvest.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${cmsRiskinvest.reUserId}
				</td>
				<td>
					<fmt:formatDate value="${cmsRiskinvest.reDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${cmsRiskinvest.reContent}
				</td>
				<td>
					${fns:getDictLabel(cmsRiskinvest.delFlag, 'del_flag', '')}
				</td>
				<shiro:hasPermission name="cms:cmsRiskinvest:edit"><td>
    				<a href="${ctx}/cms/cmsRiskinvest/form?id=${cmsRiskinvest.id}">修改</a>
					<a href="${ctx}/cms/cmsRiskinvest/delete?id=${cmsRiskinvest.id}" onclick="return confirmx('确认要删除该单表吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>