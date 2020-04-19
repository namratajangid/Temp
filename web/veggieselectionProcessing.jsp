<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%
int userID = (Integer) request.getSession().getAttribute("userID");       
int catID = 1;
String veggievalues[] = request.getParameterValues("vegetables");
if(veggievalues != null)
        {
                for (int i = 0; i < veggievalues.length; i++) 
                {
                        //create connection 
                        try{
                        Connection con =   null;
                        PreparedStatement stat;
                        String url = "jdbc:postgresql://john.db.elephantsql.com:5432/vllmgzqg";
                        con = DriverManager.getConnection(url, "vllmgzqg", "6kesbi5l9R64eEBbiUptOkk1hkdANbmE");
                        stat = con.prepareStatement("insert into availableitems (sellerid, categoryid, itemname) values (?,?,?)");
                        stat.setInt(1, userID);
                        stat.setInt(2, catID);
                        stat.setString(3, veggievalues[i]);
                        stat.executeUpdate();
                        con.close();

                }
                catch(Exception m)
                {

                }
        }

}
String redirectURL = "fruitselection.jsp";
response.sendRedirect(redirectURL);
%>