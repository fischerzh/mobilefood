
<%@ page import="org.example.demo.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">

			
			<div class="span9">

				<div class="page-header">
					<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>				
					</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${productInstance?.content}">
						<dt><g:message code="product.content.label" default="Content" /></dt>
						
							<dd><g:fieldValue bean="${productInstance}" field="content"/></dd>
						
					</g:if>
				
					<g:if test="${productInstance?.description}">
						<dt><g:message code="product.description.label" default="Description" /></dt>
						
							<dd><g:fieldValue bean="${productInstance}" field="description"/></dd>
						
					</g:if>
				
					<g:if test="${productInstance?.name}">
						<dt><g:message code="product.name.label" default="Name" /></dt>
						
							<dd><g:fieldValue bean="${productInstance}" field="name"/></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${productInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
