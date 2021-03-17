<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	

<title>MyPet :: 입양하기</title>
	
<style>
	
	/* content */
    #content{
        width: 1300px;
        height: auto;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       	font-family: 'NanumSquare';
        /* margin-right: px; */
    }
    
    .title {
    	margin-top: 130px;
    	margin-bottom: 50px;
    	font-size: 30px;
        font-family: 'Jal_Onuel';
        text-align: center;
        display: block;
    	
    }
    
    
    /* 지도 & 검색창 */
    .map-search {
    	/* border: 1px solid black; */
    	margin-left: 100px;
    	width: 1000px;
    	height:	700px;
    	margin-bottom: 100px;
    }
    
    #map {
    	/* border: 1px solid black; */
    	width: 1000px;
    	height: 500px;
    	margin-bottom: 50px;    
    }
    
    .map-search > input[type=text] {
    	width: 425px;
    	float: left;
    	margin-right: 16px;
    	margin-left: 239px;
    }
    
    .map-search > input[type=button] {
    	width: 80px;
    	float: left;
    	color: white;
    	background-color: #b27208;
    	font-size: 16px;
    	border: 0px;
    	font-family: 'Jal_Onuel';    	
    }
    
    .map-search > input[type=button]:hover {
    	background-color: #F6DA42;
    	color: #301b01;
    }
    
    
    .common-btn {
    	background-color: #b27208;
    	color: white;
    	font-family: 'Jal_Onuel';
    	margin-bottom: 20px;
    	float: right;
    	position: relative;
    	left: -89px;
    	width: 80px;
    	
    }
    
    .common-btn:hover {
    	background-color: #F6DA42;
    	color: #301b01;
    	
    }
    
    .form-control {
    	color: #9c9c9c;
  	  	width: 550px;
    	margin-left: 170px;
		float: left;
    }
    
    #search-btn {
    	margin-left: 110px;
    	float: left;
    }
    
    /* 동물 종류 검색 */
    
    .search-box {
    	/* border: 1px solid black; */
    	width: 1000px;
    	height: 100px;
    }
    
    .pet-radio {
    	/* border: 1px solid black; */
    	width: 1000px;
    	height: 80px;
    	padding: 0px 170px;
    }
    
    .pet-radio > input[type="radio"] {
    	display: none;
    }
    
    .pet-radio > label {
    	border: 1px solid #eee;
    	width: 130px;
    	height: 45px;
    	float: left;
    	border-right: 0px;
    	font-size: 16px;
    	font-family: 'NanumSquare';
    	text-align: center;
    	padding: 10px;
    }
    
    
    .pet-radio > label:last-child {
    	border-right: 1px solid #eee;
    }
    
    
    
    input[type="radio"]:checked + label {
		background-color: #fab018;
		color: white;
	}
    
    
    /* 입양글 리스트 */
    .list {
    	/* border: 1px solid black; */
    	width: 1200px;
    	height: auto;
    	clear: both;
    	
    }
    
    .list-detail {
    	border: 1px solid #eee;
    	width: 281px;
    	height: 430px;
    	float: left;
    	margin-left: 90px;
    	margin-bottom: 120px;    
    	color: #301b01;	
    }
    
    .list-detail > span {
    	margin-left: 5px;
    }
    
    .pet-seq {
    	/* border: 1px solid black; */
    	margin-left: 5px;
    	margin-top: 10px;
	    font-size: 12px;	    
	    height: 30px;
    }
    
    .list-detail > .state {
    	display: block;
    	background-color: #f9820f;
    	width: 80px;
    	height: 30px;
    	color: white;
    	text-align: center;
    	margin-left: 100px;
    	margin-top: 20px;
    	border-radius: 5px;
    	font-family: 'Jal_Onuel';
    	padding: 6px;
    	opacity: .8;
    }
    
    .img {
    	/* border: 1px solid black; */
    	width: 280px;
    	height: 280px;
    	cursor: pointer;
    	
    }
    
    .img-pet {
    	width: 279px;
    	height: 280px;
    	background-size: cover;
    	background-position: 50% 50%;
    }
    
    .pet-title {
    	font-size: 16px;
    	font-family: 'NanumSquare';
    	display: block;
    	height: 50px;
    	margin-top: 10px;
    	margin-left: 5px;
    	margin-bottom: 10px;
    	font-weight: bold;
    	cursor: pointer;
    	
    }
	
	.pet-address {
		font-size: 13px;
    	font-family: 'NanumSquare';
    	display: block;
    	margin-top: 5px;
    	margin-left: 5px;
	}
	
	.like {
		/* border: 1px solid black; */
		width: 28px;
    	height: 28px;
    	background-image: url(/mypet/resources/images/like.png);
		background-size: cover;
    	background-position: 50% 50%;
    	margin-top: -45px;
    	margin-left: 240px;
    	background-color: transparent;
    	cursor: pointer;
    	/* float: left; */
	}
	
	.like:hover {
		background-image: url(/mypet/resources/images/heart.png);
	}
	
	
	/* 검색창 & 버튼 박스 */
    .pageSearch {
        /* border: 1px solid black; */
        width: 1200px;
        height: 130px;
        margin-top: 50px;
        padding: 0px 360px;
        text-align: center;
    }
	
	/* 페이지바 */
	
    .pagination {
       /*  width: 700px; */
        height: 40px;
        margin-top: 60px;
        /* text-align: center; */
    }
    
    .pagination> li {
    	margin: 0px;
    }
    
    
    .pagination> li > a {
		border-color : #ccc !important;
		color: #301b01 !important;
        font-size: 16px !important;
        background-color: transparent !important;    
        cursor: pointer !important;
	}

    .pagination> li > a:hover {
        background-color: #b27208 !important;
        color: white !important;
    }

    
    

    /* 게시판 검색창 공통 클래스 */
    .search-text {
        width: 340px;
        float: left;
        margin-right: 20px;
        font-size: 16px;
    }
    
  
    
