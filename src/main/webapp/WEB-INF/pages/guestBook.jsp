<%@include file="/WEB-INF/fragments/head.jspf" %>

<div class="container" style="margin-top: 2rem">

    <div class="row">
        <div class="col">
            <%@include file="/WEB-INF/fragments/modal.jspf" %>
        </div>
    </div>
    <br>
    <p class="text-center">Let me know that you were here. :)</p>
    <br>

    <c:choose>
        <c:when test="${entries.size() == 0}">
            <p class="text-center">No entries at the moment. Be the first. :)</p>
        </c:when>
        <c:otherwise>
            <c:forEach items="${entries}" var="e">

                <div class="row justify-content-center mb-5">
                    <div class="col-sm-6">
                        <div class="card border-primary mb-8">
                            <div class="card-header card-title-custom bg-secondary-subtle">${e.name}<img class="float-end" src="https://flagsapi.com/${e.country}/flat/64.png" width="30"></div>
                            <div class="card-body">
                                <p class="card-text">${e.comment}</p>
                            </div>
                            <div class="card-footer card-footer-custom">
                                <p class="float-end">Timestamp: ${e.timeStamp}</p>
                            </div>
                        </div>
                    </div>
                </div>


            </c:forEach>
        </c:otherwise>
    </c:choose>
</div>

<%@include file="/WEB-INF/fragments/bottom.jspf" %>
