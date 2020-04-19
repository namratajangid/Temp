<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head></head><body>
 <%
 int userID = (Integer) request.getSession().getAttribute("userID");       
//String safetyratingparams[] = request.getParameterValues("safetyscore");
//List<String> safetyRatingList = new ArrayList();
//for (int i=0; i<safetyRatingList.size(); i++) {

//safetyRatingList = Arrays.asList(safetyratingparams);
/*if(safetyratingparams != null)
        {

                        //create connection 
                        try{
                        Connection con =   null;
                        PreparedStatement stat;
                        String url = "jdbc:postgresql://john.db.elephantsql.com:5432/vllmgzqg";
                        con = DriverManager.getConnection(url, "vllmgzqg", "6kesbi5l9R64eEBbiUptOkk1hkdANbmE");
                        stat = con.prepareStatement("insert into sellerhygienerating (sellerid, contactlesspayment, queuemanagement, staffhygiene, sanitizerforcustomer, limitedstaff, rating) values (?,?,?,?,?,?,?)");
                        stat.setInt(1, userID);
                        int count = 0;
                        if(safetyRatingList.contains("contactlesspayment"))
                        {       
                                stat.setInt(2,1);

                        }
                        else{
                        stat.setInt(2,0);
                }
                if(safetyRatingList.contains("queuemanagement"))
                {       
                        stat.setInt(3,1);
                }
                else{
                stat.setInt(3,0);
        }
        if(safetyRatingList.contains("staffhygiene"))
        {       
                stat.setInt(4,1);
        }
        else{
        stat.setInt(4,0);
}
if(safetyRatingList.contains("sanitizerforcustomer"))
{       
        stat.setInt(5,1);
}
else{
stat.setInt(5,0);
}
if(safetyRatingList.contains("limitedstaff"))
{       
        stat.setInt(6,1);
}
else{
stat.setInt(6,0);
}
*/
try{
Connection con =   null;
PreparedStatement stat;
String url = "jdbc:postgresql://john.db.elephantsql.com:5432/vllmgzqg";
con = DriverManager.getConnection(url, "vllmgzqg", "6kesbi5l9R64eEBbiUptOkk1hkdANbmE");
stat = con.prepareStatement("insert into sellerhygienerating (sellerid, contactlesspayment, queuemanagement, staffhygiene, sanitizerforcustomer, limitedstaff, rating) values (?,?,?,?,?,?,?)");
String columns[] = {"contactlesspayment", "queuemanagement", "staffhygiene", "sanitizerforcustomer", "limitedstaff"};
int columnsNo[] = {2,3,4,5,6};
String safetyratingparams[] = request.getParameterValues("safetyscore");
stat.setInt(1, userID);
for(int i=0; i<columns.length; i++)
{

        for(int j=0; j<safetyratingparams.length; j++)
        {
                if(columns[i].equals(safetyratingparams[j]))
                {
                        stat.setBoolean(columnsNo[i],true);
                        break;
                } 
                else
                {
                        stat.setBoolean(columnsNo[i],false);
                }                
        }
}       
stat.setInt(7, safetyratingparams.length);
stat.executeUpdate();
con.close();

}
catch(Exception m)
{

}

String redirectURL = "thankyou.jsp";
response.sendRedirect(redirectURL);
%>
</body>
</html>