<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form method="POST" action='FilmController' name="frmAddFilm">
   <input type="text" name="a"  value="<c:out value="${film.title}" />" /> <br />
     <input type="text" name="b" value="<c:out value="${film.releaseDate}" />" /> <br />
    <label for="genre">operation :</label>
    <select name="genre" required id="genre">
        <c:forEach items="${genres}" var="genre">
            <option>${genre}</option>
        </c:forEach>
    </select>
    <br/>

    <input type="submit" value="Submit" />
</form>
</body>
</html>
