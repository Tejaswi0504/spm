<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core"  prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

</head>
<style>
 body {
            font-family: Arial, sans-serif; /* Added font for better appearance */
            background-color: #f4f4f4; /* Light background color */
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            margin-top: 50px; /* Space from top */
        }

        .form_area {
            background-color: #EDDCD9;
            border: 2px solid #264143;
            border-radius: 20px;
            box-shadow: 3px 4px 0px 1px #E99F4C;
            padding: 20px;
            width: 400px; /* Fixed width for the form area */
        }

        .title {
            color: #264143;
            font-weight: 900;
            font-size: 1.5em;
            margin-bottom: 20px; /* Space below title */
        }

        .form_group {
            display: flex;
            flex-direction: column;
            align-items: baseline;
            margin: 10px 0; /* Space between fields */
        }

        label {
            margin-top: 5px; /* Space above labels */
            display: block; /* Labels on separate lines */
            font-weight: bold; /* Bold labels */
            color: #264143; /* Label color */
        }

        .form_style {
            outline: none;
            border: 2px solid #264143;
            box-shadow: 3px 4px 0px 1px #E99F4C;
            width: 350px; /* Width of input fields */
            padding: 12px 10px;
            border-radius: 4px;
            font-size: 15px;
        }

        .form_style:focus {
            transform: translateY(4px);
            box-shadow: 1px 2px 0px 0px #E99F4C;
        }

        .btn {
            padding: 15px;
            margin: 15px 0; /* Margin for buttons */
            width: 150px; /* Width of buttons */
            font-size: 15px;
            background: #DE5499;
            border-radius: 10px;
            font-weight: 800;
            box-shadow: 3px 3px 0px 0px #E99F4C;
            border: none; /* Removed border for buttons */
            color: white; /* Text color for buttons */
            cursor: pointer; /* Cursor pointer for buttons */
        }

        .btn:hover {
            opacity: .9;
        }

        /* Additional styles for the table */
        table {
            width: 100%; /* Full-width table */
            border-collapse: collapse; /* Merge borders for a cleaner look */
            margin-top: 20px; /* Space above the table */
        }

        th, td {
            border: 1px solid #ddd; /* Light gray border for cells */
            padding: 12px; /* Padding for cells */
            text-align: left; /* Align text to the left */
        }

        th {
            background-color: #264143; /* Dark background for headers */
            color: white; /* White text for contrast */
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray for even rows */
        }

        tr:hover {
            background-color: #f1f1f1; /* Highlight row on hover */
        }
</style>
<body>
     <%@include file="adminnavbar.jsp" %>
     <h3 style="text-aline:center;"><u>View All Customer</u></h3>
     Total Customer=<c:out value="${cuscount}"></c:out> 
     <table>
     <tr>
     <th>ID</th>
     <th>NAME</th>
     <th>GENDER</th>
     <th>EMAIL</th>
     <th>ADDRESS</th>
     <th>CONTACTNO</th>
     </tr>
     <c:forEach items="${cuslist}" var="cus"> 
     
     <tr>
     <td><c:out value="${cus.id}"/></td>
     <td><c:out value="${cus.name}"/></td>
     <td><c:out value="${cus.gender}"/></td>
     <td><c:out value="${cus.email}"/></td>
     <td><c:out value="${cus.address}"/></td>
     <td><c:out value="${cus.contactno}"/></td>
     
     
     </tr>
       
    </c:forEach>
   </table>

</body>
</html>