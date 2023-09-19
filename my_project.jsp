<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Random Facts</title>
</head>
<body>
    <h1>Did You Know?</h1>
    
    <%
        // Array of random facts
        String[] facts = {
            "Honey never spoils. Archaeologists have even found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible.",
            "The shortest war in history was between Britain and Zanzibar on August 27, 1896. Zanzibar surrendered after 38 minutes.",
            "Bananas are berries, but strawberries aren't.",
            "A group of flamingos is called a 'flamboyance.'",
            "The Eiffel Tower can be 15 cm taller during the summer due to thermal expansion of the iron.",
            "Octopuses have three hearts.", "hello"
        };
        
        // Generate a random index to select a fact
        int randomIndex = (int) (Math.random() * facts.length);
        String randomFact = facts[randomIndex];
    %>
    
    <p>Here's a random fact for you:</p>
    <blockquote><%= randomFact %></blockquote>
    
    <p>Refresh the page to discover another interesting fact!</p>
</body>
</html>
