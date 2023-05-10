<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>--%>


<%--<!DOCTYPE html>--%>

<%--<html lang="en">--%>

<%--    <head>--%>
<%--        <meta charset="UTF-8">--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--        <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--        <link rel="stylesheet" href="../../files/styles1a.css">--%>

<%--        <title>YoHaVo | Index</title>--%>
<%--        <script src="files/app.js"></script>--%>
<%--        <script src="files/js/jquery.min.js"></script>--%>
<%--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--                crossorigin="anonymous"></script>--%>
<%--        <script src="files/js/popper.js"></script>--%>
<%--        <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--        <script src="files/js/dateFormat.min.js"></script>--%>

<%--    </head>--%>

<%--    <body class="background-index">--%>
<%--        <nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--            <img class="col-2 col-lg-1" src="files/Svg/logo-main.svg" alt="Logo">--%>
<%--            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--                <span class="navbar-toggler-icon"></span>--%>
<%--            </button>--%>
<%--            <div class="collapse navbar-collapse" id="navMenu">--%>
<%--                <ul class="navbar-nav ms-auto">--%>
<%--                    <li class="nav-item">--%>
<%--                        <a href="settings" class="nav-link">Settings</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--                            <div class="btn">--%>
<%--                                <a href="/logout">Log Out</a>--%>
<%--                            </div>--%>
<%--                        </c:if>--%>
<%--                        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--                            <div class="btn">--%>
<%--                                <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--                            </div>--%>
<%--                        </c:if>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </nav>--%>

<%--        <div class="container">--%>
<%--            <c:forEach items="${giveaways}" var = "Giveaway">--%>
<%--                <div class="card shadow-lg p-3 m-5 rounded blur">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="d-inline-flex">--%>
<%--                            <div class="float-left">--%>
<%--                                <h5 class="card-title"><c:out value="${Giveaway.name }"></c:out></h5>--%>
<%--                            </div>--%>
<%--                            <div id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-text text-end"></div>--%>
<%--                        </div>--%>
<%--                        <h6 class="card-subtitle mb-2 text-muted"><c:out value="${Giveaway.prize }"></c:out></h6>--%>
<%--                        <div id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="all-entries p-2 text-end"></div>--%>
<%--                        <div id="giveaway-${Giveaway.idGiveawayStruct}-user-entries" class="user-entries p-2 text-end"></div>--%>

<%--                        <div  class="d-none col-11 my-1 mx-auto p-2 border border-2 border-warning rounded">--%>
<%--                            <div class=" text-center"><a  href="${goToEntry}?giveawayId=${Giveaway.idGiveawayStruct}"> Enter!</a></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <script>--%>
<%--                    var d = '${(Giveaway.endDate)}';--%>
<%--                    var endDate = new Date(this.d);--%>
<%--                    var usersCount = 'All:' + '${Giveaway.usersCount}';--%>
<%--                    var userCount = 'User:' + '${Giveaway.getUserCount(user.id)}';--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--                        var $this = $(this).html(event.strftime(''--%>
<%--                            +'<p>'--%>
<%--                            + '<span>%D</span> Day%!d '--%>
<%--                            + '<span>%H</span> Hr '--%>
<%--                            + '<span>%M</span> Min '--%>
<%--                            + '<span>%S</span> Sec '--%>
<%--                            + '</p>'));--%>
<%--                    });--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}-user-entries').text(userCount);--%>
<%--                </script>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>

<%--    </body>--%>
<%--</html>--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>--%>

<%--<!DOCTYPE html>--%>

<%--<html lang="en">--%>
<%--    <head>--%>
<%--        <meta charset="UTF-8">--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--        <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--        <link rel="stylesheet" href="../../files/styles1a.css">--%>
<%--        <title>Yohavo | Current Giveaways</title>--%>
<%--        <script src="files/js/jquery.min.js"></script>--%>
<%--        <script src="files/js/popper.js"></script>--%>
<%--        <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--        <script src="files/js/dateFormat.min.js"></script>--%>
<%--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--                crossorigin="anonymous"></script>--%>
<%--        <script src="files/app.js"></script>--%>
<%--    </head>--%>

