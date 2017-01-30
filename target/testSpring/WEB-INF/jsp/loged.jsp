<%--
  Created by IntelliJ IDEA.
  User: jbuzimkic
  Date: 9.1.2017.
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${user}</title>

    <style>
        .displayV{
            display:none;
        }

        .displayVi{
            display:block;
        }
    </style>

</head>
<body>

<nav>
    <ul>
        <li><a href="logout.html">Logout</a></li>
        <li><a href="#nextPage" data-toggle="nextPage">Add student</a></li>
    </ul>
</nav>


<div>
    <p>Welcome ${user}</p>
</div>

<div id="nextpage" class="displayV">
    <form action="" method="post">

        <label for="nameS">Name:</label>
        <input type="text" id="nameS">

        <label for="surnameS">Surname:</label>
        <input type="text" id="surnameS">

        <label for="emailS">Email: </label>
        <input type="email" id="emailS">

        <input type="submit" value="submit"  onclick="changeDisplay(event);">

    </form>

    <span></span>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

    $("a").click(function(){
        var idA = "#" + $(this).attr("data-toggle");
        console.log(idA);
        $("div").removeClass("displayV");
        $(idA).addClass("displayVi");
    })

    function changeDisplay(e) {

        e.preventDefault();

        var name = document.getElementById("nameS").value;
        var surname = document.getElementById("surnameS").value;
        var pass = "1234";
        var email = document.getElementById("emailS").value;

        $.ajax({
            type:"post",
            url:"/getDataStudent.html",
            data:{
                name:name,
                surname:surname,
                pass:pass,
                email:email
            }

        }).done(function(data, textStatus, jqXHR){
            console.log("Successful");
            $("#nextpage span").text("Student sent data");
        }).fail(function(jqXHR, textStatus, errorThrown){
            console.log(errorThrown)
        });

    }



</script>

</body>
</html>


<!--


<script>

<input type="hidden" value="$user" id="user">

<a href="welcome.html" id="displayVi">Go back to log in page</a>
<p id="displayV">cannot</p>
var context = document.getElementById("displayV");
var textContext = context.innerHTML;
var user = document.getElementById("user").value;
var login = document.getElementById("displayVi");

console.log("user: " + user, ". " + "Context: " + textContext);

if(textContext == "You don't have permissions" ){
login.style.display="block";
}else{
login.style.display="none";
}


if(textContext == "You don't have permissions" && user == "minka"){
context.style.display="none";
}else{
context.style.display="block";
}
</script>

-->