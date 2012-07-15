
<%@ page import="grails.Users" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'users.label', default: 'Users')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
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
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="mail" title="${message(code: 'users.mail.label', default: 'Mail')}" />
						
							<g:sortableColumn property="name" title="${message(code: 'users.name.label', default: 'Name')}" />
						
							<g:sortableColumn property="password" title="${message(code: 'users.password.label', default: 'Password')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${usersInstanceList}" var="usersInstance">
						<tr>
						
							<td>${fieldValue(bean: usersInstance, field: "mail")}</td>
						
							<td>${fieldValue(bean: usersInstance, field: "name")}</td>
						
							<td>${fieldValue(bean: usersInstance, field: "password")}</td>
						
							<td class="link">
								<g:link action="show" id="${usersInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${usersInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