<%--    <body class="background-index">--%>
<%--        <div class="background-index">--%>
<%--            <nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--                <img class="col-2 col-lg-1" src="files/Svg/logo-main.svg" alt="Logo">--%>
<%--                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--                    <span class="navbar-toggler-icon"></span>--%>
<%--                </button>--%>
<%--                <div class="collapse navbar-collapse" id="navMenu">--%>
<%--                    <ul class="navbar-nav ms-auto">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="settings" class="nav-link">Settings</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--                                <div class="btn">--%>
<%--                                    <a href="/logout">Log Out</a>--%>
<%--                                </div>--%>
<%--                            </c:if>--%>
<%--                            <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--                                <div class="btn">--%>
<%--                                    <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--                                </div>--%>
<%--                            </c:if>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--        <div class="container">--%>
<%--            <c:forEach items="${openGiveawaysList}" var = "Giveaway">--%>
<%--                <div class="card shadow-lg p-3 m-5 rounded blur">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="d-inline-flex">--%>
<%--                            <div class="float-left">--%>
<%--                                <h5 class="card-title"><c:out value="${Giveaway.name }"></c:out></h5>--%>
<%--                            </div>--%>
<%--                            <div id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-text text-end"></div>--%>
<%--                        </div>--%>
<%--                        <h6 class="card-subtitle mb-2 text-muted"><c:out value="${Giveaway.prize }"></c:out></h6>--%>
<%--                        <div id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="all-entries p-2 text-end"></div>--%>

<%--                        <div  class="d-none col-11 my-1 mx-auto p-2 border border-2 border-warning rounded">--%>
<%--                            <div class=" text-center"><a  href="${goToEntry}?giveawayId=${Giveaway.idGiveawayStruct}"> Enter!</a></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <script>--%>
<%--                    var d = '${(Giveaway.endDate)}';--%>
<%--                    var endDate = new Date(this.d);--%>
<%--                    var usersCount = 'All:' + '${Giveaway.usersCount}';--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--                        var $this = $(this).html(event.strftime(''--%>
<%--                            +'<p>'--%>
<%--                            + '<span>%D</span> Day%!d '--%>
<%--                            + '<span>%H</span> Hr '--%>
<%--                            + '<span>%M</span> Min '--%>
<%--                            + '<span>%S</span> Sec '--%>
<%--                            + '</p>'));--%>
<%--                    });--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--                </script>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </body>--%>
<%--</html>--%>


<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title></title>--%>
<%--    <script src="files/js/jquery.min.js"></script>--%>
<%--    <script src="files/js/popper.js"></script>--%>
<%--    <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--    <script src="files/js/dateFormat.min.js"></script>--%>
<%--    <script src="files/app.js"></script>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">--%>
<%--</head>--%>

<%--<body>--%>

<%--<nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--    <img class="col-2 col-lg-1" src="files/Svg/logo-main.svg" alt="Logo">--%>
<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navMenu">--%>
<%--        <ul class="navbar-nav ms-auto">--%>
<%--            <li class="nav-item">--%>
<%--                <a href="settings" class="nav-link">Settings</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--                    <div class="btn">--%>
<%--                        <a href="/logout">Log Out</a>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--                <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--                    <div class="btn">--%>
<%--                        <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<div class="container">--%>

