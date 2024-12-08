<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .form-container {
            max-width: 400px; /* Reduced width */
            margin: auto;
            background: white;
            padding: 15px; /* Reduced padding */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 8px; /* Reduced padding */
            vertical-align: top;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 6px; /* Reduced padding */
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #28a745;
            color: white;
            padding: 8px 12px; /* Reduced padding */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 5px; /* Reduced margin */
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        input[type="reset"] {
            background-color: #dc3545;
        }

        input[type="reset"]:hover {
            background-color: #c82333;
        }

        .button-container {
            text-align: center;
        }

        @media (max-width: 600px) {
            .form-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertemp">
            <table>
               <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="SALES">Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>