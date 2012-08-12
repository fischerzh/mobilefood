
<%@ page import="org.example.demo.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
				
					<g:if test="${userInstance?.username}">
						<dt><g:message code="user.username.label" default="Username" /></dt>
						
							<dd><g:fieldValue bean="${userInstance}" field="username"/></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.password}">
						<dt><g:message code="user.password.label" default="Password" /></dt>
						
							<dd><g:fieldValue bean="${userInstance}" field="password"/></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.accountExpired}">
						<dt><g:message code="user.accountExpired.label" default="Account Expired" /></dt>
						
							<dd><g:formatBoolean boolean="${userInstance?.accountExpired}" /></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.accountLocked}">
						<dt><g:message code="user.accountLocked.label" default="Account Locked" /></dt>
						
							<dd><g:formatBoolean boolean="${userInstance?.accountLocked}" /></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.enabled}">
						<dt><g:message code="user.enabled.label" default="Enabled" /></dt>
						
							<dd><g:formatBoolean boolean="${userInstance?.enabled}" /></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.firstName}">
						<dt><g:message code="user.firstName.label" default="First Name" /></dt>
						
							<dd><g:fieldValue bean="${userInstance}" field="firstName"/></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.lastName}">
						<dt><g:message code="user.lastName.label" default="Last Name" /></dt>
						
							<dd><g:fieldValue bean="${userInstance}" field="lastName"/></dd>
						
					</g:if>
				
					<g:if test="${userInstance?.passwordExpired}">
						<dt><g:message code="user.passwordExpired.label" default="Password Expired" /></dt>
						
							<dd><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${userInstance?.id}">
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
