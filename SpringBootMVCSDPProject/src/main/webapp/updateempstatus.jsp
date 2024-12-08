<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student Status</title>
    <style>
         body {
    font-family: Arial, sans-serif; /* Consistent font style */
    background-color: #f4f4f4; /* Light background color for contrast */
    margin: 0; /* Reset default margin */
    padding: 20px; /* Add some padding */
}

h3 {
    text-align: center; /* Center the heading */
    color: #264143; /* Consistent color for headings */
    margin-bottom: 20px; /* Space below heading */
}

table {
    width: 100%; /* Full-width table */
    border-collapse: collapse; /* Merge borders for a cleaner look */
    margin: 0 auto; /* Center the table */
}

th, td {
    border: 1px solid #ddd; /* Light gray border for cells */
    padding: 12px; /* Padding for cells */
    text-align: left; /* Align text to the left */
}

th {
    background-color: white; /* Dark background for headers */
    color: black; /* White text for contrast */
}

tr:nth-child(even) {
    background-color: #58d68d; /* Light gray for even rows */
}

tr:hover {
    background-color: #edbb99; /* Highlight row on hover */
}

.card {
    width: 250px;
    background: rgb(44, 44, 44);
    font-family: "Courier New", Courier, monospace;
    border-radius: 12px; /* Rounded corners */
    overflow: hidden; /* Ensure content stays within bounds */
    margin: 10px; /* Margin for spacing */
    display: inline-block; /* Inline-block for card layout */
}

.card__title {
    color: white;
    font-weight: bold;
    padding: 10px; /* Padding for title */
    background: #333; /* Dark background for title */
}

.card__data {
    font-size: 0.9rem; /* Slightly larger font for readability */
    padding: 10px; /* Padding for data */
    border-top: 1px solid rgb(203, 203, 203); /* Border on top */
}

.item {
    padding: 3px 0; /* Padding for items */
    background-color: white; /* White background for items */
}

.item:hover {
    background-color: #f1f1f1; /* Highlight item on hover */
}

/* Responsive design */
@media (max-width: 768px) {
    .card {
        width: 100%; /* Full width on smaller screens */
    }
}
    </style>
</head>
<body>
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Student Status</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>YEAR</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
           
           <td>
       
       <a href='<c:url value="updatestatus?id=${emp.id}&status=Accepted"></c:url>'>Accept</a>
       <a href='<c:url value="updatestatus?id=${emp.id}&status=Rejected"></c:url>'>Reject</a>
         
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
