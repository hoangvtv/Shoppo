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

		<div class="services-breadcrumb">
			<div class="agile_inner_breadcrumb">
				<div class="container">
					<ul class="w3_short">
						<li>
							<a href="${pageContext.request.contextPath}/home">HOME</a>
							<i>|</i>
						</li>
						<li>SHOP</li>
					</ul>
				</div>
			</div>
		</div>

	<!-- top Products -->


		<!--== Start Product Area Wrapper ==-->
		<section class="section-space">
			<div class="container">
				<div class="row justify-content-between flex-xl-row-reverse">
					<div class="col-xl-9">
						<div class="row g-3 g-sm-6">

							<c:choose>
							<c:when test="${not empty products}">
								<c:forEach var="product" items="${products}">

							<div class="col-6 col-lg-4 col-xl-4 mb-4 mb-sm-8">
								<!--== Start Product Item ==-->
								<div class="product-item product-st3-item">
									<div class="product-thumb">
										<a class="d-block" href="product-details.html">
											<img src="../assets/images/shop/1.webp" width="370" height="450" alt="Image-HasTech">
										</a>
										<span class="flag-new">new</span>
										<div class="product-action">
											<button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
												<i class="fa fa-expand"></i>
											</button>
											<button type="button" class="product-action-btn action-btn-cart" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">
												<span>Add to cart</span>
											</button>
											<button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
												<i class="fa fa-heart-o"></i>
											</button>
										</div>
									</div>
									<div class="product-info">
										<div class="product-rating">
											<div class="rating">
												<i class="fa fa-star-o"></i>
												<i class="fa fa-star-o"></i>
												<i class="fa fa-star-o"></i>
												<i class="fa fa-star-o"></i>
												<i class="fa fa-star-half-o"></i>
											</div>
											<div class="reviews">150 reviews</div>
										</div>
										<h4 class="title"><a href="product-details.html">${product.name}</a></h4>
										<div class="prices">
											<span class="price">${product.price}</span>
											<span class="price-old">${product.mrpPrice}</span>
										</div>
									</div>
									<div class="product-action-bottom">
										<button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
											<i class="fa fa-expand"></i>
										</button>
										<button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
											<i class="fa fa-heart-o"></i>
										</button>
										<button type="button" class="product-action-btn action-btn-cart" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">
											<span>Add to cart</span>
										</button>
									</div>
								</div>
								<!--== End prPduct Item ==-->
							</div>

								</c:forEach>
							</c:when>
							</c:choose>

							<c:choose>
								<c:when test="${count > product_size}">
									<div class="col-12 text-center">
										<b><a class="btn btn-success" style="color:white;border-radius: 15px;" href="${pageContext.request.contextPath}/products/1">... LOAD MORE ITEMS...</a></b>
									</div>
								</c:when>
								<c:otherwise>
									<c:if test="${pageNo > 0}">
										<div class="col-sm-12 text-center">
											<b><a class="btn btn-success" style="color: white;border-radius: 15px;" href="${nextUrl}">... LOAD MORE ITEMS ...</a></b>&nbsp;
											<b><a class="btn btn-danger" href="${backUrl}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>
										</div>
									</c:if>
									<c:if test="${empty products}">
										<div class="col-12 text-center">
											<b><a class="btn btn-danger" href="${header.referer}" style="color: white;border-radius: 15px;">... GO BACK ...</a></b>
										</div>
									</c:if>
								</c:otherwise>
							</c:choose>


<%--							<div class="col-12">--%>
<%--								<ul class="pagination justify-content-center me-auto ms-auto mt-5 mb-10">--%>
<%--									<li class="page-item">--%>
<%--										<a class="page-link previous" href="product.html" aria-label="Previous">--%>
<%--											<span class="fa fa-chevron-left" aria-hidden="true"></span>--%>
<%--										</a>--%>
<%--									</li>--%>
<%--									<li class="page-item"><a class="page-link" href="product.html">01</a></li>--%>
<%--									<li class="page-item"><a class="page-link" href="product.html">02</a></li>--%>
<%--									<li class="page-item"><a class="page-link" href="product.html">03</a></li>--%>
<%--									<li class="page-item"><a class="page-link" href="product.html">....</a></li>--%>
<%--									<li class="page-item">--%>
<%--										<a class="page-link next" href="product.html" aria-label="Next">--%>
<%--											<span class="fa fa-chevron-right" aria-hidden="true"></span>--%>
<%--										</a>--%>
<%--									</li>--%>
<%--								</ul>--%>
<%--							</div>--%>
						</div>

					</div>

					<div class="col-xl-3">
						<div class="product-sidebar-widget">
							<div class="product-widget-search">
								<form action="/product/search" method="post">
									<input type="search" name="keyword" placeholder="Search Here">
									<button type="submit"><i class="fa fa-search"></i></button>
								</form>
							</div>
							<div class="product-widget">
								<h4 class="product-widget-title">Price Filter</h4>
								<div class="product-widget-range-slider">
									<div class="slider-range" id="slider-range"></div>
									<div class="slider-labels">
										<span id="slider-range-value1"></span>
										<span>—</span>
										<span id="slider-range-value2"></span>
									</div>
								</div>
							</div>
							<div class="product-widget">
								<h4 class="product-widget-title">Categoris</h4>
								<ul class="product-widget-category">
									<li><a href="product.html">Accesasories <span>(5)</span></a></li>
									<li><a href="product.html">Computer <span>(4)</span></a></li>
									<li><a href="product.html">Covid-19 <span>(2)</span></a></li>
									<li><a href="product.html">Electronics <span>(6)</span></a></li>
									<li><a href="product.html">Frame Sunglasses <span>(12)</span></a></li>
									<li><a href="product.html">Furniture <span>(7)</span></a></li>
									<li><a href="product.html">Genuine Leather <span>(9)</span></a></li>
								</ul>
							</div>



				</div>
			</div>
		</section>





	</main>


