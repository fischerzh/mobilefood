<%@ page import="org.example.demo.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">

			
			<div class="span9">

				<div class="page-header">
					<g:link class="list" action="index">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<g:hasErrors bean="${productInstance}">
				<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${productInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="create" >
						<fieldset>
							<f:all bean="productInstance"/>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">
									<i class="icon-ok icon-white"></i>
									<g:message code="default.button.create.label" default="Create" />
								</button>
									
							</div>
						</fieldset>
					</g:form>
				</fieldset>
				
			</div>

		</div>
	</body>
</html>
