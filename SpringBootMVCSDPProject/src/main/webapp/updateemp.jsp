<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
</head>
   <style>
   body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    text-align: center;
}

h3 {
    color: #264143;
    font-weight: 900;
    margin-top: 20px;
    font-size: 1.8em;
}

.form-container {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 40px;
}

table {
    background-color: #EDDCD9;
    border: 2px solid #264143;
    border-radius: 20px;
    box-shadow: 3px 4px 0px 1px #E99F4C;
    padding: 20px;
    width: 400px;
}

table td {
    padding: 10px;
    text-align: left;
}

label {
    margin-top: 5px;
    display: block;
    font-weight: bold;
    color: #264143;
}

/* Styling for all input types to maintain consistency */
input[type="text"], 
input[type="email"], 
input[type="password"], 
input[type="number"], 
input[type="date"], 
select, 
textarea {
    outline: none;
    border: 2px solid #264143;
    box-shadow: 3px 4px 0px 1px #E99F4C;
    width: 300px; /* Consistent width for all input fields */
    padding: 12px 10px;
    border-radius: 4px;
    font-size: 15px;
    margin-top: 5px;
    resize: none; /* Prevent textarea resizing */
}

textarea {
    height: 100px;
}

input:focus, 
textarea:focus, 
select:focus {
    transform: translateY(4px);
    box-shadow: 1px 2px 0px 0px #E99F4C;
}

/* Additional styling to make number inputs match the text input style */
input[type="number"] {
    -moz-appearance: textfield; /* Removes spinner controls in Firefox */
}

input[type="number"]::-webkit-outer-spin-button, 
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none; /* Removes spinner controls in Chrome */
}

/* Styling for gender radio buttons */
input[type="radio"] {
    margin-right: 5px;
}

input[type="submit"], 
input[type="reset"] {
    padding: 10px;
    margin: 10px;
    width: 100px;
    font-size: 15px;
    background: #DE5499;
    border-radius: 10px;
    font-weight: 800;
    box-shadow: 3px 3px 0px 0px #E99F4C;
    border: none;
    color: white;
    cursor: pointer;
    text-align: center;
}

input[type="submit"]:hover, 
input[type="reset"]:hover {
    opacity: .9;
}

tr {
    margin-top: 10px;
}

tr:last-child td {
    text-align: center;
}

/* Align gender radio buttons horizontally */
.gender-container {
    display: flex;
    align-items: center;
}

.gender-container label {
    margin-right: 10px;
    margin-left: 5px;
}



    </style>
<body>
  <%@include file="empnavbar.jsp" %>
  
   <h4 align="center" style="color:red">
  <c:out value="${message}"></c:out>
  </h4>
  
    <h3 style="text-align: center;"><u>Update Employee Profile</u></h3>
    <div class="form-container">
        <form method="post" action="updateempprofile">
            <table>
                <tr>
                    <td><label for="eid">Employee ID</label></td>
                    <td><input type="number" id="eid" name="eid" readonly value="<%= emp.getId() %>" required/></td>
                </tr>
               <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <div class="gender-container">
                        <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" readonly value="<%= emp.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" value="<%= emp.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>
