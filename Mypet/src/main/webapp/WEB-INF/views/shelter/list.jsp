<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>MyPet::보호소</title>
<style>

	 /* 잘 풀리는 오늘 */
    @font-face {
    font-family: 'Jal_Onuel';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    
    /* 나눔 스퀘어*/
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	.nanumsquare {
	    font-family: 'NanumSquare', sans-serif !important;
	}
	
	
	
	#content{
        width: 1300px;
        margin: 0px auto;
        margin-top: 210px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       
        /* margin-right: px; */
    }

    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: auto;
    }
    
    #contentnav{
    	height : 50px;
    	border :none;
    	font-size: 20px;
    	margin:30px 0px;
    }
    
    #contentnav span{
    	margin: 0px 10px;
    }

----------------------------------------------------------------
    /* 페이지 타이틀 */
    
    .board-name {
        /* border: 1px solid black; */
        display: block;
        text-align: center;
        margin-top: 130px;
        margin-bottom: 50px;
        font-size: 30px;
        font-weight : bold;
        /* font-family: 'Jal_Onuel'; */
        /* font-family: 'JSDongkang-Regular'; */
        font-family: 'JSDongkang-Bold';
        color: #301b01;
    }
    
    
    /* 검색 */
    
    .selectsearch{
    	text-align: center;
    	margin : 10px auto;
    }
    
    .sel, .search {
    	float: left;
    	
    	text-align: center;
    	margin : 10px auto;
    }
    
    .sel > select {
    	margin: 0px 10px;
    	height: 30px;
    	padding : 0px 5px;
    }
    
    #search {
		width: 200px;
		display: inline;
		margin : 0px 10px;
	}
	
	.btn {
		font-family: 'Jal_Onuel';
		width : 70px;
    	margin : 10px;
    	padding : 10px 12px;
		border : none;
	    color: white;   
		background-color: #b27208;	
		outline: none !important;	
		border-radius : 5px;
		text-align: center;
	}
	
	.btns :hover {
		text-decoration: none;
	}
	
	/* 지도 */
	#map {
		width: 100%;
		height: 450px;
	}
	
	
	/* 테이블 */
	
	.table {
		margin : 10px auto;
		width : 1000px;
	}
	
	.table th, .table td{
		text-align: center;
	}
	
	.table th:nth-child(1) { width: 100px; }
	.table th:nth-child(2) { width: 250px; }
	.table th:nth-child(3) { width: 400px; }
	.table th:nth-child(4) { width: 250px; }
	
	.table td:nth-child(3) { text-align : left;}
	
	.table .list:hover{
		background-color : #f6da42;
	}
	
	.table .name {
		cursor: pointer;
	} 
    
    
    /* 페이지바 */
    
     .pagebar {
     	width:1200px;
    	padding : 0px 360px;
    	margin-bottom :100px;
    	margin-top : 30px;
    } 
    
    .pagination{
    	width:700px;
    	height:40px;
    }
    
    .pagination> li > a {
		border-color : #ccc;
		color: #301b01;
        font-size: 18px;
        float: left;
	}
	
	.pagination > li > a:hover {
        background-color: #b27208;
        color: white;
    }
	

</style>

	 <div id="content">
		<div id="contentnav">
			<span id="vet"><input type="radio" name="rd" onclick="location.href='/mypet/vet/list.action'">동물병원</span>
			<span id="shelter"><input type="radio" name="rd" id="shelter" checked="checked">보호소</span>
		</div>
		<span class="board-name">보호소</span>

		<!-- <div class="selectsearch"> -->
			<div class="sel">
				<select class="location">
					<option>서울특별시</option>
				</select>
				
				<select class="locationDetail">
					<option>강남구</option>
				</select>
			</div>	
			
			<div class="search">
	           	<input type="text" class="form-control" placeholder="보호소이름" id="search" name="search" required value="${search}">
	           	<input type="button" class="btn" value="검색" id="serch" onclick="$('#searchForm').submit();">
	        	<input type="button" class="btn" value="등록" id="add" onclick="location.href='/mypet/shelter/add.action'">        
	        </div>
		<!-- </div> -->
		
		<div id="map"></div>
		<table class="table table-condan">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
			<tr class="list">
				<td>1</td>
				<td class="name" onclick="location.href='/mypet/shelter/view.action'">보호소이름</td>
				<td>서울시 강남구 역삼동</td>
				<td>0507-1234-5678</td>
			</tr>
			
			<tr class="list">
				<td>2</td>
				<td class="name">보호소이름</td>
				<td>서울시 강남구 역삼동</td>
				<td>0507-1234-5678</td>
			</tr>
			
			<tr class="list">
				<td>3</td>
				<td class="name">보호소이름</td>
				<td>서울시 강남구 역삼동</td>
				<td>0507-1234-5678</td>
			</tr>
			
			<tr class="list">
				<td>4</td>
				<td class="name">보호소이름</td>
				<td>서울시 강남구 역삼동</td>
				<td>0507-1234-5678</td>
			</tr>
			
			<tr class="list">
				<td>5</td>
				<td class="name">보호소이름</td>
				<td>서울시 강남구 역삼동</td>
				<td>0507-1234-5678</td>
			</tr>
		</table>
		
		<div class="pagebar">
			<ul class="pagination">
                <li><a href=\"#!\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a></li>
                <li><a>1</a></li>
                <li><a>2</a></li>
                <li><a>3</a></li>
                <li><a>4</a></li>
                <li><a>5</a></li>
                <li><a>6</a></li>
                <li><a>7</a></li>
                <li><a>8</a></li>
                <li><a>9</a></li>
                <li><a>10</a></li>
                <li><a href=\"#!\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>
            </ul>      
		</div>
	</div>
	
	<!-- 지도 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a71ed926053f00dc51c27f804020abc9"></script>
	
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(37.499293, 127.033236),
			level : 8
		};

		var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
	</script>
