<%--
  Created by IntelliJ IDEA.
  User: jbuzimkic
  Date: 15.11.2016.
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<nav>
    <ul>
        <li><a href="#adminLogin">Login as admin</a></li>
        <li><a href="#studentLogin">Login as student</a></li>
    </ul>
</nav>

<div id="adminLogin">
    <form method="post" action="Validate">
        User: <input type="text" name="user" /><br/>
        Password: <input type="password" name="pass" ><br/>
        <input type="submit" value="submit">
    </form>
</div>

<div id="studentLogin">
    <form method="post" action="Validate2">
        Name: <input type="text" name="nameS"> <br>
        Password: <input type="password" name="passS"> <br>
        <input type="submit" value="submit">

    </form>
</div>

</body>
</html>
