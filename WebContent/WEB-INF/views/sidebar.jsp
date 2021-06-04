<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="${pageContext.request.contextPath}/admin-home">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">HMS Admin</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link"
		href="${pageContext.request.contextPath }/admin-home"> <i
			class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Manage</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseDoc" aria-expanded="true"
		aria-controls="collapseDoc"> <i class="fas fa-fw fa-cog"></i> <span>Doctors</span>
	</a>
		<div id="collapseDoc" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Manage Doctors:</h6>
				<a class="collapse-item"
					href="${pageContext.request.contextPath }/admin/doctor/add">Add</a>
				<a class="collapse-item"
					href="${pageContext.request.contextPath }/admin/doctor/show">View</a>
			</div>
		</div></li>

	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseStaff"
		aria-expanded="true" aria-controls="collapseStaff"> <i
			class="fas fa-fw fa-cog"></i> <span>Staff</span>
	</a>
		<div id="collapseStaff" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Manage Staff:</h6>
				<a class="collapse-item"
					href="${pageContext.request.contextPath }/admin/staff/add">Add</a>
				<a class="collapse-item"
					href="${pageContext.request.contextPath }/admin/staff/show">View</a>
			</div>
		</div></li>

	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseAppointment"
		aria-expanded="true" aria-controls="collapseAppointment"> <i
			class="fas fa-fw fa-wrench"></i> <span>Appointments</span>
	</a>
		<div id="collapseAppointment" class="collapse"
			aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Manage Daily Appointment:</h6>
				<a class="collapse-item" href="#">New</a> <a class="collapse-item"
					href="#">View</a> <a class="collapse-item" href="#">Update</a> <a
					class="collapse-item" href="#">Cancel</a>
			</div>
		</div></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Reports</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapsePages"
		aria-expanded="true" aria-controls="collapsePages"> <i
			class="fas fa-fw fa-folder"></i> <span>Operations</span>
	</a>
		<div id="collapsePages" class="collapse"
			aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Services</h6>
				<a class="collapse-item" href="#">New Services</a> <a
					class="collapse-item" href="#">Patients</a> <a
					class="collapse-item" href="#">Lab</a>
				<div class="collapse-divider"></div>
				<h6 class="collapse-header">Administrative:</h6>
				<a class="collapse-item" href="#">Duty Managment</a> <a
					class="collapse-item" href="#">Daily Report</a>
			</div>
		</div></li>

	<!-- Nav Item - Charts -->
	<li class="nav-item"><a class="nav-link" href="#"> <i
			class="fas fa-fw fa-chart-area"></i> <span>Accounting</span></a></li>

	<!-- Nav Item - Tables -->
	<li class="nav-item"><a class="nav-link" href="#"> <i
			class="fas fa-fw fa-table"></i> <span>Human Resource</span></a></li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>


</ul>