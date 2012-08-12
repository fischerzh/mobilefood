
<%@ page import="org.example.demo.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
						
							<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
												
							<g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
						
							<g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
						
							<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />
						
							<g:sortableColumn property="firstName" title="${message(code: 'user.firstName.label', default: 'First Name')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${userInstanceList}" var="userInstance">
						<tr>
						
							<td>${fieldValue(bean: userInstance, field: "username")}</td>
												
							<td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
						
							<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
						
							<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
						
							<td>${fieldValue(bean: userInstance, field: "firstName")}</td>
						
							<td class="link">
								<g:link action="show" id="${userInstance.id}" class="btn btn-small">Show &raquo;</g:link>
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
					<bootstrap:paginate total="${userInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
