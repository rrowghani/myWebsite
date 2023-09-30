<%@taglib uri="jakarta.tags.core" prefix="c" %>
<c:set var="switchChecked" scope="session" value="${picsSwitch}"/>
<c:set var="req" value="${pageContext.request}" />
<c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />

<%@include file="/WEB-INF/fragments/head.jspf" %>
<%@include file="/WEB-INF/fragments/thumbnailButton.jspf" %>

<c:choose>
    <c:when test="${switchChecked}">
        <%--pics as thumbnails--%>
        <div class="row justify-content-center align-items-center row-gap-5">
            <c:forEach items="${pictures.keySet()}" var="p" varStatus="status">
                <c:if test="${p.equals('Places') && !p.equals('As_It_Is') && !p.equals('Black_And_White')}">

                    ${status.first ? '<h2>' : '<h2 class="picture-category-heading">'}
                    ${p}
                    </h2>
                    <br>
                </c:if>
                <c:forEach items="${pictures.get(p)}" var="q">
                    <div class="col-xl-4 zoom" style="position: relative">
                        <p>${q.description}</p>
                        <img src="${applicationScope.imagesFolder}/${q.path}.jpg" class="img-fluid mb-2" alt="${q.id}">
                    </div>
                </c:forEach>
            </c:forEach>
        </div>
    </c:when>
    <c:otherwise>
        <%--pics full--%>
        <div class="mt-5">
            <c:forEach items="${pictures.keySet()}" var="p" varStatus="status">
                <c:if test="${!p.equals('People') && !p.equals('As_It_Is') && !p.equals('Black_And_White')}">
                    ${status.first ? '<h2>' : '<h2 class="picture-category-heading">'}
                    ${p}
                    </h2>
                </c:if>
                <c:forEach items="${pictures.get(p)}" var="q">
                    <div class="image-container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5 col-md-8 col-xl-6 zoom" style="position: relative">
                                <p class="mt-2">${q.description}</p>
                                <img src="${applicationScope.imagesFolder}/${q.path}.jpg" class="img-fluid mb-2"
                                     alt="${q.id}">
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </c:forEach>
        </div>
    </c:otherwise>
</c:choose>


<%@include file="/WEB-INF/fragments/bottom.jspf" %>