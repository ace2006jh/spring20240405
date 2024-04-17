<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 4. 12.
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .menu-item {
        border: 1px solid black;
    }

    .active {
        font-style: italic;
        font-weight: bold;
    }
</style>
<div>
    <a class="${cur eq 'sub5' ? 'active' : ''}" href="/main15/sub5">
        <span class="menu-item">sub5</span>
    </a>
    <a class="${cur eq 'sub6' ? 'active' : ''}" href="/main15/sub6">
        <span class="menu-item">sub6</span>
    </a>
</div>