<%--<div class="row m-5"></div>--%>
<%--<c:forEach items="${openGiveawaysList}" var = "Giveaway">--%>
<%--    <div class="row mx-5">--%>
<%--        <div class="card">--%>
<%--            <img src="files/Svg/givea.svg" class="card-img cardShadow">--%>
<%--            <div class="card-img-overlay ps-5">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-4">--%>
<%--                        <h6 class="card-title mb-0">NAME</h6>--%>
<%--                        <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
<%--                        <h6 class="card-title mb-0">PRIZE</h6>--%>
<%--                        <h3 class="card-title">$<c:out value="${Giveaway.prize }"></c:out></h3>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 d-flex">--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="card-title mb-0">TOTAL</h6>--%>
<%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
<%--                        </div>--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="card-title mb-0">YOURS</h6>--%>
<%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}-user-entries" class="card-title">34</h3>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 ps-5 d-inline">--%>
<%--                        <h6 class="card-title mb-0">TIME</h6>--%>
<%--                        <h3 id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-title d-inline"></h3>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <script>--%>
<%--        var d = '${(Giveaway.endDate)}';--%>
<%--        var endDate = new Date(this.d);--%>
<%--        var usersCount ='${Giveaway.usersCount}';--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--            var $this = $(this).html(event.strftime(''--%>
<%--                +'<p>'--%>
<%--                + '<span>%D</span> Day%!d '--%>
<%--                + '<span>%H</span> Hr '--%>
<%--                + '<span>%M</span> Min '--%>
<%--                + '<span>%S</span> Sec '--%>
<%--                + '</p>'));--%>
<%--        });--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--    </script>--%>
<%--    <div class="row m-3"></div>--%>

<%--</c:forEach>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>



<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title></title>--%>
<%--    <script src="files/js/jquery.min.js"></script>--%>
<%--    <script src="files/js/popper.js"></script>--%>
<%--    <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--    <script src="files/js/dateFormat.min.js"></script>--%>
<%--    <script src="files/app.js"></script>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">--%>
<%--</head>--%>

<%--<body class="bg-image">--%>

<%--<nav class="navbar navbar-expand-lg px-3">--%>
<%--    <!-- <div class="container"> -->--%>
<%--    <a class="col-2 col-lg-1" href="index"><img src="../../files/Svg/Asset_1.svg" alt="Logo"></a>--%>
<%--    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->--%>

<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navMenu">--%>

<%--        <ul class="navbar-nav ms-auto">--%>
<%--            <li class="nav-item">--%>
<%--                <a href="current-orders" class="nav-link"><h5>Current Giveaways</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="past-orders" class="nav-link"><h5>Past Giveaways</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="new-orders" class="nav-link"><h5>New Giveaway</h5></a>--%>
<%--            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="settings" class="nav-link"><h5>Settings</h5></a>--%>
<%--                            </li>--%>
<%--        </ul>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/logout" class="text-decoration-none"><h5>Log Out</h5></a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/login/oauth2/authorization/google" class="text-decoration-none"><h5>Login</h5></a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--    <!-- </div> -->--%>

<%--</nav>--%>
<%--<div class="container">--%>

<%--    <div class="row m-5"></div>--%>
<%--    <c:forEach items="${openGiveawaysList}" var = "Giveaway">--%>
<%--        <div class="row mx-5">--%>
<%--            <div class="card">--%>
<%--                <img src="files/Svg/givea.svg" class="card-img cardShadow">--%>
<%--                <div class="card-img-overlay ps-5">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-4">--%>
<%--                            <h6 class="card-title mb-0">NAME 1111</h6>--%>
<%--                            <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
<%--                            <h6 class="card-title mb-0">PRIZE</h6>--%>
<%--                            <h3 class="card-title">$<c:out value="${Giveaway.prize }"></c:out></h3>--%>
<%--                        </div>--%>
<%--                        <div class="col-4 d-flex">--%>
<%--                            <div class="col">--%>
<%--                                <h6 class="card-title mb-0">TOTAL</h6>--%>
<%--                                <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
<%--                            </div>--%>
<%--                            <div class="col">--%>
<%--                                <h6 class="card-title mb-0">YOURS</h6>--%>
<%--                                <h3 id="giveaway-${Giveaway.idGiveawayStruct}-user-entries" class="card-title">34</h3>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-4 ps-5 d-inline">--%>
<%--                            <h6 class="card-title mb-0">TIME</h6>--%>
<%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-title d-inline"></h3>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <script>--%>
<%--            var d = '${(Giveaway.endDate)}';--%>
<%--            var endDate = new Date(this.d);--%>
<%--            var usersCount ='${Giveaway.usersCount}';--%>
<%--            $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--                var $this = $(this).html(event.strftime(''--%>
<%--                    +'<p>'--%>
<%--                    + '<span>%D</span> Day%!d '--%>
<%--                    + '<span>%H</span> Hr '--%>
<%--                    + '<span>%M</span> Min '--%>
<%--                    + '<span>%S</span> Sec '--%>
<%--                    + '</p>'));--%>
<%--            });--%>
<%--            $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--        </script>--%>
<%--        <div class="row m-3"></div>--%>

