<%-- 
    Document   : index
    Created on : 2018-09-30, 21:41:20
    Author     : nikoleta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Enigma</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            .error{
                color:red
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-success">
            <a class="navbar-brand" href="#">Enigma Scale</a>
        </nav>
        <div class="container-fluid col-sm-6" >
            <h1>Enigma Scale</h1>
            <p>Consider you have n number of boxes with pills weighting 1 gram. 
                In one of the boxes the pills are heavier, their weight is 1.1 grams. 
                You have the right to make one measurement to find the box with heavier pills. Measure pills according to instructions supplied to you. 
                Enter the number of boxes and the measurement you see on the scale to determine the different box.
            </p>
            <c:set var="weight" value="${enigma.scaleWeight}" />
            <form id="myform" class="form-signin" action="defineEnigma" method="post">
                <label for="numberOfBoxes" >Number of boxes: </label>
                <input id="numberOfBoxes" type="text" class="form-control" name="numberOfBoxes" placeholder="Number of boxes"  required autofocus><br>
                <label for="scaleWeight" >Scale measurement: </label>
                <input id="scaleWeight" type="text" class="form-control" name="scaleWeight" placeholder="Scale measurement" required><br>
                <button class="btn btn-lg btn-success btn-block" type="submit">Find the box</button>
            </form>
            <br>
            <% if (request.getAttribute("enigma") != null) {
            %>
            <p>If you have ${enigma.numberOfBoxes} boxes and the scale measurement is <fmt:formatNumber value="${weight}" /> then the box with heavier pills is number ${enigma.theBox}</p>
            <% }%>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $("#myform").validate({
                rules: {
                    scaleWeight: {
                        required: true,
                        number: true
                    },
                    numberOfBoxes: {
                        required: true,
                        digits: true
                    }
                },
                messages: {
                    scaleWeight: {
                        required: "Please enter the number of boxes",
                        number: "You should enter only digits"
                    },
                    numberOfBoxes: {
                        required: "Please enter the measurement of the scale",
                        digits: "You should enter only decimal numbers"
                    }
                }
            });
        </script>

    </body>
</html>