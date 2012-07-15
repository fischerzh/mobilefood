<%@ page import="grails.Users" %>



<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="users.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${usersInstance?.mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="users.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${usersInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="users.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${usersInstance?.password}"/>
</div>

