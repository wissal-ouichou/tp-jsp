<%-- 
    Document   : machines
    Created on : 24 oct. 2023, 19:01:36
    Author     : WISSAL
--%>

<%@page import="entities.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="MachineController" method="GET" >
             <fieldset>
              <legend>Informations machine</legend> 
              <table border="0">
                  
                      <tr>
                          <td>Référence :</td>
                          <td><input type="text" name="ref" value="" /></td>
                      </tr>
                      <tr>
                          <td>Marque :</td>
                          <td><input type="text" name="marque" value="" /></td>
                      </tr>
                      <tr>
                          <td>Prix :</td>
                          <td><input type="text" name="prix" value="" /></td>
                      </tr>
                      <tr>
                          <td></td>
                          <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                      </tr>
                  </tbody>
              </table>



             </fieldset> 

        </form> 
         <fieldset>
             <legend>Liste des machines</legend>
             <table border="1">
                 <thead>
                     <tr>
                         <th>Id</th>
                         <th>Référence</th>
                         <th>Marque</th>
                         <th>Prix</th>
                         <th>Modifier</th>
                         <th>Supprimer</th>
                     </tr>
                 </thead>
                 <tbody>
                     <%
                         MachineService ms = new MachineService() ;
                         for(Machine m : ms.findAll()){
                             
                         
                           %>  
                     <tr>
                         <td><%= m.getId()%></td>
                         <td><%= m.getRef()%></td>
                         <td><%= m.getMarque()%></td>
                         <td><%= m.getPrix()%></td>
                         <td><a href="MachineController?op=delete&id=<%= m.getId()%>">Supprimer</a></td> 
                         <td><a href="MachineController">Modifier</a></td>
                     </tr>
                     <% } %> 
                 </tbody>
             </table>

             </fieldset>
    </body>
</html>
