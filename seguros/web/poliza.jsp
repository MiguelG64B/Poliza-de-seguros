
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
        <title>Registrar poliza</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <form action="">
                    <h1><span class="number">2</span>Registro de poliza simple</h1>

                    <fieldset>

                        <legend>Registro de poliza simple</legend>

                        <label>Tipo de vehiculo:</label>
                        <input type="text" id="tipovh" name="tipovh">

                        <label>Modelo:</label>
                        <input type="text" id="modelo" name="modelo">

                        <label>Marca:</label>
                        <input type="text" id="marca" name="marca">

                        <label>Año:</label>
                        <input type="text" id="year" name="year">

                        <label>Placa:</label>
                        <input type="text" id="placa" name="placa">

                        <label>Serial:</label>
                        <input type="text" id="serial" name="serial">

                        <label>Valor comercial:</label>
                        <input type="text" id="valor" name="valor">

                        <label>CC dueño:</label>
                        <input type="text" id="CC" name="CC">

                    </fieldset>

                    <button type="submit" name="btnregistrarpoliza">Registrar</button>
                    <button> <a href="index.html">Regresar</a></button>
                </form>
            </div>
        </div>


        <%
            if (request.getParameter("btnregistrarpoliza") != null) {

                String tipovh = request.getParameter("tipovh");
                String modelo = request.getParameter("modelo");
                String marca = request.getParameter("marca");
                String year = request.getParameter("year");
                String placa = request.getParameter("placa");
                String serial = request.getParameter("serial");
                String CC = request.getParameter("CC");
                String valor = request.getParameter("valor");

                Integer V = Integer.parseInt(valor);

                Integer D = V * 01 / 100;

                Integer costo = V + D;

                Connection cnx = null;
                ResultSet rs = null;
                Statement sta = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");

                    sta = cnx.createStatement();

                    sta.executeUpdate("insert into poliza values('" + CC + "','" + tipovh + "','" + modelo + "','" + marca + "','" + year + "','" + placa + "','" + serial + "','" + valor + "','" + costo + "')");
                    
                    request.setAttribute("costo", costo);
                    request.setAttribute("cc", CC);
                    
                    RequestDispatcher rd = request.getRequestDispatcher("montoapagar.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    out.print(e + "");
                }

            }
        %>
    </body>
</html>
