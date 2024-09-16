<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지의 뼈대를 제공하기 위한 JSP 문서 - 템플릿 페이지 --%>
<!-- TilesView 기능을 제공하는 태그를 사용하기 위해 JSP 문서에 tags-tiles 태그 라이브러리 추가 -->    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link>
<meta charset="UTF-8">
<title>SPRING</title>
<style type="text/css">
#header {
	border: 2px solid red;
	height: 150px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content {
	border: 2px solid green;
	min-height: 550px;
	margin: 10px;
	padding: 10px;
}

#footer {
	border: 2px solid blue;
	height: 150px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}
</style>

	<!-- color-modes:js -->
	<script src="<c:url value="/js/color-modes.js"/>"></script>
	<!-- endinject -->

	<!-- Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link
			href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
			rel="stylesheet"
	/>

	<!-- core:css -->
	<link rel="stylesheet" href="<c:url value="/css/core.css"/>"/>
<%--	<link rel="stylesheet" href="assets/css/core.css" />--%>
	<!-- endinject -->

	<!-- Plugin css for this page -->
	<link rel="stylesheet" href="<c:url value="/css/flatpickr.min.css"/>"/>
	<%--<link rel="stylesheet" href="assets/css/flatpickr.min.css" />--%>
	<!-- End plugin css for this page -->

	<!-- inject:css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/iconfont.css"/>"/>
	<%--<link rel="stylesheet" href="assets/css/iconfont.css" />--%>
	<!-- endinject -->

	<!-- Layout styles -->
	<link rel="stylesheet" href="<c:url value="/css/style.css"/>" />
	<%--<link rel="stylesheet" href="assets/css/style.css" />--%>
	<!-- End layout styles -->

	<link rel="shortcut icon" href="<c:url value="/images/favicon.png"/>" />
