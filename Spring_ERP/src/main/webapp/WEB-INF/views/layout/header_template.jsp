<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- partial:partials/_navbar.html -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SPRING</title>
</head>
<body>
<%-- 사용자 로그인 정보가 담겨있는 변수 --%>
<sec:authentication property="principal" var="loginUser"/>

<nav class="navbar">
    <div class="navbar-content">
        <div class="logo-mini-wrapper">
            <img
                    src="<c:url value="/images/logo-mini-light.png"/>"
                    class="logo-mini logo-mini-light"
                    alt="logo"
            />
            <img
                    src="<c:url value="/images/logo-mini-dark.png"/>"
                    class="logo-mini logo-mini-dark"
                    alt="logo"
            />
        </div>


        <ul class="navbar-nav">
            <%--
            <li class="theme-switcher-wrapper nav-item">
                <input type="checkbox" value="" id="theme-switcher"/>
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
                            src="<c:url value="/images/flags/us.svg"/>"
                            class="w-20px"
                            title="us"
                            alt="flag"
                    />
                    <span class="ms-2 d-none d-md-inline-block">English</span>
                </a>
                <div class="dropdown-menu" aria-labelledby="languageDropdown">
                    <a href="javascript:;" class="dropdown-item py-2 d-flex"
                    ><img
                            src="<c:url value="/images/flags/us.svg"/>"
                            class="w-20px"
                            title="us"
                            alt="us"
                    />
                        <span class="ms-2"> English </span></a
                    >
                    <a href="javascript:;" class="dropdown-item py-2 d-flex"
                    ><img
                            src="<c:url value="/images/flags/fr.svg"/>"
                            class="w-20px"
                            title="fr"
                            alt="fr"
                    />
                        <span class="ms-2"> French </span></a
                    >
                    <a href="javascript:;" class="dropdown-item py-2 d-flex"
                    ><img
                            src="<c:url value="/images/flags/de.svg"/>"
                            class="w-20px"
                            title="de"
                            alt="de"
                    />
                        <span class="ms-2"> German </span></a
                    >
                    <a href="javascript:;" class="dropdown-item py-2 d-flex"
                    ><img
                            src="<c:url value="/images/flags/pt.svg"/>"
                            class="w-20px"
                            title="pt"
                            alt="pt"
                    />
                        <span class="ms-2"> Portuguese </span></a
                    >
                    <a href="javascript:;" class="dropdown-item py-2 d-flex"
                    ><img
                            src="<c:url value="/images/flags/es.svg"/>"
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
                                        src="<c:url value="/images/faces/face2.jpg"/>"
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
                                        src="<c:url value="/images/faces/face3.jpg"/>"
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
                                        src="<c:url value="/images/faces/face4.jpg"/>"
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
                                        src="<c:url value="/images/faces/face5.jpg"/>"
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
                                        src="<c:url value="/images/faces/face6.jpg"/>"
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
                                &lt;%&ndash;<img
                                        class="w-30px h-30px rounded-circle"
                                        src="<c:url value="/images/faces/face1.jpg"/>"
                                        alt="userr"
                                />&ndash;%&gt;
                                <i
                                        class="icon-sm text-white"
                                        data-feather="alert-circle"
                                ></i>
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
            </li>--%>


            <li class="nav-item dropdown">
                <sec:authorize access="isAnonymous()">
                    <a href="<c:url value="/login"/>" class="text-nowrap text-dark">로그인</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="profileDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                            ${loginUser.name}님 환영합니다
                    </a>
                    <div
                            class="dropdown-menu p-0"
                            aria-labelledby="profileDropdown"
                    >
                        <div
                                class="d-flex flex-column align-items-center border-bottom px-5 py-3"
                        >
                            <div class="text-center">
                                <p class="fs-16px fw-bolder">${loginUser.name}</p>
                                <p class="fs-12px text-secondary">
                                        ${loginUser.email}
                                </p>
                            </div>
                        </div>
                        <ul class="list-unstyled p-1">

                            <a
                                    href="pages/general/profile.html"
                                    class="text-body ms-0"
                            >
                                <li class="dropdown-item py-2">
                                    <i class="me-2 icon-md" data-feather="user"></i>
                                    <span>마이페이지</span>
                                </li>
                            </a>

                            <form action="<c:url value="/logout"/>" method="POST" id="logoutForm">

                                <a href="#" onclick="logoutform()" class="text-body ms-0">
                                    <li class="dropdown-item py-2">
                                        <i class="me-2 icon-md" data-feather="log-out"></i>
                                        <span>로그아웃</span>
                                    </li>
                                </a>

                                <sec:csrfInput/>
                            </form>
                        </ul>
                    </div>
                </sec:authorize>
            </li>

        </ul>

        <a href="#" class="sidebar-toggler">
            <i data-feather="menu"></i>
        </a>
    </div>
</nav>

<script>
    function logoutform() {
        document.getElementById("logoutForm").submit();
    }
</script>
</body>
</html>