<%--    </c:forEach>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>









<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title></title>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">--%>
<%--</head>--%>

<%--<body>--%>

<%--<nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--    <!-- <div class="container"> -->--%>
<%--    <img class="col-2 col-lg-1" src="../../files/Svg/Asset_1.svg" alt="Logo">--%>
<%--    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->--%>

<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navMenu">--%>

<%--        <ul class="navbar-nav ms-auto">--%>
<%--            <li class="nav-item">--%>
<%--                <a href="current-orders" class="nav-link">Current Giveaways</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="past-orders" class="nav-link">Past Giveaways</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="new-orders" class="nav-link">New Giveaway</a>--%>
<%--            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a href="settings" class="nav-link">Settings</a>--%>
<%--                            </li>--%>
<%--        </ul>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/logout">Log Out</a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--    <!-- </div> -->--%>

<%--</nav>--%>
<%--<div class="container">--%>



<%--    <div class="row m-5"></div>--%>

<%--    <div class="row mx-5">--%>
<%--        <div class="card">--%>
<%--            <img src="files/Svg/givea.svg" class="card-img cardShadow">--%>
<%--            <div class="card-img-overlay ps-5">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-4">--%>
<%--                        <h6 class="card-title mb-0">NAME</h6>--%>
<%--                        <h3 class="card-title"> Giveaway Name Here</h3>--%>
<%--                        <h6 class="card-title mb-0">PRICE</h6>--%>
<%--                        <h3 class="card-title"> $123</h3>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 d-flex">--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="card-title mb-0">TOTAL</h6>--%>
<%--                            <h3 class="card-title">1234</h3>--%>
<%--                        </div>--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="card-title mb-0">YOURS</h6>--%>
<%--                            <h3 class="card-title">34</h3>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 ps-5 d-inline">--%>
<%--                        <h6 class="card-title mb-0">TIME</h6>--%>
<%--                        <h3 class="card-title d-inline"> 23 </h3> days <h3 class="card-title d-inline"> 12 </h3> hours <h3 class="card-title d-inline"> 43 </h3> min <h3 class="card-title d-inline"> 53 </h3> sec--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="row m-3"></div>--%>

<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--            crossorigin="anonymous"></script>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>





















































<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url var="goToEntry" value="/goToEntry"/>
<%--<!DOCTYPE html>--%>

<%--<html lang="en">--%>
<%--    <head>--%>
<%--        <meta charset="UTF-8">--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--        <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--        <link rel="stylesheet" href="../../files/styles1a.css">--%>
<%--        <title>Yohavo | Current Giveaways</title>--%>
<%--        <script src="files/js/jquery.min.js"></script>--%>
<%--        <script src="files/js/popper.js"></script>--%>
<%--        <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--        <script src="files/js/dateFormat.min.js"></script>--%>
<%--        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--                crossorigin="anonymous"></script>--%>
<%--        <script src="files/app.js"></script>--%>
<%--    </head>--%>

