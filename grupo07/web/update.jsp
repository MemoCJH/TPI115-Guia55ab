<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <sql:setDataSource var = "fuenteDatos" driver = "org.mariadb.jdbc.Driver"
                           url = "jdbc:mariadb://localhost:3308/grupo07"
                           user = "root"  password = ""/>

        <sql:update dataSource="${fuenteDatos}" var="count">
            UPDATE libro SET isbn = ?,titulo = ?,autor = ?, editorial=?
            WHERE id='${param.id}'
            <sql:param value="${param.isbn}"/>
            <sql:param value="${param.titulo}"/>
            <sql:param value="${param.autor}"/>  
            <sql:param value="${param.editorial}"/> 
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
            <a href="index.jsp"> <- Index </a>          
        </c:if>
    </body>
</html>
