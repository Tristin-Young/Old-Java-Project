<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url var="goToEntry" value="/goToEntry"/>
<%--<!-- needed for HTML 5-->--%>
<%--<!DOCTYPE html>--%>
<%--<!-- Why is this not inside the head?-->--%>
<%--<html lang="en">--%>


<%--<!-- metadata -->--%>

<%--<head>--%>
<%--    <link rel="stylesheet" href="../../files/styles2.css" type="text/css">--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <style>--%>
<%--        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&family=Raleway:wght@500&family=Roboto:wght@500&display=swap');--%>
<%--    </style>--%>
<%--    <title>CI1 | Home</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<a href="index2"><img src="files/images/logo-white.png" alt="logo" class="logo desktop" /></a>--%>
<%--<a href="index2"><img src="files/images/image1.png" alt="logo" class="logo mobile" /></a>--%>
<%--<nav class="fill">--%>
<%--    <ul class="nav-links">--%>
<%--        <li><a href="current-orders">Current Giveaways </a></li>--%>
<%--        <li><a href="past-orders">Past Giveaways</a></li>--%>
<%--        <li><a href="new-orders">New Giveaway</a></li>--%>
<%--        <li class="mobile-links"><a href="settings">Settings</a></li>--%>
<%--        <li class="mobile-links"><a href="personal">Personal</a></li>--%>
<%--    </ul>--%>
<%--    <div class="right-side-nav">--%>
<%--        <div class="btn">--%>
<%--            <a href="personal"><img src="files/images/userIcon.png" alt="generic user"></a>--%>
<%--            <a href="personal">John Doe</a>--%>
<%--        </div>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/logout">Log Out</a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--        <div class="btn">--%>
<%--            <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--        </div>--%>
<%--        </c:if>--%>

<%--        <a href="settings"><img src="files/Svg/cog.svg" alt="settings" class="cog"></a>--%>
<%--    </div>--%>
<%--    <div class="burger">--%>
<%--        <div class="line1"></div>--%>
<%--        <div class="line2"></div>--%>
<%--        <div class="line3"></div>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--<script src="files/app.js"></script>--%>
<%--</body>--%>

<%--</html>--%>




<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--    <link rel="stylesheet" href="../../files/styles1a.css">--%>
<%--    <title>YoHaVo | Admin</title>--%>


<%--</head>--%>

<%--<body class="background-index">--%>
<%--<div class="background-index">--%>
<%--    <nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--        <!-- <div class="container"> -->--%>
<%--        <img class="col-2 col-lg-1" src="files/Svg/images/FinalLogo.png" alt="Logo">--%>
<%--        <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->--%>

<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navMenu">--%>

<%--            <ul class="navbar-nav ms-auto">--%>
<%--                <li class="nav-item">--%>
<%--                    <a href="current-orders" class="nav-link">Current Giveaways</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a href="past-orders" class="nav-link">Past Giveaways</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a href="new-orders" class="nav-link">New Giveaway</a>--%>
<%--                </li>--%>
<%--&lt;%&ndash;                <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="settings" class="nav-link">Settings</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </li>&ndash;%&gt;--%>
<%--            </ul>--%>
<%--            <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--                <div class="btn">--%>
<%--                    <a href="/logout">Log Out</a>--%>
<%--                </div>--%>
<%--            </c:if>--%>
<%--            <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--                <div class="btn">--%>
<%--                    <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--                </div>--%>
<%--            </c:if>--%>
<%--        </div>--%>
<%--        <!-- </div> -->--%>

<%--    </nav>--%>

<%--</div>--%>
<%--</body>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--        crossorigin="anonymous"></script>--%>

<%--</html>--%>




<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">
</head>

<body>

<nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">
    <!-- <div class="container"> -->
    <img class="col-2 col-lg-1" src="../../files/Svg/Asset_1.svg" alt="Logo">
    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMenu">

        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a href="current-orders" class="nav-link">Current Giveaways</a>
            </li>
            <li class="nav-item">
                <a href="past-orders" class="nav-link">Past Giveaways</a>
            </li>
            <li class="nav-item">
                <a href="new-orders" class="nav-link">New Giveaway</a>
            </li>
            <%--                <li class="nav-item">--%>
            <%--                    <a href="settings" class="nav-link">Settings</a>--%>
            <%--                </li>--%>
        </ul>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <div class="btn">
                <a href="/logout">Log Out</a>
            </div>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <div class="btn">
                <a href="/login/oauth2/authorization/google">Login</a>
            </div>
        </c:if>
    </div>
    <!-- </div> -->

</nav>
<div class="container">



<div class="row m-5"></div>

<div class="row mx-5">
    <div class="card">
        <img src="files/Svg/givea.svg" class="card-img cardShadow">
        <div class="card-img-overlay ps-5">
            <div class="row">
                <div class="col-4">
                    <h6 class="card-title mb-0">NAME</h6>
                    <h3 class="card-title"> Giveaway Name Here</h3>
                    <h6 class="card-title mb-0">PRICE</h6>
                    <h3 class="card-title"> $123</h3>
                </div>
                <div class="col-4 d-flex">
                    <div class="col">
                        <h6 class="card-title mb-0">TOTAL</h6>
                        <h3 class="card-title">1234</h3>
                    </div>
                    <div class="col">
                        <h6 class="card-title mb-0">YOURS</h6>
                        <h3 class="card-title">34</h3>
                    </div>
                </div>
                <div class="col-4 ps-5 d-inline">
                    <h6 class="card-title mb-0">TIME</h6>
                    <h3 class="card-title d-inline"> 23 </h3> days <h3 class="card-title d-inline"> 12 </h3> hours <h3 class="card-title d-inline"> 43 </h3> min <h3 class="card-title d-inline"> 53 </h3> sec
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row m-3"></div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</div>
</body>
</html>