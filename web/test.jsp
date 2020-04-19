<%
String columns[] = {"contactlesspayment", "queuemanagement", "staffhygiene", "sanitizerforcustomer", "limitedstaff"};
String columnsNo[] = {2,3,4,5,6};
String safetyratingparams[] = request.getParameterValues("safetyscore");
for(int i=0; i<columns.length; i++)
{
	 
	for(int j=0; j<safetyratingparams.length; j++)
	{
		if(columns[i].equals(safetyratingparams[j]))
		{
			stat.setString(columnsNo[i],true);
		} 
		else
		{
			stat.setString(columnsNo[i],false);
		}
	}
}	
%>