</div>





<%--	<div class="ads-grid py-sm-5 py-4">--%>
<%--		<div class="container-fluid py-xl-4 py-lg-2">--%>
<%--			<div class="row">--%>
<%--				<!-- product left -->--%>
<%--				<div class="agileinfo-ads-display col-lg-12">--%>
<%--					<div class="wrapper">--%>
<%--						<!-- first section -->--%>
<%--						<div class="px-sm-4 px-3 py-sm-5 py-3 mb-4">--%>
<%--							<c:if test="${not empty products}"><h3 class="heading-tittle text-center font-italic">Our Products</h3></c:if>--%>
<%--							<div class="row">--%>
<%--				<c:choose>--%>
<%--					<c:when test="${not empty products}">--%>
<%--						<c:forEach var="product" items="${products}">--%>
<%--								<div class="col-md-3 product-men mt-5" style="width:100%;">--%>
<%--									<div class="men-pro-item simpleCart_shelfItem">--%>
<%--										<div class="men-thumb-item text-center">--%>
<%--											<img src="${pageContext.request.contextPath}${product.image}" class="img-fluid">--%>
<%--											<div class="men-cart-pro">--%>
<%--												<div class="inner-men-cart-pro" style="margin-top:-55px;">--%>
<%--													<a href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}" class="link-product-add-cart">Quick View</a>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<div class="item-info-product text-center border-top mt-4">--%>
<%--											<h4 class="pt-1">--%>
<%--												<a href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">${product.name}</a>--%>
<%--											</h4>--%>
<%--											<div class="info-product-price my-2">--%>
<%--												<span class="item_price">&#x20b9;${product.price}</span>--%>
<%--												<del>&#x20b9;${product.mrpPrice}</del>--%>
<%--											</div>--%>
<%--											<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">--%>
<%--												<form action="#" method="post">--%>
<%--													<fieldset>--%>
<%--														<input type="hidden" name="cmd" value="_cart" />--%>
<%--														<input type="hidden" name="add" value="1" />--%>
<%--														<input type="hidden" name="item_id" value="${product.id}" />--%>
<%--														<input type="hidden" name="business" value=" " />--%>
<%--														<input type="hidden" name="item_name" value="${product.name}" />--%>
<%--														<input type="hidden" name="amount" value="${product.price}" />--%>
<%--														<input type="hidden" name="mrp" value="${product.mrpPrice}" />--%>
<%--														<input type="hidden" name="currency_code" value="INR" />--%>
<%--														<input type="hidden" name="return" value=" " />--%>
<%--														<input type="hidden" name="cancel_return" value=" " />--%>
<%--<div class="row">--%>
<%--   	<div class="col-sm-12 text-center">--%>
<%--         <input type="submit" class="btn btn-primary btn-md center-block" value="Add to Cart" />&nbsp;--%>
<%--         <a class="btn btn-danger btn-md center-block" href="${pageContext.request.contextPath}/product/productdetails?code=${product.code}">Buy Now</a>--%>
<%--     </div>--%>
<%--</div>--%>
<%--													</fieldset>--%>
<%--												</form><br>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--								</c:forEach>--%>
<%--					</c:when>--%>
<%--					<c:otherwise>--%>
<%--						<c:if test="${empty products}"><div class="col-12 text-center"><h1>THERE IS NO ITEMS</h1></div></c:if>--%>
<%--				</c:otherwise>--%>
<%--				</c:choose>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			</div>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--	</div>--%>
	<jsp:include page="layouts/footer1.jsp"></jsp:include>

<script type="text/javascript" src="<c:url value='../assets/js/vendor/modernizr-3.11.7.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../assets/js/vendor/bootstrap.bundle.min.js'/>"></script>

<!-- Plugins JS -->
<script type="text/javascript" src="<c:url value='../assets/js/plugins/swiper-bundle.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../assets/js/plugins/fancybox.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../assets/js/plugins/jquery.nice-select.min.js'/>"></script>

<!-- Custom Main JS -->
<script type="text/javascript" src="<c:url value='../assets/js/main.js'/>"></script>
</body>
</html>