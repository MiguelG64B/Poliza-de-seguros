<%-- 
    Document   : polizatotal
    Created on : 24/03/2022, 12:00:22 AM
    Author     : user
--%>

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
        <title>Poliza total</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <form  method="post">
                    <h1><span class="number">+</span>Registro de poliza todo riezgo</h1>

                    <fieldset>
                        <form action="index.html" method="post">
                            <legend>Registro de objeto a poliza todo riezgo</legend>

                            <label for="nombre">Nombre del objeto:</label>
                            <input type="text" id="nombre" name="nombre">

                            <label for="cc">CC dueño:</label>
                            <input type="text" id="cc" name="cc">

                            <label for="serial">Serial:</label>
                            <input type="text" id="serial" name="serial">

                            <label for="valor">Valor:</label>
                            <input type="text" id="valor" name="valor">

                            </fieldset>


                            <button type="submit" name="btnregistrar">Calcular costo</button>
                            <button> <a href="index.html">Regresar</a></button>

                        </form>
                        </div>
                        </div>

                        <%
                            if (request.getParameter("btnregistrar") != null) {

                                String nombre = request.getParameter("nombre");
                                String serial = request.getParameter("serial");
                                String cc = request.getParameter("cc");
                                String valor = request.getParameter("valor");

                                Integer V = Integer.parseInt(valor);

                                Integer D = V * 10 / 100;
                                Integer costo = V + D;

                                Connection cnx = null;
                                ResultSet rs = null;
                                Statement sta = null;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");

                                    sta = cnx.createStatement();

                                    sta.executeUpdate("insert into polizatotal values('" + nombre + "','" + serial + "','" + cc + "','" + valor + "','" + costo + "')");
                                    request.getRequestDispatcher("montoapagar.jsp").forward(request, response);
                                    
                                     System.out.println("Registro completo, el costo total es de "+ costo +"puedes insertar mas productos" );

                                } catch (Exception e) {
                                    out.print(e + "");
                                }

                            }
                        %>
                        </body>
                        </html>
