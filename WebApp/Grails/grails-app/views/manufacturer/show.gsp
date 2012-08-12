
<%@ page import="org.example.demo.Manufacturer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${manufacturerInstance?.name}">
						<dt><g:message code="manufacturer.name.label" default="Name" /></dt>
						
							<dd><g:fieldValue bean="${manufacturerInstance}" field="name"/></dd>
						
					</g:if>
				
					<g:if test="${manufacturerInstance?.products}">
						<dt><g:message code="manufacturer.products.label" default="Products" /></dt>
						
							<g:each in="${manufacturerInstance.products}" var="p">
							<dd><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></dd>
							</g:each>
						
					</g:if>
				
					<g:if test="${manufacturerInstance?.verkaufsort}">
						<dt><g:message code="manufacturer.verkaufsort.label" default="Verkaufsort" /></dt>
						
							<dd><g:link controller="verkaufsort" action="show" id="${manufacturerInstance?.verkaufsort?.id}">${manufacturerInstance?.verkaufsort?.encodeAsHTML()}</g:link></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${manufacturerInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${manufacturerInstance?.id}">
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
