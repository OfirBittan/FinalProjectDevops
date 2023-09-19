<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Project - Dashboard</title>
</head>
<body>
    <header>
        <h1>Welcome to My Project</h1>
        <nav>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/profile">Profile</a></li>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </nav>
    </header>
    
    <main>
        <section id="dashboard">
            <h2>Dashboard</h2>
            
            <div id="user-info">
                <h3>Hello, <%= session.getAttribute("username") %>!</h3>
                <p>Email: <%= session.getAttribute("email") %></p>
            </div>
            
            <!-- Add dynamic content from your database -->
            <div id="recent-posts">
                <h3>Recent Posts</h3>
                <ul>
                    <%
                        // Fetch recent posts from your database and display them
                        List<String> recentPosts = YourDatabaseService.getRecentPosts();
                        for (String post : recentPosts) {
                    %>
                        <li><%= post %></li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </section>
    </main>
    
    <footer>
        <p>&copy; <%= new java.util.Date().getYear() + 1900 %> My Project</p>
    </footer>
</body>
</html>
