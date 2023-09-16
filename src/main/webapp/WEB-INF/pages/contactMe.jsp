<%@include file="/WEB-INF/fragments/head.jspf" %>
<br>
<br>
<p class="text-center">Let me know what's on your mind. :)</p>
<br>
<br>
<form class="card p-3 bg-secondary-subtle" action="./sendEmail" method="get">
    <br>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name" autocomplete="off">
                    <label for="name">Name</label>
                </div>
            </div>
        </div>
        <div class="col-md-2">

        </div>
        <div class="col-md-6">
            <div class="form-group">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com">
                    <label for="email">Email address</label>
                </div>
        </div>
    </div>
    </div>
    <div class="form-group">

        <label for="message" class="form-label mt-4">Your Message:</label>
        <textarea class="form-control" id="message" name="message" rows="5"></textarea>
    <br>
    <br>
        <input type="submit" value="Submit">
    </div>
</form>


<%@include file="/WEB-INF/fragments/bottom.jspf" %>