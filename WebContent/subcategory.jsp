<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Sub_Category</title>
    </head>
    <body>
        <h1></h1>
         <div>  
            <div style="float: left; margin-left: 100px; font-family:  serif; font-size: 13px;">
          <%
     try{
         String cname = request.getParameter("cname");
          %>
         <h1 style="margin-left: 400px;">Search Result</h1>
        
        <%
        Class.forName("oracle.jdbc.OracleDriver");
    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select bkname,bksub,bkdes from book where bcategoty = '"+cname+"'");
         
         while(rs.next())
         {
             String book = rs.getString("bname");
             String book_des = rs.getString("bksub");
             String book_loc = rs.getString("bdes");
             %>
             <h1 style="width: 800px"> <%out.print(book);%><br><%
             out.print( "About book :"+book_des);
             %>.<br><%
             out.print( " "+book_loc);%>
             <br> <br><a href="http://localhost:8080/MyBookStore/<%out.println(book_loc);%>">Download</a></h1>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
     
     </div>
     <div style="float: right;">
         
        <img src="image/Book_icon.png" width="250" height="500" id="image_spc" style="margin-left: 60px;">
     </div>
     
     </div>  
     </body>
</html>
