<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24. 4. 11.
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="https://search.naver.com/search.naver" var="naverUrl">
    <c:param name="query" value="뉴진스"/>
    <c:param name="where" value="nexearch"/>
    <c:param name="sm" value="tab_hty.top"/>
    </c:url>
<a href="https://www.naver.com">네이버</a>
<a href="${naverUrl}">네이버</a>
<hr>
<c:url value="https://search.daum.net/search" var="daumUrl">
    <c:param name="w" value="tot"/>
    <c:param name="DA" value="YZR"/>
    <c:param name="t__nil_searchbox" value="btn"/>
    <c:param name="q" value="에스파"/>
</c:url>
<a href="${daumUrl}">다음</a>


</body>
</html>
