<%@include file="/WEB-INF/fragments/head.jspf" %>

  <div class="mt-5">
    <c:forEach items="${pictures}" var="p">
      <div class="image-container">
        <div class="row justify-content-center">

          <div class="col-lg-5 col-md-6 col-xl-4">
            <img src="${applicationScope.imagesFolder}/${category}/${p.id}.jpg" class="img-fluid mb-2" alt="${p.id}">
            <p class="mt-2">${p.description}</p>
          </div>
        </div>

      </div>

    </c:forEach>
  </div>


<%@include file="/WEB-INF/fragments/bottom.jspf" %>