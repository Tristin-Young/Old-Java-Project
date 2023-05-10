<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<!-- needed for HTML 5-->--%>
<%--<!DOCTYPE html>--%>
<%--<!-- Why is this not inside the head-->--%>
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
<%--<p>New Orders</p>--%>
<%--<form:form action="/giveawaystruct" method="POST" modelAttribute="giveawaystruct">--%>

<%--    <form:label path="name">Name:</form:label>--%>
<%--    <form:input path="name"/><br/>--%>

<%--    <form:label path="startDate">Start-date:</form:label>--%>
<%--    <form:input type="date" path="startDate"/><br/>--%>

<%--    <form:label path="endDate">End-Date:</form:label>--%>
<%--    <form:input type="date" path="endDate"/><br/>--%>

<%--    <form:label path="prize">Prize:</form:label>--%>
<%--    <form:input path="prize"/><br/>--%>


<%--    <input type="submit" value="Create"/>--%>
<%--</form:form>--%>
<%--<script src="app.js"></script>--%>


<%--</body>--%>

<%--</html>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">
    <link rel="stylesheet" type="text/css" href="../../files/styles1a.css">
</head>

<body class="bg-image">
<div>
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
                <li class="nav-item">
                    <a href="past-orders" class="nav-link"><h5>Past Giveaways</h5></a>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a href="new-orders" class="nav-link"><h5>New Giveaway</h5></a>--%>
<%--                </li>--%>
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
    <div class="container my-5">
        <h2 style="color:gold"><strong>New Giveaway</strong></h2>
        <div class="my-5 p-3 rounded border border-2 border-dark blur shadow">
            <form:form action="/giveawaystruct" method="POST" modelAttribute="giveawaystruct">

                <div class="form-group">
                        <%--                    <form:label path="name" for="giveawayName"><strong>Giveaway Name</strong></form:label>--%>
                        <%--                    <form:input path="name" type="text" id="giveawayName" class="form-control" placeholder="Super Awesome Giveaway">--%>
                    <form:label path="name"><h4>Name:</h4></form:label>
                    <form:input class="form-control" path="name"/><br/>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                            <%--                        <form:label path="startDate" for="startDate"><strong>Start Date</strong></form:label>--%>
                            <%--                        <form:input path="startDate" type="date" id="startDate" class="form-control">--%>
                        <form:label path="startDate"><h4>Start-date:</h4></form:label>
                        <form:input class="form-control" type="date" path="startDate"/><br/>
                    </div>
                    <div class="form-group col-md-6">
                            <%--                        <form:label path="endDate" for="endDate"><strong>End Date</strong></form:label>--%>
                            <%--                        <form:input path="endDate" type="date" id="endDate" class="form-control">--%>
                        <form:label path="endDate"><h4>End-Date:</h4></form:label>
                        <form:input class="form-control" type="date" path="endDate"/><br/>
                    </div>
                </div>
                <div class="form-group">
                        <%--                    <form:label path="prize" for="prizeAmt"><strong>Prize Amount</strong></form:label>--%>
                        <%--                    <form:input path="prize" type="text" id="prizeAmt" class="form-control" placeholder="$$$">--%>
                    <form:label path="prize"><h4>Prize:</h4></form:label>
                    <form:input class="form-control" path="prize"/><br/>
                </div>
                <input type="submit" class="btn btn-warning my-2" value="Create"/>

            </form:form>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="app.js"></script>
</html>

