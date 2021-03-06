<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <%--<c:forEach var="ad" items="${ads}">--%>
    <%--<div class="col-md-6">--%>
    <%--<h2>${ad.title}</h2>--%>
    <%--<p>${ad.description}</p>--%>
    <%--<p>${ad.username}</p>--%>
    <%--</div>--%>
    <%--</c:forEach>--%>
    <c:forEach var="ad" items="${ads}">
        <a href="/viewAd?adId=${ad.id}">
            <div class="cardAd col-md-4" style="word-wrap: break-word;">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <p>Created On: ${ad.dateMade}</p>
                <p>Categories: ${ad.catString}</p>
            </div>
        </a>
    </c:forEach>
</div>

</body>
</html>