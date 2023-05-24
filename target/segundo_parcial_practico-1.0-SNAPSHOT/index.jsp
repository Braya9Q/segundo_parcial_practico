<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>)request.getAttribute("productos");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#D2FFFC">        
        <center>
            <table border="1" cellspacing="0" cellpadding="20">
                <tr>
                    <th>
                        <h3>SEGUNDO PARCIAL EMERGENTES II</h3>
                        <h3>Nombre: Brayan Quispe Alanoca</h3>
                        <h3>Carnet: 8427958</h3>
                    </th>
                </tr>
            </table>
        </center>    
    <center> <h1>Gestión de productos</h1>              
        <a href="Inicio?action=add">Nuevo produto</a>        
        <table border="1">            
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar ??'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </center>
    </body>
</html>
