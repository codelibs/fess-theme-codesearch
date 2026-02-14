<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head profile="http://a9.com/-/spec/opensearch/1.1/">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><la:message key="labels.login.title" /></title>
<link href="${fe:url('/css/codesearch/bootstrap.min.css')}" rel="stylesheet" type="text/css" />
<link href="${fe:url('/css/codesearch/font-awesome.min.css')}" rel="stylesheet" type="text/css" />
<link href="${fe:url('/css/codesearch/style.css')}" rel="stylesheet" type="text/css" />
</head>
<body>
	<header>
		<nav class="navbar navbar-dark fixed-top bg-navy">
			<div class="container">
				<la:link styleClass="navbar-brand d-inline-flex" href="/">
					<img src="${fe:url('/images/codesearch/logo-head.png')}"
						alt="<la:message key="labels.header_brand_name" />"
						class="align-items-center" />
				</la:link>
			</div>
		</nav>
	</header>
	<main class="container">
		<div class="row justify-content-center" style="margin-top:80px">
			<div class="col-md-5 col-lg-4">
				<div class="text-center mb-4">
					<la:link href="/">
						<img src="${fe:url('/images/codesearch/logo-top.png')}"
							alt="<la:message key="labels.header_brand_name" />" />
					</la:link>
				</div>
				<div class="card login-card">
					<div class="card-body p-4">
						<h5 class="card-title text-center mb-3">
							<la:message key="labels.login.newpassword" />
						</h5>
						<div>
							<la:info id="msg" message="false">
								<div class="alert alert-info">${msg}</div>
							</la:info>
							<la:errors />
						</div>
						<la:form styleId="newPassword" method="post">
							<div class="mb-3">
								<div class="input-group">
									<span class="input-group-text"><i class="fa fa-lock fa-fw" aria-hidden="true"></i></span>
									<c:set var="ph_new_password">
										<la:message key="labels.login.placeholder_new_password" />
									</c:set>
									<la:password property="password" class="form-control"
										placeholder="${ph_new_password}" />
								</div>
							</div>
							<div class="mb-3">
								<div class="input-group">
									<span class="input-group-text"><i class="fa fa-lock fa-fw" aria-hidden="true"></i></span>
									<c:set var="ph_confirm_password">
										<la:message key="labels.login.placeholder_confirm_new_password" />
									</c:set>
									<la:password property="confirmPassword" class="form-control"
										placeholder="${ph_confirm_password}" />
								</div>
							</div>
							<div class="text-center">
								<button type="submit" name="changePassword"
									class="btn btn-primary w-100"
									value="<la:message key="labels.login.update"/>">
									<i class="fa fa-pencil-alt" aria-hidden="true"></i>
									<la:message key="labels.login.update" />
								</button>
							</div>
						</la:form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../footer.jsp" />
	<input type="hidden" id="contextPath" value="${contextPath}" />
	<script type="text/javascript"
		src="${fe:url('/js/codesearch/jquery-3.7.1.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/popper.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/bootstrap.min.js')}"></script>
	<script type="text/javascript" src="${fe:url('/js/codesearch/login.js')}"></script>
</body>
</html>
