<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
   Employee  emp = (Employee) session.getAttribute("employee");
   if(emp==null)
   {
	   response.sendRedirect("empsessionexpiry");
	   return;
   }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
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

input[type="text"],
input[type="email"],
textarea {
    outline: none;
    border: 2px solid #264143;
    box-shadow: 3px 4px 0px 1px #E99F4C;
    width: 300px;
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
textarea:focus {
    transform: translateY(4px);
    box-shadow: 1px 2px 0px 0px #E99F4C;
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

    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>

    <h3><u>Contact Us</u></h3>

    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required /></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required /></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required /></td>
                </tr>
                <tr>
                    <td><label for="message">Message</label></td>
                    <td><textarea name="message" id="message" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
