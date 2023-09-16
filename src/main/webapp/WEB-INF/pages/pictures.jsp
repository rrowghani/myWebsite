<%@include file="/WEB-INF/fragments/head.jspf" %>

  <div style="margin-top: 2rem">
    <c:forEach items="${pictures}" var="p">
      <div class="image-container">
        <img src="${applicationScope.imagesFolder}${p.id}.jpg" width="60%" class="img-fluid mb-2" alt="${p.id}">
        <p>${p.description}</p>
      </div>

    </c:forEach>
  </div>


<%@include file="/WEB-INF/fragments/bottom.jspf" %>