<%--    <body class="background-index">--%>
<%--        <div class="background-index">--%>
<%--            <nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--                <img class="col-2 col-lg-1" src="files/Svg/logo-main.svg" alt="Logo">--%>
<%--                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--                    <span class="navbar-toggler-icon"></span>--%>
<%--                </button>--%>

<%--                <div class="collapse navbar-collapse" id="navMenu">--%>
<%--                    <ul class="navbar-nav ms-auto">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="current-orders" class="nav-link">Current Giveaways</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="past-orders" class="nav-link">Past Giveaways</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="new-orders" class="nav-link">New Giveaway</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a href="settings" class="nav-link">Settings</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--        <div class="container">--%>
<%--            <c:forEach items="${openGiveawaysList}" var = "Giveaway">--%>
<%--                <div class="card shadow-lg p-3 m-5 rounded blur">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="d-inline-flex">--%>
<%--                            <div class="float-left">--%>
<%--                                <h5 class="card-title"><c:out value="${Giveaway.name }"></c:out></h5>--%>
<%--                            </div>--%>
<%--                            <div id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-text text-end"></div>--%>
<%--                        </div>--%>
<%--                        <h6 class="card-subtitle mb-2 text-muted"><c:out value="${Giveaway.prize }"></c:out></h6>--%>
<%--                        <div id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="all-entries p-2 text-end"></div>--%>

<%--                        <div  class="d-none col-11 my-1 mx-auto p-2 border border-2 border-warning rounded">--%>
<%--                            <div class=" text-center"><a  href="${goToEntry}?giveawayId=${Giveaway.idGiveawayStruct}"> Enter!</a></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <script>--%>
<%--                    var d = '${(Giveaway.endDate)}';--%>
<%--                    var endDate = new Date(this.d);--%>
<%--                    var usersCount = 'All:' + '${Giveaway.usersCount}';--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--                        var $this = $(this).html(event.strftime(''--%>
<%--                            +'<p>'--%>
<%--                            + '<span>%D</span> Day%!d '--%>
<%--                            + '<span>%H</span> Hr '--%>
<%--                            + '<span>%M</span> Min '--%>
<%--                            + '<span>%S</span> Sec '--%>
<%--                            + '</p>'));--%>
<%--                    });--%>
<%--                    $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--                </script>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </body>--%>
<%--</html>--%>


<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title></title>--%>
<%--    <script src="files/js/jquery.min.js"></script>--%>
<%--    <script src="files/js/popper.js"></script>--%>
<%--    <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--    <script src="files/js/dateFormat.min.js"></script>--%>
<%--    <script src="files/app.js"></script>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">--%>
<%--</head>--%>

<%--<body>--%>
<%--<nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--    <!-- <div class="container"> -->--%>
<%--    <img class="col-2 col-lg-1" src="files/Svg/images/FinalLogo.png" alt="Logo">--%>
<%--    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->--%>

<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navMenu">--%>

<%--        <ul class="navbar-nav ms-auto">--%>
<%--            <li class="nav-item">--%>
<%--                <a href="current-orders" class="nav-link">Current Giveaways</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="past-orders" class="nav-link">Past Giveaways</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="new-orders" class="nav-link">New Giveaway</a>--%>
<%--            </li>--%>
<%--            &lt;%&ndash;                <li class="nav-item">&ndash;%&gt;--%>
<%--            &lt;%&ndash;                    <a href="settings" class="nav-link">Settings</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                </li>&ndash;%&gt;--%>
<%--        </ul>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/logout">Log Out</a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/login/oauth2/authorization/google">Login</a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--    <!-- </div> -->--%>

<%--</nav>--%>
<%--<div class="container">--%>


<%--<h2><strong>Current Giveaways</strong></h2>--%>

