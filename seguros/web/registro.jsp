
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Registro</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <form action="">
                    <h1><span class="number">1</span>Registro </h1>

                    <fieldset>

                        <legend>Registro de usuario</legend>

                        <label for="name">Nombre:</label>
                        <input type="text" id="nombre" name="nombre">

                        <label for="email">Email:</label>
                        <input type="email" id="mail" name="mail">

                        <label for="cc">Cedula:</label>
                        <input type="number" id="cc" name="cc">

                        <label for="dire">Direccion:</label>
                        <input type="text" id="dire" name="dire">

                        <label for="tel">Telefono:</label>
                        <input type="number" id="tel" name="tel">

                        <label for="civil">Estado civil:</label>
                        <input type="text" id="civil" name="civil">

                        <label for="sexo">sexo:</label>
                        <input type="text" id="sexo" name="sexo">

                        <label for="edad">Edad:</label>
                        <input type="number" id="edad" name="edad">

                    </fieldset>


                    <button type="submit" name="btnregistrar" >Registrar</button>
                    <button> <a href="index.html">Regresar</a></button>
                </form>



            </div>
        </div>

        <%
            if (request.getParameter("btnregistrar") != null) {

                String nombre = request.getParameter("nombre");
                String mail = request.getParameter("mail");
                String cc = request.getParameter("cc");
                String sexo = request.getParameter("sexo");
                String dire = request.getParameter("dire");
                String civil = request.getParameter("civil");
                String edad = request.getParameter("edad");

                Connection cnx = null;
                ResultSet rs = null;
                Statement sta = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");

                    sta = cnx.createStatement();

                    sta.executeUpdate("insert into usuarios values('" + cc + "','" + nombre + "','" + mail + "','" + dire + "','" + civil + "','" + sexo + "','" + edad + "')");
                    request.getRequestDispatcher("index.html").forward(request, response);
                    System.out.println("Registro completo, ahora puedes agregar polizas " );
                } catch (Exception e) {
                    out.print(e + "");
                }

            }
        %>
    </body>
</html>
