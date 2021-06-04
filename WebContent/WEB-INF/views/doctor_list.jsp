<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>HMS - Dashboard</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath }/rescs/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath }/rescs/css/sb-admin-2.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="navbar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Doctor Management</h1>
					</div>

					<!--   page content here  -->

					<div class="row">
						<div class="col col-xl-9 col-lg-12">
							<div class="card">
								<div class="card-header">
									<h3 class="h3 mb-0 text-align-center">All Doctor Information</h3>
								</div>
								<div class="card-body">
									
									<table class="table table-responsive table-striped">
										<thead>
											<tr>
												<th>ID</th>
												<th>Name</th>
												<th>Department</th>
												<th>Email</th>
												<th>Speciality</th>
												<th>Job Type</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
										
										<c:forEach items="${doctorlist }" var="doctor">
											<tr>
												<td>${doctor.id }</td>
												<td>${doctor.name }</td>
												<td>${doctor.department }</td>
												<td>${doctor.email }</td>
												<td>${doctor.specialization }</td>
												<td>${doctor.job_type }</td>
												<td><a href="<c:url value="/admin/doctor/edit/${doctor.id}"/>" class="btn btn-warning">Edit</a></td>
												<td> <a href="#" data-href="<c:url value="/admin/doctor/delete/${doctor.id}"/>" class="btn btn-danger"
                              							 data-toggle="modal" data-target="#confirm-delete"><i class="fas fa-trash"></i> Delete</a></td>
											</tr>
										</c:forEach>
											
										</tbody>
									</table>
								
								</div>
							</div>
						</div>

					</div>



				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<%@ include file="scroll.jsp"%>
	
	 <!--  delete modal -->
	 <%@ include file="delete_modal.jsp" %>

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath }/rescs/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/rescs/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath }/rescs/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath }/rescs/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/rescs/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath }/rescs/js/demo/chart-area-demo.js"></script>
	<script
		src="${pageContext.request.contextPath }/rescs/js/demo/chart-pie-demo.js"></script>

<script>
      $('#confirm-delete').on('show.bs.modal', function(e) {
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
});
  </script> 
</body>

</html>