<%--<div class="row m-5"></div>--%>
<%--<c:forEach items="${openGiveawaysList}" var = "Giveaway">--%>
<%--    <div class="row mx-5">--%>
<%--        <div class="card">--%>
<%--            <img src="files/Svg/givea.svg" class="card-img cardShadow">--%>
<%--            <div class="card-img-overlay ps-5">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-4">--%>
<%--                        <h6 class="card-title mb-0">NAME</h6>--%>
<%--                        <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
<%--                        <h6 class="card-title mb-0">PRIZE</h6>--%>
<%--                        <h3 class="card-title">$<c:out value="${Giveaway.prize }"></c:out></h3>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 d-flex">--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="card-title mb-0">TOTAL</h6>--%>
<%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
<%--                        </div>--%>
<%--                        <div class="col">--%>
<%--                            <h6 class="d-none card-title mb-0">YOURS</h6>--%>
<%--                            <h3 class="d-none card-title">34</h3>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-4 ps-5 d-inline">--%>
<%--                        <h6 class="card-title mb-0">TIME</h6>--%>
<%--                        <h3 id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-title d-inline"></h3>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <script>--%>
<%--        var d = '${(Giveaway.endDate)}';--%>
<%--        var endDate = new Date(this.d);--%>
<%--        var usersCount ='${Giveaway.usersCount}';--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--            var $this = $(this).html(event.strftime(''--%>
<%--                +'<p>'--%>
<%--                + '<span>%D</span> Day%!d '--%>
<%--                + '<span>%H</span> Hr '--%>
<%--                + '<span>%M</span> Min '--%>
<%--                + '<span>%S</span> Sec '--%>
<%--                + '</p>'));--%>
<%--        });--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--    </script>--%>
<%--    <div class="row m-3"></div>--%>

<%--</c:forEach>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="files/js/jquery.min.js"></script>
    <script scr="files/js/popper.js"></script>
    <script src="files/js/jquery.countdown.min.js"></script>
    <script src="files/js/dateFormat.min.js"></script>
    <script src="files/app.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">
</head>

<body class="bg-image">

<nav class="navbar navbar-expand-lg px-3">
    <!-- <div class="container"> -->
    <a class="col-2 col-lg-1" href="index"><img src="../../files/Svg/Asset_1.svg" alt="Logo"></a>
    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMenu">

        <ul class="navbar-nav ms-auto">
            <%--            <li class="nav-item">--%>
            <%--                <a href="current-orders" class="nav-link"><h5>Current Giveaways</h5></a>--%>
            <%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="past-orders" class="nav-link"><h5>Past Giveaways</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="new-orders" class="nav-link"><h5>New Giveaway</h5></a>--%>
<%--            </li>--%>
            <li class="nav-item">
                <a href="settings" class="nav-link"><h5>Settings</h5></a>
            </li>
        </ul>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <div class="btn">
                <a href="/logout" class="text-decoration-none"><h5>Log Out</h5></a>
            </div>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <div class="btn">
                <a href="/login/oauth2/authorization/google" class="text-decoration-none"><h5>Login</h5></a>
            </div>
        </c:if>
    </div>


</nav>
<div class="main-current-orders">
    <div>
        <div class="sticky">
            <div class="ads-desktop"></div>
            <div class="ads-desktop"></div>
        </div>
    </div>
    <div class="main-tickets">
        <c:forEach items="${openGiveawaysList}" var="Giveaway">
            <div class="animated-ticket ticket">
                <div class="block-1">
                    <div class="ticket-content">
                        <div class="t-header">NAME</div>
                        <div class="t-body"><c:out value="${Giveaway.name }"></c:out></div>
                    </div>
                    <div class="ticket-content">
                        <div class="t-header">PRIZE</div>
                        <div class="t-body">$<c:out value="${Giveaway.prize }"></c:out></div>
                    </div>
                    <div class="ticket-content">
                        <div class="t-header">TOTAL</div>
                        <div id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="t-body"></div>
                    </div>
