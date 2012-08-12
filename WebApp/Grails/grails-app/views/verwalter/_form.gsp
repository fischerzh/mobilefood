<%@ page import="org.example.demo.Verwalter" %>



<div class="fieldcontain ${hasErrors(bean: verwalterInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="verwalter.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${verwalterInstance?.name}"/>
</div>

