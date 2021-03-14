<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>MyPet::FAQ</title>	

<style>



 body {
        font-family: 'JSDongkang-Regular';
    }

    /* header */
    #header{
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 10;
        height: 200px;
        background-color: #F6DA42;
        padding: 20px 100px;
    }

    .logo {
        margin: 0px auto;
        /* border: 1px solid black; */
        width: 180px;
        height: 180px;
        background-image: url('../image/logo.png');
        background-size: cover;
        background-position: 50% 50%;
    }

    /* content */
 

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
        height: 1000px;
    }


    /* footer */
    #footer{
        clear: both;
        position: relative;
        height: 100px;
        margin-top: 1px;
        padding-top: 34px;
        border-top: 1px solid #eef1f3;
        text-align: center;
        background-color: #F6DA42;
    }

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

    /* 테이블 css */
    table {
        font-size: 16px;
    }

    .tr2:hover{
   		cursor: pointer;
        background-color: #F6DA42;
    }
   
    .firsttd {
        width: 100px;
        text-align: center;
    }

    .sectd {
        width: 200px;
        text-align: center;
    }

    .thirdtd {
        width: 700px;
        text-align: center;
    }

	
	.tr3 td{
		text-align: center;
		margin-top:20px;
	}
	
   
    /* 번호, 날짜, 조회수 */
    .tr2 > td:nth-child(1), td:nth-child(2)/* , td:nth-child(4) */ {
        text-align: center;
    }

    /* 제목 */
    .headtr > td:nth-child(3) {
        text-align: left;
    }
    
    /* 더보기 */
/*     .more {
    	position: absolute;
    	right: 100px;
    	text-align: right;
	    position: absolute;
	    right: 19px;
	    top: 50%;
	    margin-top: -4px;
	    width: 15px;
	    height: 9px;
	    background-position: -240px -280px;
    }
    
 */
    /* 검색창 & 버튼 박스 */
    .pageSearch {
        /* border: 1px solid black; */
        width: 1200px;
        height: 130px;
        margin-top: 50px;
        padding: 0px 360px;
    }

    /* 게시판 검색창 공통 클래스 */
    .search-text {
        width: 365px;
        float: left;
        margin-right: 20px;
        font-size: 16px;
    }

    /* 버튼 공통 클래스 */

    .btn {
        font-family: 'JSDongkang-Regular';
    }
    .common-btn {
        background-color: #b27208;
        color: white;
        float: right;
    }

    .common-btn:hover {
        color: white;
        outline: none;
    }

    .common-btn:active {
        outline: none !important;
    }
    
    .category #adopt, .category #volunteer, .category #goods, .category #vet, .category #shelter, .category #etc{
    	border: none;
		background-color: transparent;
		text-decoration : none;
		color : #fab018;
		font-weight: bold;
		font-family: 'JSDongkang-Regular';
		font-size : 1.2em;
		padding : 6px 12px;
	}
	
	.category button{
		outline-color: #fab018;
	}

    /* 페이지바 */

    .pagination {
        width: 700px;
        height: 40px;
    }
    .pagination> li > a {
		border-color : #ccc;
		color: #301b01;
        font-size: 16px;
        float: left;
	}

    .pagination>li>a:hover {
        background-color: #b27208;
        color: white;
    }

    .board-btn {
       /*  border: 1px solid black; */
        height: 50px;
    }

    .board-btn > input:nth-child(1) {
        margin-left: 1125px;
    }
    




</style>


    <div id="content">
        <span class="board-name">FAQ</span>
        <div class="board-btn">
        	<span class="category">
	        	<button class="item" id="adopt">입양</button>
				<button class="item" id="volunteer">봉사</button>
				<button class="item" id="goods">굿즈</button>
				<button class="item" id="vet">동물병원</button>
				<button class="item" id="shelter">보호소</button>
				<button class="item" id="etc">기타</button>
			</span>
        	<span><input type="button" class="btn common-btn" value="글쓰기" id="add" onclick="location.href='/mypet/board/faqAdd.action'"></span>        
        </div>
  
        <table class="table table-condensed" id="table">
            <tr class="headtr">
                <th class="firsttd">번호</th>
                <th class="sectd">카테고리</th>
                <th class="thirdtd">제목</th>
                <!-- <th class="thirdtd">날짜</th> -->         
            </tr>
         
  			<tr class="tr2">
                <td>1</td>
                <td>입양</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> 
            	<input type="button" value="수정" id="delete" class="btn" onclick="location.href='/mypet/board/faqEdit.action'">
            	<input type="button" value="삭제" id="delete" class="btn" onclick="location.href='/mypet/board/faqDelete.action'">
            	FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다.
            	</td>
            </tr>
            
            <tr class="tr2">
                <td>2</td>
                <td>봉사</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다. FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>3</td>
                <td>굿즈</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>4</td>
                <td>동물병원</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>5</td>
                <td>보호소</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>6</td>
                <td>기타</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>7</td>
                <td>입양</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>8</td>
                <td>봉사</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>9</td>
                <td>굿즈</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>
            
            <tr class="tr2">
                <td>10</td>
                <td>기타</td>
                <td>FAQ 제목입니다.</td>
            </tr>
            <tr class="tr3">
            	<td colspan="3"> FAQ내용입니다.</td>
            </tr>

            <!-- 10개 vs 15개 -->
            
            <!--
            <tr class="tr2">
                <td>11</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>12</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>13</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>14</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            <tr class="tr2">
                <td>15</td>
                <td>공지사항 제목입니다.</td>
                <td>2021-01-01</td>
                <td>32</td>
            </tr>
            -->
        </table>

        <!-- 글쓰기 버튼 아래 -->
        <!-- <div class="board-btn"><input type="button" class="btn common-btn" value="글쓰기"></div> -->
        <!-- 페이지바/검색창 -->
        
        <div class="pageSearch">
            <!-- 페이지바 -->
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

            <!-- 검색창 & 검색 버튼 -->
            <input type="textbox" class="form-control search-text">
            <input type="button" class="btn common-btn" value="검색">
        </div>
    </div>
   
</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    $(document).ready(function(){

        $("#table tr:odd").addClass("odd");
        $("#table tr:not(.odd)").hide(); 
        $("#table tr:first-child").show(); //열머리글 보여주기

        $("#table tr.odd").click(function(){
            $(this).next("tr").toggle();
            $(this).find(".arrow").toggleClass("up");

        });
       

    });

</script>

    


