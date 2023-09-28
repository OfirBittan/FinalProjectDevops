<!DOCTYPE html>
<html>
<head>
    <title>Personalized Greeting JSP</title>
</head>
<body>
    <h1>Personalized Greeting</h1>
    <form action="" method="post">
        Enter your name: <input type="text" name="username">
        <input type="submit" value="Submit">
    </form>
    
    <%
        String username = request.getParameter("username");
        if (username != null && !username.isEmpty()) {
    %>
            <p>Hello, <%= username %>! This is a personalized greeting from JSP.</p>
    <%
        }
    %>
</body>
</html>