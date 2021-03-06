<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: brian
  Date: 4/6/20
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        .error {
            color: red;
        }
        .errorblock {
            color: black;
            background-color: #ffeeee;
            border: 3px solid #ffeeee;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<h1>Registration</h1>

<form:form modelAttribute="registration">
    <form:errors path="*" cssClass="errorblock" element="div" />
    <table>
        <tr>
            <td>
                <spring:message code="name"/>
            </td>
            <td>
                <form:input path="name"/>
            </td>
            <td>
                <form:errors path="name" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td colspan="3">
                <input type="submit" value="Add Registration">
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