<%--                    <div class="ticket-content">--%>
<%--                    </div>--%>
<%--                    <div class="ticket-content">--%>
<%--                    </div>--%>
<%--                    <div class="ticket-content">--%>
<%--                        <div class="t-header">USER</div>--%>
<%--                        <div id="giveaway-${Giveaway.idGiveawayStruct}-user-entries" class="t-body"></div>--%>
<%--                    </div>--%>
                    </div>
                <div class="block-2">
                    <div class="t-header">TIME</div>
                    <div id="giveaway-${Giveaway.idGiveawayStruct}" class="t-body"></div>
                </div>
            </div>

            <div class="animated-ticket ads-mobile"></div>


            <%--        <div class="row mx-4 ">--%>
            <%--            <div class="card animated-ticket">--%>
            <%--                    &lt;%&ndash;                <img src="files/Svg/givea.svg" class="card-img cardShadow">&ndash;%&gt;--%>
            <%--                    &lt;%&ndash;                <div class="card-img-overlay ps-5">&ndash;%&gt;--%>
            <%--                <div class="row p-2">--%>
            <%--                    <div class="col-4">--%>
            <%--                        <h6 class="card-title mb-0">NAME </h6>--%>
            <%--                        <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
            <%--                        <h6 class="card-title mb-0">PRIZE</h6>--%>
            <%--                        <h3 class="card-title">$<c:out value="${Giveaway.prize }"></c:out></h3>--%>
            <%--                    </div>--%>
            <%--                    <div class="col-4 d-flex">--%>
            <%--                        <div class="col pe-3">--%>
            <%--                            <h6 class="card-title mb-0">TOTAL</h6>--%>
            <%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
            <%--                        </div>--%>
            <%--                            &lt;%&ndash;                            <div class="col pe-3">&ndash;%&gt;--%>
            <%--                            &lt;%&ndash;                                <h6 class="card-title mb-0">YOURS</h6>&ndash;%&gt;--%>
            <%--                            &lt;%&ndash;                                <h3 id="giveaway-${Giveaway.idGiveawayStruct}-user-entries" class="card-title">34</h3>&ndash;%&gt;--%>
            <%--                            &lt;%&ndash;                            </div>&ndash;%&gt;--%>
            <%--                    </div>--%>
            <%--                    <div class="time col-4 ps-4 ps-md-5 ps-lg-5">--%>
            <%--                        <h6 class="card-title mb-0 ps-lg-2">TIME</h6>--%>
            <%--                        <h3 id="giveaway-${Giveaway.idGiveawayStruct}" class="countdown card-title d-inline"></h3>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--        </div>--%>


            <script>
                var d = '${(Giveaway.endDate)}';
                var endDate = new Date(this.d.replace(/ /g,"T"));
                var usersCount = '${Giveaway.usersCount}';
                var userCount = '${Giveaway.getUserCount(user.id)}';
                $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {
                    var $this = $(this).html(event.strftime(''
                        + '<p>'
                        + '<span>%D</span> Day%!d '
                        + '<span>%H</span> Hr '
                        + '<span>%M</span> Min '
                        + '<span>%S</span> Sec '
                        + '</p>'));
                });
                $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);
                $('#giveaway-${Giveaway.idGiveawayStruct}-user-entries').text(userCount);
            </script>
            <div class="row m-3"></div>

        </c:forEach>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
    </div>
    <div>
        <div class="sticky">
            <div class="ads-desktop"></div>
            <div class="ads-desktop"></div>
        </div>
    </div>
</div>
<script>
    let animated = document.getElementsByClassName('animated-ticket')
    let time = 0.5
    for (let i = 0; i < animated.length; i++) {
        time += 0.1
        animated[i].style.animationDuration = time + 's'
    }
</script>
</body>
</html>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>--%>

<%--<!DOCTYPE html>--%>

