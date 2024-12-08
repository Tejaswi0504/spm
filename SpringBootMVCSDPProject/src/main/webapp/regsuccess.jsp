<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .message {
            font-size: 18px;
            color: #333;
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Registration Successful!</h1>
    <div class="message">
        <c:out value="${message}"></c:out>
    </div>
    <a href="emplogin">Login Here</a>
</body>
</html>