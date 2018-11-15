<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Category</title>
    </head>
    <body>
    <div class="category" style="margin-top: 20px; margin-left: 10px;">
            <%            try {

            	Class.forName("oracle.jdbc.OracleDriver");
            	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");

                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from category");

                    while (rs.next()) {

                        String cname = rs.getString("cname");
                        //String book_loc = rs.getString("book_location");
            %>
            <h3><%out.println(cname);%></h3><%
            
            

                 // out.print( " "+book_loc);%>


                <%
                        }
                    } catch (Exception e) {

                    }
                %>
        </div>
        
        <div class="category2">
            <h2>Enter your category</h2>
             <form action="subcategory.jsp" method="post">
        <div class="search_input">
            
            <input name="cname" placeholder="Enter Category Name" type="text" size="50px;" style="height: 70px; width: 300px;"> </input>
            
        </div>
        <div class="search_button">
            
            <input type="submit" value="SEARCH" style="height: 50px; width: 200px; margin-left: 40px; margin-right: auto;margin-top: -10px;" class="btn"> </input>
            
        </div>
        </form>
        </div>

        </body>
 
    
</html>
