<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form method="POST" action='FilmController' name="frmAddFilm">
    <input type="hidden" readonly="readonly" name="id" value="<c:out value="${film.id}" />" /> <br />
   <input type="text" name="title" required="required" value="<c:out value="${film.title}" />" /> <br />
     <input type="text" name="releaseData" placeholder="yyyy-mm-dd" required="required" pattern="^\d{4}-\d{2}-\d{2}" value="<c:out value="${film.releaseDate}" />" /> <br />
     <input type="text" name="country" required="required" value="<c:out value="${film.country}" />" /> <br />

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
