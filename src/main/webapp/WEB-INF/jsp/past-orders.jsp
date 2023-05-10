<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>--%>
<%--<c:url var="pickWinner" value="/pickWinner"/>--%>
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
<%--    <script src="files/app.js"></script>--%>

<%--</head>--%>

<%--<body>--%>

<%--<a href="/"><img  src="files/images/logo-white.png" alt="logo" class="logo desktop" /></a>--%>
<%--<a href="/"><img  src="files/images/image1.png" alt="logo" class="logo mobile" /></a>--%>
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

<%--        <a href="settings"><img src="files/Svg/cog.svg" alt="settings" class="cog"></a>--%>
<%--    </div>--%>
<%--    <div class="burger">--%>
<%--        <div class="line1"></div>--%>
<%--        <div class="line2"></div>--%>
<%--        <div class="line3"></div>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--<a href="${pickWinner}"> Pick winner</a><br/><br/><br/>--%>
<%--<table id="td1">--%>
<%--    <tr>--%>
<%--        <th>Name</th>--%>
<%--        <th>Prize</th>--%>
<%--        <th>Start Date</th>--%>
<%--        <th>End Date</th>--%>
<%--        <th>Time Remaining</th>--%>
<%--        <th>Entries</th>--%>
<%--        <th>Winner</th>--%>

<%--    </tr>--%>
<%--    <tr>--%>
<%--        <c:forEach items="${closedGiveawaysList}"--%>
<%--                   var = "Giveaway"--%>
<%--        >--%>
<%--        <td><c:out value="${Giveaway.name }"></c:out>--%>
<%--        </td>--%>
<%--        <td><c:out value="${Giveaway.prize }"></c:out>--%>
<%--        </td>--%>
<%--        <td><c:out value="${Giveaway.startDate }"></c:out>--%>
<%--        </td>--%>
<%--        <td><c:out value="${Giveaway.endDate }"></c:out>--%>
<%--        </td>--%>
<%--            <td id="ct6${Giveaway.idGiveawayStruct}"><SCRIPT type="text/javascript">display_lifetime('${Giveaway.endDate}','${Giveaway.idGiveawayStruct}');</SCRIPT>--%>


<%--                    &lt;%&ndash;        <span id='ct6${Giveaway.idGiveawayStruct}' style="background-color: #FFFF00"></span>&ndash;%&gt;--%>
<%--            </td>--%>
<%--        <td><c:out value="${Giveaway.users.size()}"></c:out>--%>
<%--        </td><br/>--%>
<%--            <td><c:out value="${Giveaway.winner.username}"></c:out>--%>
<%--            </td>--%>
<%--    </tr>--%>
<%--    </c:forEach>--%>


<%--</table>--%>


<%--</body>--%>

<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url var="pickWinner" value="/pickWinner"/>


<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="stylesheet" href="../../files/bootstrap.css">--%>
<%--    <link rel="stylesheet" href="../../files/styles1a.css">--%>
<%--    <title>YoHaVo | Past Giveaways</title>--%>


<%--</head>--%>
<%--<body class="background-index">--%>
<%--<div>--%>
<%--    <nav class="navbar navbar-expand-lg bg-secondary navbar-dark px-3">--%>
<%--        <!-- <div class="container"> -->--%>
<%--        <img class="col-2 col-lg-1" src="files/Svg/logo-main.svg" alt="Logo">--%>
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
<%--                <li class="nav-item">--%>
<%--                    <a href="settings" class="nav-link">Settings</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <!-- </div> -->--%>

<%--    </nav>--%>
<%--    <div class="container my-5">--%>
<%--        <h2>Past Giveaways</h2>--%>
<%--        <h1><a href="${pickWinner}"> Pick winner</a></h1>--%>

<%--        <c:forEach items="${closedGiveawaysList}"--%>
<%--                   var = "Giveaway"--%>
<%--        >--%>
<%--            <div class="row blur border border-2 border-dark rounded">--%>
<%--                <div class="col-6">--%>
<%--                    <div class="p-2 ">Name:</div>--%>
<%--                </div>--%>


<%--                <div class="col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.name }"></c:out></div>--%>
<%--                </div>--%>

<%--                <div class="col-md-3 col-6">--%>
<%--                    <div class="p-2 ">Start Date:</div>--%>
<%--                </div>--%>

<%--                <div class="col-md-3 col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.startDate }"></c:out></div>--%>
<%--                </div>--%>

<%--                <div class="col-md-3 col-6">--%>
<%--                    <div class="p-2 ">End Date:</div>--%>
<%--                </div>--%>

<%--                <div class="col-md-3 col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.endDate }"></c:out></div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 ">Prize:</div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.prize }"></c:out></div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 ">Entries:</div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.users.size()}"></c:out></div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 ">Winner:</div>--%>
<%--                </div>--%>

