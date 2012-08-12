<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Twitter Bootstrap Test Page</title>
<r:require modules="bootstrap"/>
</head>
<body>

  
  <h1>Twitter Bootstrap Test Page</h1>
  
  <h2>h2 Lorem ipsum</h2>
  <h3>h3 Lorem ipsum</h3>
  <h4>h4 Lorem ipsum</h4>

<g:paginate max="${10}" offset="${0}" total="${1000}"/>
<g:paginate max="${10}" offset="${100}" total="${1000}"/>
<g:paginate max="${10}" offset="${1000}" total="${1000}"/>

<table class="zebra-striped">
<thead>
<tr>
<g:sortableColumn property="title1" title="Title" />
<g:sortableColumn property="title2" title="Title" />
<g:sortableColumn property="title3" title="Title" />
</tr>
</thead>

<tbody>
<tr>
<td>1</td>
<td>lorem ipsum</td>
<td>lorem ipsum</td>
</tr>

<tr>
<td>2</td>
<td>lorem ipsum</td>
<td>lorem ipsum</td>
</tr>

<tr>
<td>3</td>
<td>lorem ipsum</td>
<td>lorem ipsum</td>
</tr>
</tbody>

</table>

<g:form>
<g:textField name="text1"/>

<g:submitButton class="btn large primary" name="Success"/>
<g:submitButton class="btn large" name="Cancel"/>

</g:form>

</body>
</html>