<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title></title>--%>
<%--    <script src="files/js/jquery.min.js"></script>--%>
<%--    <script src="files/js/popper.js"></script>--%>
<%--    <script src="files/js/jquery.countdown.min.js"></script>--%>
<%--    <script src="files/js/dateFormat.min.js"></script>--%>
<%--    <script src="files/app.js"></script>--%>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@600&display=swap" rel="stylesheet">--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">--%>
<%--</head>--%>
<%--<body class="bg-image">--%>
<%--<nav class="navbar navbar-expand-lg px-3">--%>
<%--    <!-- <div class="container"> -->--%>
<%--    <a class="col-2 col-lg-1" href="current-orders"><img src="../../files/Svg/Asset_1.svg" alt="Logo"></a>--%>
<%--    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->--%>

<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navMenu">--%>

<%--        <ul class="navbar-nav ms-auto">--%>
<%--            <li class="nav-item">--%>
<%--                <a href="current-orders" class="nav-link"><h5>Current Giveaways</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="past-orders" class="nav-link"><h5>Past Giveaways</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="new-orders" class="nav-link"><h5>New Giveaway</h5></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a href="settings" class="nav-link"><h5>Settings</h5></a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name != null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/logout" class="text-decoration-none"><h5>Log Out</h5></a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--        <c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--            <div class="btn">--%>
<%--                <a href="/login/oauth2/authorization/google" class="text-decoration-none"><h5>Login</h5></a>--%>
<%--            </div>--%>
<%--        </c:if>--%>
<%--    </div>--%>


<%--</nav>--%>
<%--<div class="container">--%>
<%--<c:forEach items="${allGiveawaysList}" var = "Giveaway">--%>
<%--    <div class="row m-2 p-2">--%>
<%--        <div class="card m-1 p-1">--%>
<%--            <div class="row p-2 p-md-4 p-lg-4">--%>
<%--                <div class="col-4">--%>
<%--                    <h6 class="card-title mb-0">NAME</h6>--%>
<%--                    <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
<%--                    <h6 class="card-title mb-0">PRICE</h6>--%>
<%--                    <h3 class="crd-title"><c:out value="${Giveaway.prize }"></c:out></h3>--%>
<%--                </div>--%>
<%--                <div class="col-4 -flex">--%>
<%--                    <div class="row">--%>

<%--                        <div class="col pe-3">--%>
<%--                            <h6 class="card-title mb-0">TOTAL</h6>--%>
<%--                            <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="time col-4 ps-4 ps-md-5 ps-lg-5">--%>
<%--                    <h6 class="card-title mb-0 ps-2">TIME</h6>--%>
<%--                    <div id="giveaway-${Giveaway.idGiveawayStruct}" class="d-block ps-1"></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <script>--%>
<%--        var d = '${(Giveaway.endDate)}';--%>
<%--        var endDate = new Date(this.d);--%>
<%--        var usersCount = '${Giveaway.usersCount}';--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}').countdown(endDate).on('update.countdown', function (event) {--%>
<%--            var $this = $(this).html(event.strftime(''--%>
<%--                + '<div class="d-inline text-nowrap ps-1"> <h3 class="card-title d-inline">%D <span>Day%!d</span></h3></div> '--%>
<%--                + '<div class="d-inline text-nowrap ps-1"> <h3 class="card-title d-inline">%H <span>Hr</span></h3></div> '--%>
<%--                + '<div class="d-inline text-nowrap ps-1"> <h3 class="card-title d-inline">%M <span>Min</span></h3></div> '--%>
<%--                + '<div class="d-inline text-nowrap ps-1"> <h3 class="card-title d-inline">%S <span>Sec</span></h3></div> '--%>
<%--            ));--%>
<%--        });--%>
<%--        $('#giveaway-${Giveaway.idGiveawayStruct}-all-entries').text(usersCount);--%>
<%--    </script>--%>
<%--</c:forEach>--%>
<%--</div>--%>
<%--</body>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"--%>
<%--        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--</html>--%>