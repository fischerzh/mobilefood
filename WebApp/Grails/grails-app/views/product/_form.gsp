<%@ page import="org.example.demo.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="product.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${productInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'verwalters', 'error')} ">
	<label for="verwalters">
		<g:message code="product.verwalters.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${productInstance?.verwalters}"/>
</div>

