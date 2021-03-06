<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="pcoded-navbar menupos-fixed menu-light brand-blue ">
	<div class="navbar-wrapper ">
		<div class="navbar-brand header-logo">
			Zin Shop
		</div>
		<div class="navbar-content scroll-div">
			<ul class="nav pcoded-inner-navbar">
				<li class="nav-item pcoded-hasmenu">
					<p class="nav-link">
						<span class="pcoded-micon"> <i class="feather icon-box">
						</i></span> <span class="pcoded-mtext" style="cursor:pointer">Quản hệ thống</span>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/user/list"
								class="">Quản lí user</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/role/list"
								class="">Quản lí role</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/category/"
								class="">Quản lí category</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/product"
								class="">Quản lí product</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/invoice/"
								class="">Quản lí invoice</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/order/list"
								class="">Quản lí order</a></li>
						</ul>
						<ul class="pcoded-submenu">
							<li class=""><a href="<%=request.getContextPath() %>/statistical_cost"
								class="">Thống Kê Chi Phí Nhập </a></li>
						</ul>
				</li>
			</ul>

		</div>
	</div>
</nav>