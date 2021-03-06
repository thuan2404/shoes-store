<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<div class="container">
    <div class="row">
      <div class="offset-lg-2 col-lg-8 col-sm-8 col-8 border rounded main-section">
        <h3 class="text-center text-inverse">Add New User</h3>
        <hr>

        <form:form cssClass="container" modelAttribute="user" method="post" action="add"  >
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-12">
              <div class="form-group">
                <form:label path="name" cssClass="text-inverse">Name</form:label>
                <form:input path="name" cssClass="form-control"  placeholder="Name" />
                <form:errors path="name" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <form:label path="email" cssClass="text-inverse">Email</form:label>
                <form:input path="email" type="email" cssClass="form-control"  placeholder="Email" />
                <form:errors path="email" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <form:label path="phone" cssClass="text-inverse">Phone</form:label>
                <form:input path="phone" cssClass="form-control"  placeholder="Phone" />
                <form:errors path="phone" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <form:label path="password" cssClass="text-inverse">Password</form:label>
                <form:input path="password" type="password" cssClass="form-control"  placeholder="Password" />
                <form:errors path="password" cssStyle="color: red;"/>
              </div>  
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-12 text-center">
                <button class="btn btn-info" type="submit">Submit form</button>
            </div>
          </div>  
          
        </form:form>
      </div>
    </div>  
</div>
<script src="<%=request.getContextPath()%>/resources/js/products/validate-form.js"></script>
        