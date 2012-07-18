
<%@ page import="org.example.demo.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">

			<div class="span9">
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="content" title="${message(code: 'product.content.label', default: 'Content')}" />
						
							<g:sortableColumn property="description" title="${message(code: 'product.description.label', default: 'Description')}" />
						
							<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${productInstanceList}" var="productInstance">
						<tr>
						
							<td>${fieldValue(bean: productInstance, field: "content")}</td>
						
							<td>${fieldValue(bean: productInstance, field: "description")}</td>
						
							<td>${fieldValue(bean: productInstance, field: "name")}</td>
						
							<td class="link">
								<g:link action="show" id="${productInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				
				<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
				<div class="pagination">
					<bootstrap:paginate total="${productInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
