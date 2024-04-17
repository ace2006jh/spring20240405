<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 4. 11.
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, th, tr, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 5px;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>NO.</th>
        <th>이름</th>
        <th>팀</th>
        <th>국적</th>
        <th>종목</th>
        <th>포지션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" var="player" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${player.name}</td>
            <td>${player.team}</td>
            <td>${player.country}</td>
            <td>${player.event}</td>
            <td>
                <c:forEach items="${player.positions}" var="position" varStatus= "stat">
                    ${position}
                    <c:if test="${not stat.last}">
                        ,
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