</head>
<body><div class="main-wrapper">
	<!-- partial:partials/_sidebar.html -->
	<nav class="sidebar">
		<div class="sidebar-header">
			<a href="#" class="sidebar-brand"> Noble<span>UI</span> </a>
			<div class="sidebar-toggler">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<div class="sidebar-body">
			<ul class="nav" id="sidebarNav">
				<li class="nav-item nav-category">Main</li>
				<li class="nav-item">
					<a href="dashboard.html" class="nav-link">
						<i class="link-icon" data-feather="box"></i>
						<span class="link-title">Dashboard</span>
					</a>
				</li>
				<li class="nav-item nav-category">web apps</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#emails"
							role="button"
							aria-expanded="false"
							aria-controls="emails"
					>
						<i class="link-icon" data-feather="mail"></i>
						<span class="link-title">Email</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="emails">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/email/inbox.html" class="nav-link">Inbox</a>
							</li>
							<li class="nav-item">
								<a href="pages/email/read.html" class="nav-link">Read</a>
							</li>
							<li class="nav-item">
								<a href="pages/email/compose.html" class="nav-link"
								>Compose</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a href="pages/apps/chat.html" class="nav-link">
						<i class="link-icon" data-feather="message-square"></i>
						<span class="link-title">Chat</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="pages/apps/calendar.html" class="nav-link">
						<i class="link-icon" data-feather="calendar"></i>
						<span class="link-title">Calendar</span>
					</a>
				</li>
				<li class="nav-item nav-category">Components</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#uiComponents"
							role="button"
							aria-expanded="false"
							aria-controls="uiComponents"
					>
						<i class="link-icon" data-feather="feather"></i>
						<span class="link-title">UI Kit</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div
							class="collapse"
							data-bs-parent="#sidebarNav"
							id="uiComponents"
					>
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a
										href="pages/ui-components/accordion.html"
										class="nav-link"
								>Accordion</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/alerts.html" class="nav-link"
								>Alerts</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/badges.html" class="nav-link"
								>Badges</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/breadcrumbs.html"
										class="nav-link"
								>Breadcrumbs</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/buttons.html" class="nav-link"
								>Buttons</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/button-group.html"
										class="nav-link"
								>Button group</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/cards.html" class="nav-link"
								>Cards</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/carousel.html" class="nav-link"
								>Carousel</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/collapse.html" class="nav-link"
								>Collapse</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/dropdowns.html"
										class="nav-link"
								>Dropdowns</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/list-group.html"
										class="nav-link"
								>List group</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/media-object.html"
										class="nav-link"
								>Media object</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/modal.html" class="nav-link"
								>Modal</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/navs.html" class="nav-link"
								>Navs</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/navbar.html" class="nav-link"
								>Navbar</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/pagination.html"
										class="nav-link"
								>Pagination</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/popover.html" class="nav-link"
								>Popovers</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/progress.html" class="nav-link"
								>Progress</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/scrollbar.html"
										class="nav-link"
								>Scrollbar</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/ui-components/scrollspy.html"
										class="nav-link"
								>Scrollspy</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/spinners.html" class="nav-link"
								>Spinners</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/tabs.html" class="nav-link"
								>Tabs</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/ui-components/tooltips.html" class="nav-link"
								>Tooltips</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#advancedUI"
							role="button"
							aria-expanded="false"
							aria-controls="advancedUI"
					>
						<i class="link-icon" data-feather="anchor"></i>
						<span class="link-title">Advanced UI</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div
							class="collapse"
							data-bs-parent="#sidebarNav"
							id="advancedUI"
					>
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/advanced-ui/cropper.html" class="nav-link"
								>Cropper</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/advanced-ui/owl-carousel.html"
										class="nav-link"
								>Owl carousel</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/advanced-ui/sortablejs.html" class="nav-link"
								>SortableJs</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/advanced-ui/sweet-alert.html"
										class="nav-link"
								>Sweet Alert</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#forms"
							role="button"
							aria-expanded="false"
							aria-controls="forms"
					>
						<i class="link-icon" data-feather="inbox"></i>
						<span class="link-title">Forms</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="forms">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/forms/basic-elements.html" class="nav-link"
								>Basic Elements</a
								>
							</li>
							<li class="nav-item">
								<a
										href="pages/forms/advanced-elements.html"
										class="nav-link"
								>Advanced Elements</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/forms/editors.html" class="nav-link"
								>Editors</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/forms/wizard.html" class="nav-link"
								>Wizard</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#charts"
							role="button"
							aria-expanded="false"
							aria-controls="charts"
					>
						<i class="link-icon" data-feather="pie-chart"></i>
						<span class="link-title">Charts</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="charts">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/charts/apex.html" class="nav-link">Apex</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/chartjs.html" class="nav-link"
								>ChartJs</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/charts/flot.html" class="nav-link">Flot</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/peity.html" class="nav-link">Peity</a>
							</li>
							<li class="nav-item">
								<a href="pages/charts/sparkline.html" class="nav-link"
								>Sparkline</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#tables"
							role="button"
							aria-expanded="false"
							aria-controls="tables"
					>
						<i class="link-icon" data-feather="layout"></i>
						<span class="link-title">Table</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="tables">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/tables/basic-table.html" class="nav-link"
								>Basic Tables</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/tables/data-table.html" class="nav-link"
								>Data Table</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#icons"
							role="button"
							aria-expanded="false"
							aria-controls="icons"
					>
						<i class="link-icon" data-feather="smile"></i>
						<span class="link-title">Icons</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="icons">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/icons/feather-icons.html" class="nav-link"
								>Feather Icons</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/icons/flag-icons.html" class="nav-link"
								>Flag Icons</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/icons/mdi-icons.html" class="nav-link"
								>Mdi Icons</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item nav-category">Pages</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#general-pages"
							role="button"
							aria-expanded="false"
							aria-controls="general-pages"
					>
						<i class="link-icon" data-feather="book"></i>
						<span class="link-title">Special pages</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div
							class="collapse"
							data-bs-parent="#sidebarNav"
							id="general-pages"
					>
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/general/blank-page.html" class="nav-link"
								>Blank page</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/general/faq.html" class="nav-link">Faq</a>
							</li>
							<li class="nav-item">
								<a href="pages/general/invoice.html" class="nav-link"
								>Invoice</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/general/profile.html" class="nav-link"
								>Profile</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/general/pricing.html" class="nav-link"
								>Pricing</a
								>
							</li>
							<li class="nav-item">
								<a href="pages/general/timeline.html" class="nav-link"
								>Timeline</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#authPages"
							role="button"
							aria-expanded="false"
							aria-controls="authPages"
					>
						<i class="link-icon" data-feather="unlock"></i>
						<span class="link-title">Authentication</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div class="collapse" data-bs-parent="#sidebarNav" id="authPages">
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/auth/login.html" class="nav-link">Login</a>
							</li>
							<li class="nav-item">
								<a href="pages/auth/register.html" class="nav-link"
								>Register</a
								>
							</li>
						</ul>
					</div>
				</li>
				<li class="nav-item">
					<a
							class="nav-link"
							data-bs-toggle="collapse"
							href="#errorPages"
							role="button"
							aria-expanded="false"
							aria-controls="errorPages"
					>
						<i class="link-icon" data-feather="cloud-off"></i>
						<span class="link-title">Error</span>
						<i class="link-arrow" data-feather="chevron-down"></i>
					</a>
					<div
							class="collapse"
							data-bs-parent="#sidebarNav"
							id="errorPages"
					>
						<ul class="nav sub-menu">
							<li class="nav-item">
								<a href="pages/error/404.html" class="nav-link">404</a>
							</li>
							<li class="nav-item">
								<a href="pages/error/500.html" class="nav-link">500</a>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	<!-- partial -->

	<div class="page-wrapper">
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar">
			<div class="navbar-content">
				<div class="logo-mini-wrapper">
					<img
							src="assets/images/logo-mini-light.png"
							class="logo-mini logo-mini-light"
							alt="logo"
					/>
					<img
							src="assets/images/logo-mini-dark.png"
							class="logo-mini logo-mini-dark"
							alt="logo"
					/>
				</div>

				<form class="search-form">
					<div class="input-group">
						<div class="input-group-text">
							<i data-feather="search"></i>
						</div>
						<input
								type="text"
								class="form-control"
								id="navbarForm"
								placeholder="Search here..."
						/>
					</div>
				</form>

				<ul class="navbar-nav">
					<li class="theme-switcher-wrapper nav-item">
						<input type="checkbox" value="" id="theme-switcher" />
						<label for="theme-switcher">
							<div class="box">
								<div class="ball"></div>
								<div class="icons">
									<i class="feather icon-sun"></i>
									<i class="feather icon-moon"></i>
								</div>
							</div>
						</label>
					</li>
					<li class="nav-item dropdown">
						<a
								class="nav-link dropdown-toggle d-flex"
								href="#"
								id="languageDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
						>
							<img
									src="assets/images/flags/us.svg"
									class="w-20px"
									title="us"
									alt="flag"
							/>
							<span class="ms-2 d-none d-md-inline-block">English</span>
						</a>
						<div class="dropdown-menu" aria-labelledby="languageDropdown">
							<a href="javascript:;" class="dropdown-item py-2 d-flex"
							><img
									src="assets/images/flags/us.svg"
									class="w-20px"
									title="us"
									alt="us"
							/>
								<span class="ms-2"> English </span></a
							>
							<a href="javascript:;" class="dropdown-item py-2 d-flex"
							><img
									src="assets/images/flags/fr.svg"
									class="w-20px"
									title="fr"
									alt="fr"
							/>
								<span class="ms-2"> French </span></a
							>
							<a href="javascript:;" class="dropdown-item py-2 d-flex"
							><img
									src="assets/images/flags/de.svg"
									class="w-20px"
									title="de"
									alt="de"
							/>
								<span class="ms-2"> German </span></a
							>
							<a href="javascript:;" class="dropdown-item py-2 d-flex"
							><img
									src="assets/images/flags/pt.svg"
									class="w-20px"
									title="pt"
									alt="pt"
							/>
								<span class="ms-2"> Portuguese </span></a
							>
							<a href="javascript:;" class="dropdown-item py-2 d-flex"
							><img
									src="assets/images/flags/es.svg"
									class="w-20px"
									title="es"
									alt="es"
							/>
								<span class="ms-2"> Spanish </span></a
							>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a
								class="nav-link dropdown-toggle"
								href="#"
								id="appsDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
						>
							<i data-feather="grid"></i>
						</a>
						<div class="dropdown-menu p-0" aria-labelledby="appsDropdown">
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-between border-bottom"
							>
								<p class="mb-0 fw-bold">Web Apps</p>
								<a href="javascript:;" class="text-secondary">Edit</a>
							</div>
							<div class="row g-0 p-1">
								<div class="col-3 text-center">
									<a
											href="pages/apps/chat.html"
											class="dropdown-item d-flex flex-column align-items-center justify-content-center w-70px h-70px"
									><i
											data-feather="message-square"
											class="icon-lg mb-1"
									></i>
										<p class="fs-12px">Chat</p></a
									>
								</div>
								<div class="col-3 text-center">
									<a
											href="pages/apps/calendar.html"
											class="dropdown-item d-flex flex-column align-items-center justify-content-center w-70px h-70px"
									><i data-feather="calendar" class="icon-lg mb-1"></i>
										<p class="fs-12px">Calendar</p></a
									>
								</div>
								<div class="col-3 text-center">
									<a
											href="pages/email/inbox.html"
											class="dropdown-item d-flex flex-column align-items-center justify-content-center w-70px h-70px"
									><i data-feather="mail" class="icon-lg mb-1"></i>
										<p class="fs-12px">Email</p></a
									>
								</div>
								<div class="col-3 text-center">
									<a
											href="pages/general/profile.html"
											class="dropdown-item d-flex flex-column align-items-center justify-content-center w-70px h-70px"
									><i data-feather="instagram" class="icon-lg mb-1"></i>
										<p class="fs-12px">Profile</p></a
									>
								</div>
							</div>
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-center border-top"
							>
								<a href="javascript:;">View all</a>
							</div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a
								class="nav-link dropdown-toggle"
								href="#"
								id="messageDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
						>
							<i data-feather="mail"></i>
						</a>
						<div
								class="dropdown-menu p-0"
								aria-labelledby="messageDropdown"
						>
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-between border-bottom"
							>
								<p>9 New Messages</p>
								<a href="javascript:;" class="text-secondary">Clear all</a>
							</div>
							<div class="p-1">
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div class="me-3">
										<img
												class="w-30px h-30px rounded-circle"
												src="assets/images/faces/face2.jpg"
												alt="userr"
										/>
									</div>
									<div class="d-flex justify-content-between flex-grow-1">
										<div class="me-4">
											<p>Leonardo Payne</p>
											<p class="fs-12px text-secondary">Project status</p>
										</div>
										<p class="fs-12px text-secondary">2 min ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div class="me-3">
										<img
												class="w-30px h-30px rounded-circle"
												src="assets/images/faces/face3.jpg"
												alt="userr"
										/>
									</div>
									<div class="d-flex justify-content-between flex-grow-1">
										<div class="me-4">
											<p>Carl Henson</p>
											<p class="fs-12px text-secondary">Client meeting</p>
										</div>
										<p class="fs-12px text-secondary">30 min ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div class="me-3">
										<img
												class="w-30px h-30px rounded-circle"
												src="assets/images/faces/face4.jpg"
												alt="userr"
										/>
									</div>
									<div class="d-flex justify-content-between flex-grow-1">
										<div class="me-4">
											<p>Jensen Combs</p>
											<p class="fs-12px text-secondary">Project updates</p>
										</div>
										<p class="fs-12px text-secondary">1 hrs ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div class="me-3">
										<img
												class="w-30px h-30px rounded-circle"
												src="assets/images/faces/face5.jpg"
												alt="userr"
										/>
									</div>
									<div class="d-flex justify-content-between flex-grow-1">
										<div class="me-4">
											<p>Jassa Burton</p>
											<p class="fs-12px text-secondary">Project deatline</p>
										</div>
										<p class="fs-12px text-secondary">2 hrs ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div class="me-3">
										<img
												class="w-30px h-30px rounded-circle"
												src="assets/images/faces/face6.jpg"
												alt="userr"
										/>
									</div>
									<div class="d-flex justify-content-between flex-grow-1">
										<div class="me-4">
											<p>Yaretzi Mayo</p>
											<p class="fs-12px text-secondary">New record</p>
										</div>
										<p class="fs-12px text-secondary">5 hrs ago</p>
									</div>
								</a>
							</div>
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-center border-top"
							>
								<a href="javascript:;">View all</a>
							</div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a
								class="nav-link dropdown-toggle"
								href="#"
								id="notificationDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
						>
							<i data-feather="bell"></i>
							<div class="indicator">
								<div class="circle"></div>
							</div>
						</a>
						<div
								class="dropdown-menu p-0"
								aria-labelledby="notificationDropdown"
						>
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-between border-bottom"
							>
								<p>6 New Notifications</p>
								<a href="javascript:;" class="text-secondary">Clear all</a>
							</div>
							<div class="p-1">
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div
											class="w-30px h-30px d-flex align-items-center justify-content-center bg-primary rounded-circle me-3"
									>
										<i class="icon-sm text-white" data-feather="gift"></i>
									</div>
									<div class="flex-grow-1 me-2">
										<p>New Order Recieved</p>
										<p class="fs-12px text-secondary">30 min ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div
											class="w-30px h-30px d-flex align-items-center justify-content-center bg-primary rounded-circle me-3"
									>
										<i
												class="icon-sm text-white"
												data-feather="alert-circle"
										></i>
									</div>
									<div class="flex-grow-1 me-2">
										<p>Server Limit Reached!</p>
										<p class="fs-12px text-secondary">1 hrs ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div
											class="w-30px h-30px d-flex align-items-center justify-content-center bg-primary rounded-circle me-3"
									>
										<img
												class="w-30px h-30px rounded-circle"
												src="<c:url value="/images/faces/face1.jpg"/>"
												alt="userr"
										/>
									</div>
									<div class="flex-grow-1 me-2">
										<p>New customer registered</p>
										<p class="fs-12px text-secondary">2 sec ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div
											class="w-30px h-30px d-flex align-items-center justify-content-center bg-primary rounded-circle me-3"
									>
										<i class="icon-sm text-white" data-feather="layers"></i>
									</div>
									<div class="flex-grow-1 me-2">
										<p>Apps are ready for update</p>
										<p class="fs-12px text-secondary">5 hrs ago</p>
									</div>
								</a>
								<a
										href="javascript:;"
										class="dropdown-item d-flex align-items-center py-2"
								>
									<div
											class="w-30px h-30px d-flex align-items-center justify-content-center bg-primary rounded-circle me-3"
									>
										<i
												class="icon-sm text-white"
												data-feather="download"
										></i>
									</div>
									<div class="flex-grow-1 me-2">
										<p>Download completed</p>
										<p class="fs-12px text-secondary">6 hrs ago</p>
									</div>
								</a>
							</div>
							<div
									class="px-3 py-2 d-flex align-items-center justify-content-center border-top"
							>
								<a href="javascript:;">View all</a>
							</div>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a
								class="nav-link dropdown-toggle"
								href="#"
								id="profileDropdown"
								role="button"
								data-bs-toggle="dropdown"
								aria-haspopup="true"
								aria-expanded="false"
						>
							<img
									class="w-30px h-30px ms-1 rounded-circle"
									src="<c:url value="/images/faces/face1.jpg"/>"
									alt="profile"
							/>
						</a>
						<div
								class="dropdown-menu p-0"
								aria-labelledby="profileDropdown"
						>
							<div
									class="d-flex flex-column align-items-center border-bottom px-5 py-3"
							>
								<div class="mb-3">
									<img
											class="w-80px h-80px rounded-circle"
											src="<c:url value="/images/faces/face1.jpg"/>"
											alt=""
									/>
								</div>
								<div class="text-center">
									<p class="fs-16px fw-bolder">Jassa</p>
									<p class="fs-12px text-secondary">
										therichposts@gmail.com
									</p>
								</div>
							</div>
							<ul class="list-unstyled p-1">
								<li class="dropdown-item py-2">
									<a
											href="pages/general/profile.html"
											class="text-body ms-0"
									>
										<i class="me-2 icon-md" data-feather="user"></i>
										<span>Profile</span>
									</a>
								</li>
								<li class="dropdown-item py-2">
									<a href="javascript:;" class="text-body ms-0">
										<i class="me-2 icon-md" data-feather="edit"></i>
										<span>Edit Profile</span>
									</a>
								</li>
								<li class="dropdown-item py-2">
									<a href="javascript:;" class="text-body ms-0">
										<i class="me-2 icon-md" data-feather="repeat"></i>
										<span>Switch User</span>
									</a>
								</li>
								<li class="dropdown-item py-2">
									<a href="javascript:;" class="text-body ms-0">
										<i class="me-2 icon-md" data-feather="log-out"></i>
										<span>Log Out</span>
									</a>
								</li>
							</ul>
						</div>
					</li>
				</ul>

				<a href="#" class="sidebar-toggler">
					<i data-feather="menu"></i>
				</a>
			</div>
		</nav>
		<!-- content 부분 -->

		<div id="content">
			<tiles:insertAttribute name="content"/>
		</div>

		<!-- partial:partials/_footer.html -->
		<footer
				class="footer d-flex flex-row align-items-center justify-content-between px-4 py-3 border-top small"
		>
			<p class="text-secondary mb-1 mb-md-0">
				Copyright © 2024 <a href="#" target="_blank">Jassa</a>.
			</p>
			<p class="text-secondary">
				With
				<i class="mb-1 text-primary ms-1 icon-sm" data-feather="heart"></i>
			</p>
		</footer>
		<!-- partial -->
	</div>

</div>
<!-- core:js -->
<script src="<c:url value='/js/core.js'/>"></script>
<!-- endinject -->

<!-- Plugin js for this page -->
<script src="<c:url value="/js/flatpickr.min.js"/>"></script>
<script src="<c:url value="/js/apexcharts.min.js"/>"></script>
<!-- End plugin js for this page -->

<!-- inject:js -->
<script src="<c:url value="/js/feather.min.js"/>"></script>
<script src="<c:url value="/js/app.js"/>"></script>
<!-- endinject -->

<!-- Custom js for this page -->
<script src="<c:url value="/js/dashboard.js"/>"></script>
<!-- End custom js for this page -->
</body>
</html>