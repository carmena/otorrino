<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Locales </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>

            !function($) {

                // Le left-menu sign
                /* for older jquery version
                 $('#left ul.nav li.parent > a > span.sign').click(function () {
                 $(this).find('i:first').toggleClass("icon-minus");
                 }); */

                $(document).on("click", "#left ul.nav li.parent > a > span.sign", function() {
                    $(this).find('i:first').toggleClass("icon-minus");
                });

                // Open Le current menu
                $("#left ul.nav li.parent.active > a > span.sign").find('i:first').addClass("icon-minus");
                $("#left ul.nav li.current").parents('ul.children').addClass("in");

            }(window.jQuery);
        </script>
        <style type="text/css">
            body {
                padding-top: 80px;
                padding-bottom: 80px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }

            @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                }
            }
        </style>
        

        <%@include file="/public/design/header.jsp" %>

    </head>

    <body>

        <%@include file="/public/design/menuGeneral.jsp" %>
        <div class="span3" >
            <%@include file="/public/design/menuAdm1.jsp" %>

            <div class="span9">
                <div class="row">
                    <a class=" btn btn-primary pull-right" href=""> Nuevo </a>
                    <h1> Locales </h1>
                </div>



            </div>


        </div>

        <%@include file="/public/design/footer.jsp" %>
    </body>
</html>
