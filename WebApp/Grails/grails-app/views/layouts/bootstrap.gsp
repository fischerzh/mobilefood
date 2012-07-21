<%@ page
	import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><g:layoutTitle default="${meta(name: 'app.name')}" /></title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport" content="initial-scale = 1.0">

<r:require modules="scaffolding" />

<g:layoutHead />
<r:layoutResources />
</head>

<body>

	<nav class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<p>
					<a class="brand" href="${createLink(uri: '/')}">Mobile Food Web
						App</a>
				</p>
				<p align="right">
					<sec:ifLoggedIn>
						<sec:ifAllGranted roles="ROLE_ADMIN">
						<div class="nav-collapse">
							<ul class="nav">
								<li<%=  controllerName == 'home'? ' class="active"' : '' %>>
								<g:link controller='home'>Home</g:link></li>
								<li<%= controllerName == 'product'? ' class="active"' : '' %>>
								<g:link controller='product'>Products </g:link></li>
								<li<%= controllerName == 'user'? ' class="active"' : '' %>>
								<g:link controller='user'>Users </g:link></li>
								<li<%= controllerName == 'verwalter'? ' class="active"' : '' %>>
								<g:link controller='verwalter'>Verwalter </g:link></li>
							</ul>
						</div>
						</sec:ifAllGranted>
						<sec:ifAllGranted roles="ROLE_USER">
						<div class="nav-collapse">
							<ul class="nav">
								<li<%= controllerName == 'home'? ' class="active"' : '' %>><g:link controller='home'>Home</g:link></li>
								<li<%= controllerName == 'product'? ' class="active"' : '' %>><g:link controller='product'>Products </g:link></li>

							</ul>
						</div>
						</sec:ifAllGranted>
						<div align="right">
							<font color="grey"> Welcome <sec:username /> - <g:link
									controller='logout'>Log Out </g:link>
							</font>
						</div>
					</sec:ifLoggedIn>

				</p>

			</div>

		</div>
	</nav>

	<div class="container-fluid">
		<g:layoutBody />

		<hr>

		<footer>
			<p>&copy; UZH 2012</p>
		</footer>
	</div>

	<r:layoutResources />

</body>
</html>