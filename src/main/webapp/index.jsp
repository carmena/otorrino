
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
                padding-top: 60px;
                padding-bottom: 40px;
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

        <div class="container-fluid">
            <div class="row-fluid">

                <%@include file="/public/design/menuAdm1.jsp" %>



                <div class="span9">
                    <div class="row">
                        <a class=" btn btn-primary pull-right" href=""> Nuevo </a>
                        <h1> Listado </h1>
                    </div>


                    <table class="table table-striped table-hover"> 
                        <thead>
                        <th> Descripción </th>
                        <th> Dirección </th>
                        <th> Teléfono </th>
                        <th></th>
                        </thead>
                        <tbody>

                            <tr>
                                <td>  </td>
                                <td>  </td>
                                <td>  </td>
                                <td> 
                                    <div class="btn-group">
                                        <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                            <i class="icon-cog"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="">
                                                    Editar</a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    Eliminar</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>


                </div>

            </div>
        </div>



        <%@include file="/public/design/footer.jsp" %>
    </body>
</html>




