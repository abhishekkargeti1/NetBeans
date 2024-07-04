<!doctype html>
 <%@ page import="com.google.gson.Gson" %>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
   <%@ page language="java" import="java.sql.*,java.util.*,java.text.*,java.math.*"%>
   <%@page import="java.text.*"%>
   <%
     String driverName = "oracle.jdbc.driver.OracleDriver";
     String url = "jdbc:oracle:thin:@172.28.52.11:1526:ERPPROD";
     String user = "POSTMIG";
     String psw = "postmig#2020";
     Connection con = null;
     PreparedStatement ps1 = null;
     Class.forName(driverName);
     con = DriverManager.getConnection(url, user, psw);
     
     String lic=request.getParameter("lic");
     String nature=request.getParameter("nature");
     String comp_num=request.getParameter("comp_num");
	%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IRCTC Complaints Dashboard</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0pq" crossorigin="anonymous">
  </head>
<!--   <style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

/* td {
  text-align: center;
  padding: 16px;
} */

 th, td {
  text-align: center;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>   -->

<style>
.container {
  width: 100%;
  text-align: center;
}

.table-wrapper {
  display: inline-block;
  vertical-align: top;
  width: 30%; /* Adjust width to fit side by side */
  margin: 10px;
}

table {
  font-family: Arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.scrollable{
	max-height:400px;
	overflow-y:auto;
}
</style>
  <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.topnav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: linear-gradient(130deg, #fff 14%, #0869bc 8%, #0869bc 100%);
  padding: 10px;
}

.topnav img {
  width: 5em;
  background-color: white;
  border-radius: 50%;
  padding: 7px;
}

.topnav .left,
.topnav .center,
.topnav .right {
  display: flex;
  align-items: center;
}

.topnav .center {
  flex-grow: 1;
  justify-content: center;
}

.topnav h2 {
  font-family: 'Poppins', sans-serif;
  color: white;
  margin: 0;
}

.topnav .main-title {
  font-weight: 800 !important;
}

.topnav .sub-title {
  font-weight: 500 !important;
}

@media screen and (max-width: 600px) {
  .topnav {
    flex-direction: column;
    align-items: flex-start;
  }

  .topnav img {
    width: 4em;
    margin-bottom: 10px;
  }

  .topnav .center {
    align-items: flex-start;
  }
}
</style>
  <body>
    		<div class="topnav">
  <!-- Left-aligned image -->
  <div class="left">
    <img src="https://w7.pngwing.com/pngs/4/379/png-transparent-varanasi-lion-capital-of-ashoka-devanagari-satyameva-jayate-state-emblem-of-india-symbol-miscellaneous-emblem-mammal.png" alt="Emblem">
  </div>

  <!-- Centered text -->
  <div class="center">
    <div class="navbar-nav mx-auto d-flex">
      <h2 class="main-title">Indian Railway Catering and Tourism Corporation</h2>
      <h2 class="sub-title" style="text-align:center !important;">Complaints Dashboard : <%= nature%> -  <%=trn_typ%></h2>
      <h2 class="sub-title" style="text-align:center !important;">No. of Complaints : <%=comp_num %></h2>
    </div>
  </div>

  <!-- Right-aligned image -->
  <div class="right">
    <img src="https://irctc.com:8080/IRCTC/resources/web/assets/images/login-logo.png" alt="IRCTC Logo">
  </div>
</div>
	
	<div>
	
	
	
	
	
	<div class="container">
	
	<%
	 String sql = "select count(*) count_t,ATR,TO_CHAR(COUNT(*) / SUM(COUNT(*)) OVER () * 100, 'FM9990.00') AS percentage "+
				"  from csim where "+ 
				" TRAINTYPE='"+trn_typ+"' and COMPLAINT_NATURE='"+nature+"' group by ATR order by  count_t desc  ";
	    ps1 = con.prepareStatement(sql);
	    ResultSet rs = ps1.executeQuery();
	%>
	 <div class="table-wrapper" id="table1">
			<table>
			  <thead >
			      <tr style=" position: -webkit-sticky;  position: sticky; top: 0; background-color:#8C7575; color:white;text-align:center;font-size:18px;">
			       <th colspan="4" style="background-color:#8C7575; color:white;text-align:center;font-size:25px;"><b>ATR Type</b></th>
			    </tr>
			  </thead>
    		<tr>
				<th>S.No.</th>
				<th>ATR</th>
				<th>Complaints</th>
				<th>Percentage</th>
			</tr>
			<%int count1 =1;%>
			<% while(rs.next()){%>
			<tr>
				<td><%=count1 %></td>
				<%if (rs.getString("ATR")==null) {%>
                	<td style="color:red;">NA</td>
                <%} else {%>
               		<td ><%=rs.getString("ATR")%></td>
                <% } %>
				<td><a href="${pageContext.request.contextPath}/resources/jsps/dashboard_zn_nature_atr.jsp?
				num=atr&nature=<%=nature%>&trn_typ=<%=trn_typ%>&comp_num=<%=rs.getString("count_t")%>
				&atr=<%=rs.getString("atr")%>"><%=rs.getString("count_t")%></a></td>
				<td><%=rs.getString("percentage")%>%</td>
			</tr>
			<%
			count1++;
			} %>
  		</table>
  		</div>
  		
  		 <%		String sql2 = "select count(*) count_t,IRCTC_ZONE,TO_CHAR(COUNT(*) / SUM(COUNT(*)) OVER () * 100, 'FM9990.00') AS percentage "+
 				"  from csim where "+ 
						" LICENSEE_NAME='"+lic+"' and COMPLAINT_NATURE='"+nature+"' group by IRCTC_ZONE order by  count_t desc ";
	    ps1 = con.prepareStatement(sql2);
	    ResultSet rs2 = ps1.executeQuery();
	%>
	
	 <div class="table-wrapper" id="table2">
   <table>
		  <thead>
		      <tr style="position: -webkit-sticky;  position: sticky; top: 0; background-color:#8C7575; color:white;text-align:center;font-size:18px;">
		       <th colspan="4" style="background-color:#8C7575; color:white;text-align:center;font-size:25px;"><b>Licensee Name</b></th>
		    </tr>
		  </thead>
    		<tr>
				<th>S.No.</th>
				<th>Licensee Name</th>
				<th>Complaints</th>
				<th>Percentage</th>
			</tr>
			<%int count2 =1;%>
			<% while(rs2.next()){%>
			<tr>
				<td><%=count2%></td>
				<%if (rs2.getString("IRCTC_ZONE")==null) {%>
                	<td style="color:red;">NA</td>
                <%} else {%>
               		<td><%=rs2.getString("IRCTC_ZONE")%></td>
                <% } %>
				<td><a href="${pageContext.request.contextPath}/resources/jsps/dashboard_zn_nature_lic.jsp?
				num=licensee&nature=<%=nature%>&trn_typ=<%=trn_typ%>&comp_num=<%=rs2.getString("count_t")%>
				&lic=<%=rs2.getString("LICENSEE_NAME")%>"><%=rs2.getString("count_t")%></a></td>
				<td><%=rs2.getString("percentage")%>%</td>
			</tr>
			<%
			count2++;
			} %>
  </table>
		</div>
	
	<% 	String sql3 = "select IRCTC_ZONE,count(*) count_t,TO_CHAR(COUNT(*) / SUM(COUNT(*)) OVER () * 100, 'FM9990.00') AS percentage "+
			"  from csim where TRAINTYPE='"+trn_typ+"' and COMPLAINT_NATURE='"+nature+"' group by IRCTC_ZONE order by  count_t desc ";
  		ps1 = con.prepareStatement(sql3);
	    ResultSet rs3 = ps1.executeQuery();
  %>
  
   <div class="table-wrapper" id="table3">
   <table>
  <thead>
      <tr style="position: -webkit-sticky;  position: sticky; top: 0; background-color:#8C7575; color:white;text-align:center;font-size:18px;">
       <th colspan="4" style="background-color:#8C7575; color:white;text-align:center;font-size:25px;"><b>Zone-wise</b></th>
    </tr>
  </thead>
    <tr>
				<th>S.No.</th>
				<th>Train Type</th>
				<th>Complaints</th>
				<th>Percentage</th>
			</tr>
			<%int count3 =1;%>
			<% while(rs3.next()){%>
			<tr>
				<td><%=count3 %></td>
				<td><%=rs3.getString("IRCTC_ZONE") %></td>
				<td><a href="${pageContext.request.contextPath}/resources/jsps/dashboard_zn_nature_trn.jsp?
				num=trn&nature=<%=nature%>&trn_typ=<%=trn_typ%>&comp_num=<%=rs3.getString("count_t")%>
				&trn=<%=rs3.getString("IRCTC_ZONE")%>"><%=rs3.getString("count_t")%></a></td>
				<td><%=rs3.getString("percentage")%>%</td>
			</tr>
			<%
			count3++;
			} %>
  </table>
  </div>
	
	</div>
  
  </div>
  
	
	
		
		
		  
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0pq" crossorigin="anonymous"></script>
  <script>
window.onload = function() {
  const tables = document.querySelectorAll('.table-wrapper table');
  const maxHeight = 600; // Set the maximum height

  tables.forEach(table => {
    if (table.scrollHeight > maxHeight) {
      table.parentElement.classList.add('scrollable');
    }
  });

  const maxTableHeight = Math.max(...Array.from(tables).map(table => table.parentElement.offsetHeight));
  tables.forEach(table => {
    table.parentElement.style.height = maxTableHeight + 'px';
  });
};
</script>
  </body>
</html>