<%--                <div class="col-md-2 col-6">--%>
<%--                    <div class="p-2 text-end"><c:out value="${Giveaway.winner.username}"></c:out></div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>

<%--    </div>--%>
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
    <script src="files/js/jquery.min.js"></script>
    <script src="files/js/popper.js"></script>
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
    <a class="col-2 col-lg-1" href="current-orders"><img src="../../files/Svg/Asset_1.svg" alt="Logo"></a>
    <!-- <a href="#" class="navbar-brand">YoHaVo</a> -->

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMenu">

        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a href="current-orders" class="nav-link"><h5>Current Giveaways</h5></a>
            </li>
            <%--            <li class="nav-item">--%>
            <%--                <a href="past-orders" class="nav-link"><h5>Past Giveaways</h5></a>--%>
            <%--            </li>--%>
            <li class="nav-item">
                <a href="new-orders" class="nav-link"><h5>New Giveaway</h5></a>
            </li>
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
    <!-- </div> -->

</nav>
<div>


    <h1 class="card-title"><a class="text-decoration-none" href="${pickWinner}"> Pick winner</a></h1>
    <div class="main-current-orders">
        <div>
            <div class="sticky">
                <div class="ads-desktop"></div>
                <div class="ads-desktop"></div>
            </div>
        </div>
        <c:forEach items="${closedGiveawaysList}" var="Giveaway">
        <div class="main-past-tickets">
            <div class="animated-ticket ticket">
                <div class="past-block-1">
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
                    <div class="ticket-content">
                        <div class="t-header">START</div>
                        <div class="t-body"><c:out value="${Giveaway.startDate }"></c:out></div>
                    </div>
                    <div class="ticket-content">
                        <div class="t-header">END</div>
                        <div class="t-body"><c:out value="${Giveaway.endDate }"></c:out></div>
                    </div>
                </div>
                <div class="past-block-2">
                    <div class="t-header">WINNER</div>
                    <div class="t-body"><c:out value="${Giveaway.winner.username}"></c:out></div>
                </div>
            </div>
            <div class="animated-ticket ads-mobile"></div>
        </div>
        <div>
            <div class="sticky">
                <div class="ads-desktop"></div>
                <div class="ads-desktop"></div>
            </div>
        </div>
    </div>


        <%--        <div class="animated-ticket">--%>
        <%--            <div class="card animated-ticket">--%>
        <%--&lt;%&ndash;                <img src="files/Svg/givea.svg" class="card-img cardShadow">&ndash;%&gt;--%>
        <%--                <div class="card-img-overlay ps-5">--%>
        <%--                    <div class="row p-2">--%>
        <%--                        <div class="col-4">--%>
        <%--                            <h6 class="card-title mb-0 header-size">NAME</h6>--%>
        <%--                            <h3 class="card-title"><c:out value="${Giveaway.name }"></c:out></h3>--%>
        <%--                            <h6 class="card-title mb-0 header-size">PRIZE</h6>--%>
        <%--                            <h3 class="card-title">$<c:out value="${Giveaway.prize }"></c:out></h3>--%>
        <%--                        </div>--%>
        <%--                        <div class="col-4 d-flex">--%>
        <%--                            <div class="col pe-3">--%>
        <%--                                <h6 class="card-title mb-0 header-size">TOTAL</h6>--%>
        <%--                                <h3 id="giveaway-${Giveaway.idGiveawayStruct}-all-entries" class="card-title"></h3>--%>
        <%--                            </div>--%>
        <%--                            <div class="col">--%>
        <%--                                <h6 class="card-title mb-0 header-size">START</h6>--%>
        <%--                                <h3 class="card-title"><c:out value="${Giveaway.startDate }"></c:out></h3>--%>
        <%--                            </div>--%>
        <%--                            <div class="col">--%>
        <%--                                <h6 class="card-title mb-0 header-size">END</h6>--%>
        <%--                                <h3 class="card-title"><c:out value="${Giveaway.endDate }"></c:out></h3>--%>
        <%--                            </div>--%>
        <%--                        </div>--%>
        <%--                        <div class="col-4 ps-5 d-inline">--%>
        <%--                            <h6 class="card-title mb-0 header-size">WINNER</h6>--%>
        <%--                            <h3 class="card-title d-inline"><c:out value="${Giveaway.winner.username}"></c:out></h3>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>


    <script>
        var d = '${(Giveaway.endDate)}';
        var endDate = new Date(this.d);
        var usersCount = '${Giveaway.usersCount}';
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
    </script>
    <div class="row m-3"></div>

    </c:forEach>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script>
        let animated = document.getElementsByClassName('animated-ticket')
        let time = 0.5
        for (let i = 0; i < animated.length; i++) {
            time += 0.1
            animated[i].style.animationDuration = time + 's'
        }
    </script>
</div>
</body>
</html>