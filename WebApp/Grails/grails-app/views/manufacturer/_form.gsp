<%@ page import="org.example.demo.Manufacturer" %>



<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="manufacturer.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${manufacturerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="manufacturer.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${manufacturerInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['manufacturer.id': manufacturerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'verkaufsort', 'error')} required">
	<label for="verkaufsort">
		<g:message code="manufacturer.verkaufsort.label" default="Verkaufsort" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="verkaufsort" name="verkaufsort.id" from="${org.example.demo.Verkaufsort.list()}" optionKey="id" required="" value="${manufacturerInstance?.verkaufsort?.id}" class="many-to-one"/>
</div>

