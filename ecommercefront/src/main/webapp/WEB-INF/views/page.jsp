<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!--  Cerulean bootstrap -->
<link href="${css}/bootstrap-cerulean.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<!-- Navbar comes here -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
				<!--  Loading the home content -->
				<c:if test="${userClickHome == true}">
					<%@include file="home.jsp"%>
				</c:if>
				<!-- Load ONLY user clicks ABOUT -->
				<c:if test="${userClickAbout == true}">
					<%@include file="about.jsp"%>
				</c:if>
				<!-- Load ONLY user clicks CONTACT -->
				<c:if test="${userClickContact == true}">
					<%@include file="contact.jsp"%>
				</c:if>
				
				<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
					<%@include file="listProducts.jsp"%>
				</c:if>
		</div>

		<!-- Footer -->
		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/myapp.js"></script>

		<!-- Self coded javascript -->

	</div>

</body>

</html>
