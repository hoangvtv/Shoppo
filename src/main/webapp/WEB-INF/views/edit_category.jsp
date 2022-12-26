<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sky-Shop | Edit Category </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
	<jsp:include page="layouts/admin_menu.jsp"></jsp:include>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i>
					</li>
					<li>Edit Category</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->

<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<!-- form -->
			<div class="alert alert-success alert-dismissible fade show text-center" id="success" style="display:none;"></div>
			<div class="alert alert-danger alert-dismissible fade show text-center" id="error" style="display:none;"></div>
		<form id="form">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<c:set var="code" value="${id}" scope="session"></c:set>
							<input type="text" class="form-control" placeholder="Product Name" id="name" value="${category.name}" name="name" required="required">
							<p id="error_name"></p>
						</div>
					</div>
						<div class="right-w3l col-md-6">
							<input type="button" style="background-color: #0879c9;" id="submit" class="btn btn-primary form-control" value="Submit">
						</div>
				</div>
			</form>
			<!-- //form -->
  <p class="text-center">
  <img src="${pageContext.request.contextPath}/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
  </p>
		</div>
	</div>
	
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/categories.js"></script>
</body>
</html>