<%@include file="/WEB-INF/fragments/head.jspf" %>
<br>
<br>
<c:choose>
    <c:when test="${result == 'success'}">
        <div class="text-center">
            <strong>Email send!</strong> You will be automatically redirected...
        </div>
        <meta http-equiv="Refresh" content="3; url='./pictures?category=People'"/>
    </c:when>
    <c:otherwise>
        <div class="text-center">
            <p>
                <strong>Oops, an error occurred.</strong> Email not send. Email me at info@rezarowghani.com and let me know.
            </p>
            <p>
                NOTE: You will not be redirected. Use NAVBAR.
            </p>
        </div>

    </c:otherwise>
</c:choose>


