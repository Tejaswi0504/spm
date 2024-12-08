<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
 <title>Add Customer</title>
<link type="text/css" rel="stylesheet" href="css/style.css">

</head>

<body>
  <%@include file="adminnavbar.jsp" %>
  
    <h3 style="text-align: center;"><u>Add Employee</u></h3>
    <div class="form-container">

<form:form modelAttribute="employee" method="post" action="insertemployee">

<table>
<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>
<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>
<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>
<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>
<tr>
<td><label>Date of Birth</label></td>
<td><form:input path="dateofbirth" required="required"/></td>
</tr>
<tr>
<td><label>Department</label></td>
<td><form:input path="department" required="required"/></td>
</tr>
<tr>
<td><label>Salary</label></td>
<td><form:input path="salary" type="number" required="required"/></td>
</tr>
<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>
<tr>
<td><label>Contact No</label></td>
<td><form:input path="contact" required="required"/></td>
</tr>
<tr>
<td><label>Status</label></td>
<td><form:input path="status" required="required"/></td>
</tr>
<tr>
<td colspan="2" class="button-container">
<input type="submit" value="Add"/>
<input type="reset" value="Clear"/>
</td>
</tr>
</table>
</form:form>



</html>