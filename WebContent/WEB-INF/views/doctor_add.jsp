<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HMS - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/rescs/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/rescs/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include  file="sidebar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
          <%@ include file="navbar.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                     <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Doctor Management</h1>
                    </div>

                
                <!--   page content here  -->
                
                <c:choose>
                <c:when test="${edit eq true}">
                
                  <div class="row">
                <div class="col-xl-8 col-md-10" >
                	<div class="card">
                		<div class="card-header">
                		<h3 class="h3 mb-0 text-align-center"> Update doctor detail..</h3>
                		</div>
                		<div class="card-body">
                		
                		<form  method="post"
                		action="${pageContext.request.contextPath }/admin/doctor/edit" >
                		
                		<div class="form-group" >
                		<label for="did">ID:</label>
                		<input class="form-control" type="text" name="id" id="did" value="${doctor.id }" readonly />
                 		</div>
                 		
                 		<div class="form-group" >
                		<label for="fname">Full Name:</label>
                		<input class="form-control" type="text" name="name" id="fname" value="${doctor.name }" />
                 		</div>
                		
                		<div class="form-group" >
                		<label for="email">E-Mail:</label>
                		<input class="form-control" type="email" name="email" id="email" value="${doctor.email }" />
                 		</div>
                 		
                 		<div class="form-group" >
                		<label for="department">Department:</label>
                		<input class="form-control" type="text" name="department" id="department" value="${doctor.department }" />
                 		</div>
                		
                		<div class="form-group" >
                		<label for="special">Specialization:</label>
                		<input class="form-control" type="text" name="specialization" id="special" value="${doctor.specialization }" />
                 		</div>
                 		
                 		<div class="form-group">
                 		<label for="job_type">Job Type:</label>
                 		<select class="form-control" name="job_type" id="job_type" >
                 		<option value="" > select job type </option>
                 		<option value="permanent" <c:if test="${doctor.job_type.equals('permanent') }"> selected </c:if>> Permanent </option>
                 		<option value="temporary" <c:if test="${doctor.job_type.equals('temporary') }"> selected </c:if>> Temporary </option>
                 		</select>
                 		</div>
                 		
                 		<div class="form-group">
                 		<input type="submit" value="Update" class="btn btn-primary" >
                 		<input type="reset" value="Reset" class="btn btn-secondary" >
                 		</div>
                 		
                		</form>
                		</div>
                	</div>
                </div>
                </div>
                
                </c:when>
                <c:otherwise>
                
                  <div class="row">
                <div class="col-xl-8 col-md-10" >
                	<div class="card">
                		<div class="card-header">
                		<h3 class="h3 mb-0 text-align-center"> Add new doctor</h3>
                		</div>
                		<div class="card-body">
                		
                		<form  method="post"
                		action="${pageContext.request.contextPath }/admin/doctor/add" >
                		
                		<div class="form-group" >
                		<label for="fname">Full Name:</label>
                		<input class="form-control" type="text" name="fullName" id="fname" placeholder="Enter Full Name" />
                 		</div>
                		
                		<div class="form-group" >
                		<label for="email">E-Mail:</label>
                		<input class="form-control" type="email" name="email" id="email" placeholder="Enter Email Id" />
                 		</div>
                 		
                 		<div class="form-group" >
                		<label for="department">Department:</label>
                		<input class="form-control" type="text" name="department" id="department" placeholder="Enter Department Name" />
                 		</div>
                		
                		<div class="form-group" >
                		<label for="special">Specialization:</label>
                		<input class="form-control" type="text" name="specialization" id="special" placeholder="Enter Specializatoin" />
                 		</div>
                 		
                 		<div class="form-group">
                 		<label for="job_type">Job Type:</label>
                 		<select class="form-control" name="jobType" id="job_type" >
                 		<option value="" > select job type </option>
                 		<option value="permanent"> Permanent </option>
                 		<option value="temporary"> Temporary </option>
                 		</select>
                 		</div>
                 		
                 		<div class="form-group">
                 		<input type="submit" value="Save" class="btn btn-primary" >
                 		<input type="reset" value="Reset" class="btn btn-secondary" >
                 		</div>
                 		
                		</form>
                		</div>
                	</div>
                </div>
                </div>
                
                </c:otherwise>
                </c:choose>
                
              
                  


                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@ include file="footer.jsp" %>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <%@ include file="scroll.jsp" %>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/rescs/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/rescs/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/rescs/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/rescs/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath }/rescs/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath }/rescs/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath }/rescs/js/demo/chart-pie-demo.js"></script>

</body>

</html>