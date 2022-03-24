
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
        <title>Monto a pagar</title>
    </head>
    <body>

        <div class="row">
            <div class="col-md-12">
                <h1><span class="number">%</span>Costo de la poliza inicial (%10)</h1>
                <h1><%out.print(request.getAttribute("costo"));%></h1>
                <h1><span class="number">CC</span>Cedula del dueño</h1>
                <h1><%out.print(request.getAttribute("cc"));%></h1>
                <h1><span class="number">$</span>Costo por edad</h1>
                
                
                    <button> <a href="index.html">Regresar</a></button>
                <%
                    String eda;
                    Integer costo = Integer.parseInt((String)request.getAttribute("costo"));
                   
                  
                    Connection cnx = null;
                    ResultSet rs = null;
                    Statement sta = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");

                        sta = cnx.createStatement();

                        //rs = sta.executeQuery("select * from polizas p INNER JOIN usuarios u ON  u.edad = p.cc");

                        while (rs.next()) {
                %>

                <tr>    
              
                    <th><%=costo%></th>

                </tr>


                <%
                        }
                        sta.close();
                        rs.close();
                        cnx.close();
                    } catch (Exception e) {

                    }


                %>

            </div>
        </div>
    </body>
</html>
