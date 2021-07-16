<%-- 
    Document   : welcome
    Created on : Jul 15, 2021, 3:06:24 PM
    Author     : Lenovo
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="folder.Etudiant"%>
<%@page import="folder.Connex"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> TDSI LOG </title>
   
    <link href="./assets/css/bootstrap.css" rel="stylesheet" />
    
    <link href="./assets/css/font-awesome.css" rel="stylesheet" />
    
    <link href="./assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
   
    <link href="./assets/css/custom.css" rel="stylesheet" />
    
    
    <link rel="stylesheet" type="text/css" href="./assets/css/custom.css" />
    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">

               
                <a class="navbar-brand" href="index.html">TDSI admin</a>
            </div>
            <div style="color: white;
             padding: 15px 50px 5px 50px;
            float: right;
            font-size: 16px;">&nbsp;
                <form method ="post" action="Verified">
           <button type="submit" class="btn btn-danger square-btn-adjust">Logout</button>
             </form>
                 </div>
        </nav>
       
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center">
                        <img src="./assets/img/find_user.png" class="user-image img-responsive" />
                    </li>
                    <li>
                        <a href="Verified"><i class="fa fa-table fa-3x"></i> Tous les Etudiants</a>
                    </li>

                    <li>
                        
                        <a href="AddEtudiant"><i class="fa fa-plus" aria-hidden="true"></i> Inscrire un Etudiant</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Etudiants par groupe<span
                                class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Groupe 1</a>
                            </li>
                            <li>
                                <a href="#">Groupe 2</a>
                            </li>
                            <li>
                                <a href="#">Groupe 3</a>

                            </li>
                        </ul>
                    </li>
            </div>

        </nav>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin Dashboard</h2>
                        <h5>Welcome Khali Diamé , Love to see you back. </h5>
                    </div>
                </div>
                
                 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/groupetd"
         user = "root"  password = ""/>

         <sql:query dataSource = "${snapshot}" var = "result">
             SELECT * FROM etudiant WHERE groupeTD = 'groupe 1'
           
         </sql:query>
                <style>
                    .joua{
                        
                        width: 1300px;
                        
                    }
                    
                    </style>
               
               <div class = "joua">
               <div class="col-md-9 col-sm-12 col-xs-12">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Tous Les Etudiants
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Groupe TD</th>
                                            <th>Age.</th>
                                            <th>Nationalité</th>
                                            <th> Sport </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                    <c:forEach var = "row" items = "${result.rows}">
                    <tr> 
                        <td> <c:out value = "${row.id }"/></td>
                        <td> <c:out value = "${row.prenom }"/></td>
                        <td> <c:out value = "${row.nom}"/></td>
                        <td> <c:out value = "${row.groupeTD }"/></td>
                        <td> <c:out value = "${row.age}"/></td>
                         <td> <c:out value = "${row.paysOrigine}"/></td>
                          <td> <c:out value = "${row.sportPratique}"/></td>
                        
                    </tr>
                    
                  
                    </c:forEach>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            </div>






            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    
    <script src="./assets/js/jquery-1.10.2.js"></script>
    
    <script src="./assets/js/bootstrap.min.js"></script>
    
    <script src="./assets/js/jquery.metisMenu.js"></script>
    
    <script src="./assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="./assets/js/morris/morris.js"></script>
    
    <script src="./assets/js/custom.js"></script>


</body>
</html>
        
        
        
   
