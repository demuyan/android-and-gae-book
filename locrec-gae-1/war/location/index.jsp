<%@ page language="java"
	import="com.google.appengine.api.users.*"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%
	UserService userService = UserServiceFactory.getUserService();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>MapMain - LocRecServ</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<link href="/css/locrecserv.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/js/jquery-1.4.4.min.js" ></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&region=JP"></script>
<script type="text/javascript">
$(document).ready(function() {

	var myOptions = {
		center: new google.maps.LatLng(35.658704, 139.745408), // 東京タワー
		zoom: 14,
		mapTypeId: google.maps.MapTypeId.TERRAIN
	};
	var map = new google.maps.Map($("#mainmap").get(0), myOptions);

});
</script>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="#">LocRecServ</a></h1>
	</div>
	<div id="menu">
		<ul>
			<li><a href="<%=  userService.createLogoutURL("/") %>">Logout</a></li>
		</ul>
	</div>
</div>

<div id="wrapper">
	<div id="page">
		<div id="content">
			<div class="post">
				<div class="entry">
					<div id="mainmap" style="width : 500px; height : 500px;"></div>
				</div>
			</div>
		</div>

		<div id="sidebar">
			<ul>
				<li>
				<h2>Menu</h2>
					<ul>
					</ul>
				</li>
			</ul>
		</div>

	<div style="clear: both;">&nbsp;</div>
	</div>
</div>

</body>
</html>
