<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Date, Time, and Fun Fact</title>
</head>
<body>
    <h1>Date, Time, and Fun Fact</h1>
    
    <p>Current Date and Time: <%= new java.util.Date() %></p>
    
    <p>Something Interesting:</p>
    
    <%!
        // Array of fun facts
        String[] funFacts = {
            "The honeybee is the only insect that produces food humans eat.",
            "The Eiffel Tower can be 15 cm taller during the summer due to thermal expansion of the iron.",
            "A day on Venus is longer than its year.",
            "The total weight of ants on Earth is roughly equal to the total weight of humans on Earth."
        };

        // Randomly select a fun fact
        int randomIndex = (int) (Math.random() * funFacts.length);
        String randomFunFact = funFacts[randomIndex];
    %>
    
    <p><%= randomFunFact %></p>
</body>
</html>