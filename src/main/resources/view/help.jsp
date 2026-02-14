<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head profile="http://a9.com/-/spec/opensearch/1.1/">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Code Search | Help</title>
<%@ include file="gtmHead.jsp" %>
<link href="${fe:url('/css/codesearch/bootstrap.min.css')}" rel="stylesheet"
	type="text/css" />
<link href="${fe:url('/css/codesearch/style.css')}" rel="stylesheet" type="text/css" />
<link href="${fe:url('/css/codesearch/font-awesome.min.css')}"
	rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="gtmBody.jsp" %>
	<jsp:include page="header.jsp" />
	<main class="container">
		<div class="row">
			<div class="col">

				<jsp:include page="${helpPage}" />

			</div>
		</div>
		<div class="text-end">
			<a href="#"><la:message key="labels.footer_back_to_top" /></a>
		</div>
	</main>
	<jsp:include page="footer.jsp" />
	<input type="hidden" id="contextPath" value="${contextPath}" />
	<script type="text/javascript"
		src="${fe:url('/js/codesearch/jquery-3.7.1.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/popper.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/bootstrap.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/suggestor.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/help.js')}"></script>
</body>
</html>
