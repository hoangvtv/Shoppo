<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--== Start Product Area Wrapper ==-->
<section class="section-space pt-0">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="section-title">
          <h2 class="title">Top Sale Products</h2>
          <p class="m-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis</p>
        </div>
      </div>
    </div>
    <div class="row mb-n4 mb-sm-n10 g-3 g-sm-6">
      <c:choose>
        <c:when test="${not empty products}">
          <c:forEach var="product" items="${products}">
      <div class="col-6 col-lg-4 mb-4 mb-sm-10">
        <!--== Start Product Item ==-->
        <div class="product-item product-st2-item">
          <div class="product-thumb">
            <a class="d-block" href="product-details.html">
              <img src="assets/images/shop/8.webp" width="370" height="450" alt="Image-HasTech">
            </a>
            <span class="flag-new">new</span>
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
            <h4 class="title"><a href="product-details.html">Readable content DX22</a></h4>
            <div class="prices">
              <span class="price">$210.00</span>
              <span class="price-old">300.00</span>
            </div>
            <div class="product-action">
              <button type="button" class="product-action-btn action-btn-cart" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">
                <span>Add to cart</span>
              </button>
              <button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
                <i class="fa fa-expand"></i>
              </button>
              <button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
                <i class="fa fa-heart-o"></i>
              </button>
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
        </div>
        <!--== End prPduct Item ==-->
      </div>
      </c:forEach>
      </c:when>
      </c:choose>
    </div>
  </div>
</section>
<!--== End Product Area Wrapper ==-->
