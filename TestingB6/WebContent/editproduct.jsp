<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ page import ="mobileModel.*" %>
  <%@ page import="java.util.*" %>
<%
ProductModel temp=new ProductModel();
if(request.getAttribute("product")!=null)
temp=(ProductModel)request.getAttribute("product");	
System.out.println(temp.getPid()+" "+temp.getPname()+" "+temp.getBrand()+" "+temp.getRam()+" "+temp.getRom()+" "+temp.getProcessor()+" "+temp.getBattery()+" "+temp.getPrice()+" "+temp.getDescrptn());
%>
<%
if(request.getAttribute("successmsg")!=null)
{  String msg=(String)request.getAttribute("successmsg");
	out.println("<font color=green size=5>"+msg+"</font>");
}
else if(request.getAttribute("errorsmsg")!=null)
out.println("<font color=red size=5>Not Updated </font>");
%>
<form method=get action="ModifyServlet">
  pid <input type=text size=10 name="pid" readonly value='<% out.println(temp.getPid()); %>'><br><br>
  pname: <input type=text size=10 name="pname" value='<% out.println(temp.getPname()); %>'><br><br>
  brand: <input type=text size=10 name="brand" value='<% out.println(temp.getBrand()); %>'><br><br>
   ram: <input type=text size=10 name="ram" value='<% out.println(temp.getRam()); %>'><br><br>
    rom: <input type=text size=10 name="rom" value='<% out.println(temp.getRom()); %>'><br><br>
     processor: <input type=text size=10 name="processor" value='<% out.println(temp.getProcessor()); %>'><br><br>
      battery: <input type=text size=10 name="battery" value='<% out.println(temp.getBattery()); %>'><br><br>
       price: <input type=text size=10 name="price" value='<% out.println(temp.getPrice()); %>'><br><br>
        descrptn: <input type=text size=10 name="descrptn" value='<% out.println(temp.getDescrptn()); %>'><br><br>
  <input type=submit name="confirmupdate" value="Update" >
   <input type=submit name=cancel value="Cancel" >
  </form>
</body>
</html>