</style>


  <div id="content">
    <span class="title">입양하기</span>
    <!-- 지도&검색창 -->
    <div class="map-search">
    	<div id="map">지도다</div>  
    	
    	<div class="pet-radio">
    		<c:if test="${empty species }">		
    		<input type="radio" name="species" id="all" checked value="">
    		</c:if>
    		<label for="all" onclick="location.href='/mypet/adoption/list.action?'">전체</label>
    		
    		
    		<c:if test="${species == 0 }">		
    		<input type="radio" name="species" id="dog" checked>
    		</c:if>
    		<label for="dog" onclick="location.href='/mypet/adoption/list.action?species=0'">강아지</label>
    		    	
    		<c:if test="${species == 1 }">	
    		<input type="radio" name="species" id="cat" checked>
    		</c:if>
    		<label for="cat" onclick="location.href='/mypet/adoption/list.action?species=1'">고양이</label>
    		
    		<c:if test="${species == 2 }">	
    		<input type="radio" name="species" id="rabbit" checked>
    		</c:if>
    		<label for="rabbit" onclick="location.href='/mypet/adoption/list.action?species=2'">토끼</label>
    		
    		<c:if test="${species == 3 }">	
    		<input type="radio" name="species" id="etc" checked>
    		</c:if>
    		<label for="etc" onclick="location.href='/mypet/adoption/list.action?species=3'">기타동물</label>    		
    	</div>
    	
    	<div class="search-box">
	    	<form method="GET" action="/mypet/adoption/list.action">
	    		<input type="text" class="form-control" name="search" placeholder="검색 키워드를 입력해주세요." onfocus="this.value=''">
	    		<input type="submit" class="btn common-btn" id="search-btn" value="검색">    
	    	</form>
    	</div>
    	
    </div>
    
    <!-- 관리자만 보여주기 -->
    <input type="button" class="btn common-btn" value="글쓰기" onclick="location.href='/mypet/adoption/write.action'">
    
    <!-- 9개씩 나오기 -->
    <div class="list">    	        	
    
    	<!-- 관리자가 보는 페이지 -->
    	<c:forEach items="${list }" var="dto">
    	<div class="list-detail">    	
    		<div class="img" onclick="location.href='/mypet/adoption/view.action?seqAdoption=${dto.seqAdoption}'"><img class="img-pet" src="../resources/images/adoption/${dto.img }"></div>
    		<span class="pet-title" onclick="location.href='/mypet/adoption/view.action?seqAdoption=${dto.seqAdoption}'">${dto.title }</span>
    		
    		<c:if test="${not empty dto.nameV }">
    		<span class="pet-address">${dto.addressV }</span>
    		<span class="pet-address">${dto.nameV }</span>
    		</c:if>
    		
    		<c:if test="${empty dto.nameV }">
    		<span class="pet-address">${dto.addressS }</span>
    		<span class="pet-address">${dto.nameS }</span>
    		</c:if>
    		
    		<div class="pet-seq"><span>no. ${dto.seqPet}</span><img class="like" src="../resources/images/like.png"></div>
    		<span class="state">${dto.state }</span>    		
    	</div>
		</c:forEach>		
		
		
    <c:if test="${list.size() > 0 }">
    <!-- 페이지바 -->
    <div class="pageSearch" style="clear: both">
	      <!-- 페이지바 -->
	       <ul class="pagination">
	            ${pagebar }
	       </ul>     
     </div>
    </c:if>
    
    <!-- 페이지바 -->
    
    </div>
    
    
    
    

   <!-- content -->
   </div> 
   
   
   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc381e86fe3a181e10d9e43cfc83f97a"></script>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	
	$(".form-control").click(function() {
		$(this).css("color", "#301b01");
	})
</script>


	

