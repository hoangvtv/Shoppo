<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Sky-Shop | Home </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
<div class="wrapper">
	<main class="main-content">
<c:choose>
	<c:when test="${not empty email}">
		<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
		<jsp:include page="layouts/user-menu.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
<%--		<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>--%>
<%--		<jsp:include page="layouts/menu.jsp"></jsp:include>--%>
		<jsp:include page="layouts/navigate.jsp"></jsp:include>
	</c:otherwise>
</c:choose>

		<%--slider--%>
		<jsp:include page="layouts/banner/banner.jsp"></jsp:include>
		<%--3 bang quang cao--%>
		<jsp:include page="layouts/banner/product-banner.jsp"></jsp:include>
		<%--top 6 san pham--%>
		<jsp:include page="layouts/product/best-product.jsp"></jsp:include>
		<%--bien quang cao thuong hieu--%>
		<jsp:include page="layouts/banner/brand-banner.jsp"></jsp:include>
		<%--san pham theo category--%>
		<jsp:include page="layouts/product/category-product.jsp"></jsp:include>
		<%--de lai email--%>
		<jsp:include page="layouts/product/letter.jsp"></jsp:include>
		<%--footter--%>
		<jsp:include page="layouts/footer1.jsp"></jsp:include>
		<%--xem nhanh san pham--%>
		<jsp:include page="layouts/product/quick-view.jsp"></jsp:include>

<%--<c:choose>--%>
<%--	<c:when test="${count > product_size}">--%>
<%--		<div class="col-12 text-center">--%>
<%--			<b><a class="btn btn-success" style="color:white;border-radius: 15px;" href="${pageContext.request.contextPath}/products/1">... LOAD MORE ITEMS...</a></b>--%>
<%--		</div>--%>
<%--	</c:when>--%>
<%--	<c:otherwise>--%>
<%--		<c:if test="${pageNo > 0}">--%>
<%--			<div class="col-sm-12 text-center">--%>
<%--				<b><a class="btn btn-success" style="color: white;border-radius: 15px;" href="${nextUrl}">... LOAD MORE ITEMS ...</a></b>&nbsp;--%>
<%--				<b><a class="btn btn-danger" href="${backUrl}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>--%>
<%--			</div>--%>
<%--		</c:if>--%>
<%--		<c:if test="${empty products}">--%>
<%--			<div class="col-12 text-center">--%>
<%--				<b><a class="btn btn-danger" href="${header.referer}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>--%>
<%--			</div>--%>
<%--		</c:if>--%>
<%--	</c:otherwise>--%>
<%--</c:choose>--%>


	</main>
</div>

<%--thu vien--%>
<script type="text/javascript" src="<c:url value='/assets/js/vendor/modernizr-3.11.7.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/vendor/bootstrap.bundle.min.js'/>"></script>

<!-- Plugins JS -->
<script type="text/javascript" src="<c:url value='assets/js/plugins/swiper-bundle.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/plugins/fancybox.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/plugins/jquery.nice-select.min.js'/>"></script>

<!-- Custom Main JS -->
<script type="text/javascript" src="<c:url value='/assets/js/main.js'/>"></script>
</body>
</html>