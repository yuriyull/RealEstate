<%@page import="spring.MapDto"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>

.site-blocks-cover {
	display:none;
}
.site-navbar{
	background-color: #6c757d40;
	position: fixed;
	
}
.mt-4, .my-4{
	all:none;
}
.site-wrap{
	margin-top: -1.5rem;
}
</style>
<body>
<%
	List<MapDto> Map_property = (List<MapDto>)request.getAttribute("Map_property");
	String address;
	String lat;
	String lng;
	for(int i=0; i <Map_property.size();i++){
		address = Map_property.get(i).getAddress();
		lat = Map_property.get(i).getLat();
		lng = Map_property.get(i).getLng();
	}

%>
<jsp:include page="navbar.jsp"></jsp:include>

   <div class="mapbox">
       	<div id="map" style="width:100%;height:101vh;"></div>
   </div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=20337f149747da985b2e51a21a6e14e6&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(35.2208121, 128.6834965), // 지도의 중심좌표
    level: 6 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var positions = new Array;

<c:forEach items="${Map_property}" var="property"> 

	positions.push({
				title: "${property.address}", 
				latlng:new kakao.maps.LatLng("${property.lat}", "${property.lng}")
			});

</c:forEach>
//마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i++) {
	
	// 마커 이미지의 이미지 크기 입니다
	var imageSize = new kakao.maps.Size(30, 45); 
	
	// 마커 이미지를 생성합니다    
	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    map: map, // 마커를 표시할 지도
	    position: positions[i].latlng, // 마커를 표시할 위치
	    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	    image : markerImage, // 마커 이미지 
	    clickable: true 
	});
	
	address = positions[i].title;

	kakao.maps.event.addListener(marker, 'click', function() {
		 location.href = "./property_details?address="+address; 
	});

}
</script>
</body>
</html>