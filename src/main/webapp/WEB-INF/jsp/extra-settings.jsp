<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- needed for HTML 5-->
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

<%--<a href="extra-settings"><img  src="files/images/logo-white.png" alt="logo" class="logo desktop" /></a>--%>
<%--<a href="extra-settings"><img  src="files/images/image1.png" alt="logo" class="logo mobile" /></a>--%>

<%--<h1>Settings</h1>--%>
<%--<script src="app.js"></script>--%>

<%--<h1>Hello! Everyone needs to do a few things before they can enter!</h1>--%>

<%--<form:form action="/extraSettings" method="POST" modelAttribute="user">--%>

<%--    <label>Name:</label>--%>
<%--    <form:input path="name"/><br/>--%>

<%--    <label>Age:</label>--%>
<%--    <form:input  path="age"/><br/>--%>

<%--    <label>Gender:</label>--%>
<%--    <form:radiobutton path="gender" value="M" name="M"/>M--%>
<%--    <form:radiobutton path="gender" value="F" name="F"/>F--%>
<%--    <form:radiobutton path="gender" value="O" name="O"/>O<br/>--%>
<%--    <label>Zip-Code:</label>--%>
<%--    <form:input path="zip"/><br/>--%>

<%--    <label>Terms and Conditions</label>>--%>

<%--    <form:radiobutton path="tc" value="true" name="true"/>I have read and accept the <a href="termsandconditions" class="">Terms and Conditions</a><br/>--%>

<%--    <br/><input type="submit" value="I'm all set!"  />--%>

<%--</form:form>--%>

<%--</body>--%>

<%--</html>--%>

<!DOCTYPE html>
<html lang="en">
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../files/indexstyle.css">
    <link rel="stylesheet" type="text/css" href="../../files/styles1a.css">
</head>
<body class="bg-image">
<div>

    <div class="container my-5">
        <h1 class="text-center" style="color:gold">Hello! Everyone needs to do a few things before they can enter!</h1>
        <div class="my-5 p-3 rounded border border-2 border-dark blur shadow">
            <form:form action="/extraSettings" method="POST" modelAttribute="user">

                <div class="form-group col-lg-6">
                    <label path="name" for="fullName"><strong>Full Name</strong></label>
                    <form:input path="name"/>
                </div>
                <div class="form-group col-lg-6">
                    <label path="age" for="userAge"><strong>Age</strong></label>
                    <form:input  path="age"/>
                </div>
                <div class="row py-3">
                    <legend class="col-form-label"><strong>Gender</strong></legend>
                    <div class="col">
                        <div class="form-check-inline">
                            <form:radiobutton path="gender" value="M" name="M"/>
                            <label class="form-check-label" for="maleradio">
                                Male
                            </label>
                        </div>
                        <div class="form-check-inline ">
                            <form:radiobutton path="gender" value="F" name="F"/>
                            <label class="form-check-label" for="femaleradio">
                                Female
                            </label>
                        </div>
                        <div class="form-check-inline ">
                            <form:radiobutton path="gender" value="O" name="O"/>
                            <label class="form-check-label" for="otherradio">
                                Other/Prefer to not specify
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group col-lg-6">
                    <label path="zip" for="userzip"><strong>Zip Code</strong></label>
                    <form:input path="zip"/>
                </div>


                <div class="col py-3">
                    <div class="form-check-inline">
                        <form:radiobutton path="tc" value="true" name="true"/>I have read and accept the <a href="termsandconditions" class="">Terms and Conditions</a>
                    </div>
                </div>
                <br/><input type="submit" value="I'm all set!"  />

            </form:form>
        </div>
    </div>

</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="app.js"></script>
</html>
