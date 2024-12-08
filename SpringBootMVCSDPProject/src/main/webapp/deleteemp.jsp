<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
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
    background-color: linear-gradient(45deg, #00aaff, #0099cc); /* Dark background for headers */
    color: black; /* White text for contrast */
}

tr:nth-child(even) {
    background-color: #f4f4f4; /* Light gray for even rows */
}

tr:hover {
    background-color: #edbb99; /* Highlight row on hover */
}

.card {
    width: 250px;
    background: #f4f4f4;
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
    <h3 style="text-align: center;"><u>Delete Students</u></h3>
    
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Student Details</h1>
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
        <tr>
            <td>1</td>
            <td>John Doe</td>
            <td>Male</td>
            <td>1998-05-20</td>
            <td>CSE</td>
            <td>3</td>
            <td>Hyderabad</td>
            <td>johndoe@example.com</td>
            <td>9876543210</td>
            
            <td>Active</td>
            <td>
                <select>
                    <option value="delete">Delete</option>
                    <option value="delete">Delete</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>2</td>
            <td>Jane Smith</td>
            <td>Female</td>
            <td>1999-07-15</td>
            <td>ECE</td>
            <td>2</td>
            <td>Bangalore</td>
            <td>janesmith@example.com</td>
            <td>8765432109</td>
            <td>Inactive</td>
            
            <td>
                <select>
                    <option value="delete">Delete</option>
                    <option value="delete">Delete</option>
                </select>
            </td>
            
        </tr>
    </table>
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
             <a href='<c:url value="delete?id=${emp.id}"></c:url>'>Delete</a>
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
