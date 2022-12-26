<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sky-Shop | Categories</title>
    <jsp:include page="layouts/header.jsp"></jsp:include>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style type="text/css">
        @media only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px) {
            p#mb {
                display: none;
                visibility: hidden;
            }
        }

        @media (max-width: 623px) {
            p#mb {
                color: #ee2d50;
                font-weight: bold;
                align-content: center;
                display: unset;
                visibility: visible;
            }

            table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
<jsp:include page="layouts/admin_menu.jsp"></jsp:include>
<!-- banner-2 -->
<div class="page-head_agile_info_w3l"></div>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li><a href="/admin/home">Home</a> <i>|</i></li>
                <li>View Category</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- register -->
<div class="contact py-sm-5 py-4">
    <div class="container-fluid py-xl-4 py-lg-2">
        <c:if test="${not empty delete}">
            <div class="alert alert-success alert-dismissible fade show text-center">
                Product removed successfully.
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        </c:if>
        <c:if test="${not empty invalid}">
            <div class="alert alert-danger alert-dismissible fade show text-center">
                Invalid Filename.
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        </c:if>
        <p id="mb">Slide Right to see full table.</p>
        <table id="example" class="table table-hover table-bordered text-center">
            <thead>
            <tr>
                <th>SR. No.</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:set var="count" value="0" scope="page"></c:set>
            <c:forEach var="category" items="${categories}">
                <c:set var="count" value="${count + 1}" scope="page"></c:set>
                <tr>
                    <td>${count}</td>
                    <td>${category.name}</td>

                    <td><a href="${pageContext.request.contextPath}/admin/category/edit/${category.id}"><i
                            class="far fa-edit" style="font-size:30px;color:#F45C5D;"></i></a> |
                        <a href="${pageContext.request.contextPath}/admin/category/delete/${category.id}"
                           style="font-size:30px;color:#F45C5D;"
                           onclick="return confirm('Are you sure you want to delete this category?');">
                            <i class="far fa-times-circle"></i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="layouts/cart-footer.jsp"></jsp:include>
<!-- Bootstrap core JavaScript-->
<!-- Page level plugin JavaScript-->
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
</body>
</html>
