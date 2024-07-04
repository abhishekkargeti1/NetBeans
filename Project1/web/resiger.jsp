<%-- 
    Document   : resiger
    Created on : 19-Jun-2024, 5:32:43 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body style="background: url(image/images.png); background-size: cover; background-attachment: fixed">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 class="center-align">Register here !!</h3>
                            <h5 id="msg" class="center-align"></h5>
                            <div class="form center-align">
                                <!--Creating form-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" placeholder="Enter your User Name" name="user_name">
                                    <input type="email" placeholder="Enter your Email" name="user_email">
                                    <input type="password" placeholder="Enter your Password" name="user_password">
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input name="fileUpload"type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>


                                    <button type="submit" class="btn">Submit</button>



                                </form>
                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display:none;">
                                <div class="loader">
                                    <div class="preloader-wrapper big active">
                                        <div class="spinner-layer spinner-blue-only">
                                            <div class="circle-clipper left">
                                                <div class="circle"></div>
                                            </div>
                                            <div class="gap-patch">
                                                <div class="circle"></div>
                                            </div>
                                            <div class="circle-clipper right">
                                                <div class="circle"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h5>Please Wait...</h5>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                console.log("Page is ready");
                $("#myform").on('submit', function (event) {
                    event.preventDefault();
//                    var f = $(this).serialize();
                     let f = new FormData(this);
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();
                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("SUCCESS .............");
                            $(".loader").hide();
                            $(".form").show();
                            if (data.trim() === 'Done') {
                                $("#msg").html("Successfully Submitted");
                                $("#msg").addClass("green-text");
                            } else {
                                $("#msg").html("Something went wrong1");
                                $("#msg").addClass("red-text");

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("ERROR .............");
                            $(".loader").hide();
                            $(".form").show();
                            $("#msg").html("Something went wrong2");
                            $("#msg").addClass("red-text");
                        },
                        processData:false,
                        contentType:false
                        
                    });
                });
            });
        </script>
    </body>
</html>
