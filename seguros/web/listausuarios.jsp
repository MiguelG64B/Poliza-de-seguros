
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Usuarios</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <form action="" method="">
                    <h1><span class="number">P</span>Usuarios Registrados</h1>
                    <table border="1" width="600">
                        <tr bgcolor="skyblue">
                            <th>CC</th><th>Nombre</th>
                            <th>Mail</th><th>Direccion</th>
                            <th>civil</th><th>Sexo</th>
                            <th>Edad</th>
                        </tr>
                        <%
                            String eda;
                            Integer y;
                            Connection cnx = null;
                            ResultSet rs = null;
                            Statement sta = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                cnx = DriverManager.getConnection("jdbc:mysql://localhost/parcial?user=root&password=");

                                sta = cnx.createStatement();
                                rs = sta.executeQuery("select * from usuarios");

                                while (rs.next()) {
                                   
                                    eda = rs.getString(7);
                        %>
                        <tr>
                            <th><%=rs.getString(1)%></th>
                            <th><%=rs.getString(2)%></th>
                            <th><%=rs.getString(3)%></th>
                            <th><%=rs.getString(4)%></th>
                            <th><%=rs.getString(5)%></th>
                            <th><%=rs.getString(6)%></th>
                            <th><%=rs.getString(7)%></th>
                        </tr>

                        <%
                                }
                                sta.close();
                                rs.close();
                                cnx.close();
                            } catch (Exception e) {

                            }


                        %>
                    </table>
                    <button> <a href="index.html">Regresar</a></button>
                </form>
            </div>
        </div>
    </body>
</html>
