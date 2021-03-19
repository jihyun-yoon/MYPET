<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>MyPet::FAQ 등록하기</title>

<style>



	 body {
	      font-family: 'NanumSquare';
	      color: #301b01;
	    }
     

    #content{        
        width: 1300px;
        margin: 0px auto;
        margin-top: 150px;
        padding: 20px 50px;
        /* border: 1px solid rgb(230,229,235); */
        border: 1px solid black;
       }


    /* main의 너비가 커기면 위의 min-whith도 커져야 footer가 맞습니다.*/
    #content{
        height: 1300px;
    }

	
	.title {
		display: block;
		margin-bottom: 40px;		
		font-size: 30px;
        font-family: 'Jal_Onuel';
        text-align: center;        
	}
	
	.form-control {
		margin-bottom: 10px;
	}
	
	.board-write > select {
		/* width: 300px; */
	}
	
	.board-write {
		/* border: 1px solid black; */
		height: 850px;
		padding: 0px 200px;		
		margin-top: 170px;
	}
	
	.board-write > .board-content {
		min-height: 500px;
		resize: none;
		color: #9c9c9c;
	}
	
	.board-write > input[type="text"] {

		color: #9c9c9c;
	}
	
	
	
	


    /* 버튼 공통 클래스 */

  
/*     .common-btn {
    	margin-top: 30px;
	    margin-left: 350px;
	    width: 100px;
	    height: 40px;
	    background-color: #b27208;
	    color: white;
	    font-family: 'Jal_Onuel';
    } */

    .common-btn:hover {
        color: white;
        outline: none;
    }

    .common-btn:active {
        outline: none !important;
    }


    .board-btn > input:nth-child(1) {
        margin-left: 1060px;
    }
    
    #file {
    	display: none;
    }
    
    .photo {
		border: 1px solid #ececec;
		width: 50px;
		height: 60px;
		padding: 5px;
	}
	
	.board-file {
		margin-top: 20px;
	}
	
	
    .photo > label {
    	/* border: 1px solid black; */
    	width: 40px;
    	height: 30px;
    	/* TODO 연동안됨 */
    	/* background-image: url(/mypet/resources/images/photo.png); */
    	background-image: url(/mypet/resources/images/photo.png);
    	background-size: cover;
    	background-position: 50% 50%;
    }
    
    .photo > span {
    	display: block;
    	margin-top: -6px;
    	text-align: center;
    }
    
    .board-write > select {
    	color: #9c9c9c;
    }
    
    .board-write > select > option {
    	color: #301b01;
    }
    
    /* 버튼 */
    
    .btns{
    	font-family: 'Jal_Onuel';
    	text-align: center;
    	margin-bottom : 100px;  
    	margin-top : 30px;  
    }
    
    .btn {
    	width : 70px;
    	margin : 10px;
    	padding : 10px 12px;
		border : none;
	    color: white;  
	    outline: none !important; 
    }
    
    .btns #add{ background-color: #b27208; }
    
    .btns #cancel{ background-color: #fab018; }
    
   
    /* 추가 */
    .fagtail {
    	position :relative;
    	border : 1px solid #fab018;
    }
    
    .glyphicon{
    	font-size: 3em;
    	position: absolute;
    	top: 30%;
    	left: 10px;
    	color : #fab018;
    	vertical-align: middle;
    	margin-right:10px;
    }
    
	#chat {
		cursor: pointer;
		color: #fab018;
		font-weight: bold;
	}

</style>


    <div id="content">
		
		<div class="board-write">
			<span class="title">FAQ 등록하기</span>
			<form method="POST" action="/mypet/board/faqAddok.action">
			<!-- 각자 본인의 게시판에 들어가면 option이 selected 되어있도록?! 해보고싶어서 넣어봤어요. -->
			<select class="form-control multiple">
				<option selected disabled hidden>게시판을 선택해주세요.</option>
				<option value="1">공지사항</option>
				<option value="2">활동</option>		
				<option value="3" selected>자주하는질문</option>			
			</select>
			<select class="form-control multiple">
				<option selected disabled>FAQ 카테고리</option>
				<option value="1">입양</option>
				<option value="2">봉사</option>		
				<option value="3">굿즈</option>	
				<option value="4">동물병원</option>
				<option value="5">보호소</option>
				<option value="6">기타</option>		
			</select>
	        <input type="text" class="form-control board-title" onclick="this.value=''" placeholder="제목을 입력해주세요.">	        	
	        <textarea class="form-control board-content" onclick="this.value=''" placeholder="내용을 입력해주세요."></textarea> 	    	                      		           		        
	        
	        <div class="photo">
	        	
	        	<input type="file" id="file" class="board-file">	
	        	<label for="file"></label>	
	        	<span>사진</span>	  	       		
	       	</div>	        
	        <div class="btns">
		        <input type="submit" class="btn common-btn" id="add" value="등록">
		        <input type="button" class="btn common-btn" id="cancel" value="취소" onclick="location.href='/mypet/board/faqList.action'">		        
        	</div>
        	</form>
        </div>
        	

    </div>
   



    <script>
		
    /* 제목&내용 클릭 했을 때는 기본폰트 색상 */
    
    $(".board-title").click(function() {
		$(this).css("color", "#301b01")
		
	}); 
    
    
	$(".board-content").click(function() {
		$(this).css("color", "#301b01")
	}); 
	

    
    
    </script>
