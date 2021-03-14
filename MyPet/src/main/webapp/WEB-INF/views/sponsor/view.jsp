<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <title>mypet add</title> 


<!--  이거는 스타일 수정 -->
<style>
 <style>


/* 광고 슬라이드 */
/*
#sponad{
width:1200px;
margin: 0 auto;
height:300px;
}
*/
/* 효과 슬라이드  */
        #sponad ul,li{
            list-style: none;
            margin: 0px;
            padding: 0px;
        }

        [name="slide"]{
            display: none;
        }
        /*slidebox = prepare*/
        #sponad {
           width: 100%;
           margin: 0px auto;
           height: 200px;
        }
        #sponad img{
            max-width: 100%;
            width: 1200px;
            height: 200px;
        }
        #sponad .slidelist{
            white-space: nowrap;
            font-size: 0;
            overflow: hidden;
        }
        #sponad .slideitem{
            position: relative;
            display: inline-block;
            vertical-align: middle;
            width: 100%;
            transition: all .35s;
        }
        
        #sponad .slideitem label{
            position: absolute;
            z-index: 1;
            top: 50%;
            transform: translateY(-50%);
            padding: 20px;
            border-radius: 50%;
            cursor: pointer;
        }

label .left{
    left:20px;
    background-color: #f1acac;
    background-position: center center;
    background-size: 50%;
    background-repeat: no-repeat;
}
label .right{
    right:20px;
    background-color: #f1acac;
    background-position: center center;
    background-size: 50%;
    background-repeat: no-repeat;

}


[id="slide01"]:checked ~.slidelist .slideitem {transform: translateX(0); animation: slide01 20s infinite;}
[id="slide02"]:checked ~.slidelist .slideitem {transform: translateX(-100%);animation: slide02 20s infinite;}
[id="slide03"]:checked ~.slidelist .slideitem {transform: translateX(-200%); animation: slide03 20s infinite;}
[id="slide04"]:checked ~.slidelist .slideitem {transform: translateX(-300%); animation: slide04 20s infinite;}


@keyframes slide01{
    0%{left: 0%;}
    23%{left: 0%;}
    25%{left: -100%;}
    48%{left: -100%;}
    50%{left: -200%;}
    73%{left: -200%;}
    75%{left: -300%;}
    98%{left: -300%;}
    100%{left: 0%;}
}

@keyframes slide02{
    0%{left: 0%;}
    23%{left: 0%;}
    25%{left: -100%;}
    48%{left: -100%;}
    50%{left: -200%;}
    73%{left: -200%;}
    75%{left: 100%;}
    98%{left: 100%;}
    100%{left: 0%;}
}

@keyframes slide03{
    0%{left: 0%;}
    23%{left: 0%;}
    25%{left: -100%;}
    48%{left: -100%;}
    50%{left: 200%;}
    73%{left: 200%;}
    75%{left: 100%;}
    98%{left: 100%;}
    100%{left: 0%;}
}

@keyframes slide04{
    0%{left: 0%;}
    23%{left: 0%;}
    25%{left: 300%;}
    48%{left: 300%;}
    50%{left: 200%;}
    73%{left: 200%;}
    75%{left: 100%;}
    98%{left: 100%;}
    100%{left: 0%;}
}

/* 1번 테이블 안의 tr- td 1첫번쨰것*/
.board-name {
        /* border: 1px solid black; */
        display: block;
        text-align: center;
        margin-top: 130px;
        margin-bottom: 50px;
        font-size: 30px;
        font-family: 'Jal_Onuel';
        /* font-family: 'NanumSquare';
        font-weight: bold; */
        color: #301b01;
    }
    .board-write {
		/* border: 1px solid black; */
		height: 500px;
        width: 500px;
        padding: 0 30px;	
	}

    /* 테이블 css */
    table {
        font-size: 16px;
    }

    .tr2:hover {
        background-color: #F6DA42;
    }
   
    .firsttd {
        width: 150px;
        text-align: center;
    }

    .sectd {
        width: 300px;
        text-align: center;
    }

    .fourthtd {
        width: 150px;
        text-align: center;
    }

   
    /* 번호, 날짜, 조회수 */
    .tr2 > td:nth-child(1),.tr2 > td:nth-child(2),.tr2 > td:nth-child(3) {
        text-align: center;
    }

    /* 제목 */
    .headtr > td:nth-child(2) {
        text-align: left;
    }

    /* 검색창 & 버튼 박스 */
    .pageSearch {
        /* border: 1px solid black; */
        width: 600px;
        height: 130px;
        margin: 0px auto;
        margin-top: 25px;
        
        padding: 0px 85px;
    }

    /* 게시판 검색창 공통 클래스 */
    .search-text {
        width: 340px;
        float: left;
        margin-right: 20px;
        font-size: 16px;
    }

    /* 버튼 공통 클래스 */

    .btn {
         font-family: 'NanumSquare';
    }
    
    .common-btn {
        background-color: #b27208;
        color: white;
        float: left;
        margin-right: 10px;
        font-family: 'Jal_Onuel';
        transition: 0.3s all;
        outline: none;
        border: 0px;
    }

    .common-btn:hover {
        color: #b27208;
        font-weight: bolder;
        background-color: #f6da42;
        outline: none;
        border: 0px;
    }

    .common-btn:active {
        outline: none !important;
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
        transition: 0.3s all;
    }

    .board-btn > input:nth-child(1) {
        margin-left: 300px;
    }
   


    /*여기서 부터 수정*/

    #content{
        height: 1200px;
    }

    .totalspon{
        height: 50px;
        padding: 10px;
        font-size: 24px;
        font-weight: bolder;
        margin-bottom: 10px;
    }
    .totalspon >span{
        color: #f6da42;
        transition: 1s all;
    }
    .totalspon:hover  >span {
        color: aliceblue;
        background-color: #b27208;
    }

    #tblsponsor{
        width: 1200px;
        height: 700px;
    }

    #tblsponsor tr,#tblsponsor td{
        vertical-align: top;
    }

    #tblsponsor #tblspontd1{
        width: 700px;
    }

    /*두번쨰 테이블 정리 tblspontd1*/
    #tblspontd1 .tblspontd1 {
        height: 400px;
        
    }
    #tblspontd1 .tblspontd1 tr, #tblspontd1 .tblspontd1 td, #tblspontd1 .tblspontd1 th {
        vertical-align: top;
        height: 40px;

    }

    /* 보호소 상세 소개 */
    .she_main{
        text-align: center;
        height: 40px;
        font-size: 16px;
        font-weight: bolder;
        background-color: #b27208;
        color: white;
        padding-top: 9px;
    }

    .cldd{}
    
    .she_info{
        margin-bottom: 13px;
        border-bottom: 1px solid #e3e3e3;
    }
    .she_info:hover{
        font-weight: bolder;
    }
    .she_content{
        resize: none;
        outline: none;
        pointer-events: none;
    }
    .she_info > span:first-child{
        display: inline-block;
        width: 95px;
        text-align: center;
    }

    #spon_addimg{
        display: block;
        float: left;
        width: 150px;
        height: 150px;
        position: relative;
        top: -80px;
        left: 50px;
        transition: 0.5s all;
    }

    
    #spon_addimg:hover{
        transform: rotate(360deg);
        opacity: 0;
    }


/**/

.modal-content{
}

.spon_modal_img{
    width: 60px;
    height: 60px;
}

.modal-header{
height: 80px;
font-size: 24px;
font-weight: bolder;
background-color: #f1acac;

}

.cardnumber_span{
    text-align: center;
    width: 400px;
    margin: 10px 31px;
    display: inline-block;
}

.cardnumber input[type=number]{
    text-align: center;
    width: 70px;
    height: 30px;
    font-size: 16px;
    font-weight: bolder;
    margin-left: 10px;
    border: 1px solid #b27208;
    border-radius: 3px;
}

.cardnumber input[type=number]:nth-child(2),.cardnumber input[type=number]:nth-child(4){
    -webkit-text-security:disc;
}

.cardnumber input[type=number]:nth-child(2):hover,
.cardnumber input[type=number]:nth-child(4):hover{
    background-color: #f1acac;
    color: #e3e3e3;
    -webkit-text-security:none;
}


input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}




      .modal-body{
            background-color: #e3e3e3;
            font-weight: bolder;
            font-size: 16px;
        }
        .cardinfo{
            background-color: white;
        }
        .paytext{
            font-size: 18px;
            text-align: center;
        }
        .cardinfo_sub{
            margin: 15px 0px;
            padding: 15px 0px;
            border-bottom: 1px solid #e3e3e3;
        }

        .she_reci{
            font-size: 18px;
            font-weight: bolder;

        }

        .cardinfo_sub>span:first-child , .she_reci>span:first-child  {
            display: inline-block;
            width: 100px;
            text-align: center;

        }
        .card_pass{
            width: 300px;
            height: 30px;
            margin: 0px auto;
            margin-left: 75px;
            text-align: center;
            outline: none;
            border-radius: 3px;
            border: 1px solid #b27208;

        }
        .authdate{
            display: inline-block;
            width: 300px;
            height: 30px;
            margin: 0px auto;
            margin-left: 150px;
        }
        .authdate input{
            height: 30px;   
            text-align: center;
            outline: none;
            border-radius: 3px;
            border: 1px solid #b27208;
        }

        .spon_auto_btn{
            border: 0;
            background-color: #b27208;
        }

        .spon_money > input[type=number]{
            width: 80px;
            border: 0;
        }

        #auth{
            height: 30px;   
            text-align: center;
            outline: none;
            border-radius: 3px;
            border: 1px solid #b27208;
        }
       
        .auth_span{
         width: 360px;
         display: inline-block;
         margin: 0px 50px;
        }
       
        .spon_auth_che, .spon_auth_btn{
            height: 30px;   
            text-align: center;
            outline: none;
            border-radius: 3px;
            width: 80px;
            background-color: #f1acac;
            border-color: #f1acac;
            color:white;
            transition: 0.5s all;
            margin: 0px 5px;
        }
        .cardinfo_btn{
            padding-bottom: 15px;
            padding-left: 20px;
        
        }
        .modal-footer button{
            background-color: #f1acac;
            border-color: #f1acac;
            font-size: 16px;
            font-weight: bolder;
            color:white;
            transition: 0.5s all;
        }
        .modal-footer button:hover{
            background-color: #F6DA42;
            border: 1px solid #F6DA42;

        }

    </style>


<!-- 요 칸안에 내용작성하세요 -->
<div id="content">
	        <div id="contentnav">
            개인 서브네비입니다.
        </div>
        <hr>
        <div id="sponad">
            <input type="radio" name="slide" id="slide01" checked>
            <input type="radio" name="slide" id="slide02">
            <input type="radio" name="slide" id="slide03">
            <input type="radio" name="slide" id="slide04">
            <ul class="slidelist">
                <li class="slideitem">
                    <div>
                        <label for="slide04" class="left"></label>
                        <label for="slide02" class="right"></label>
                        <img alt="step1" src="/mypet/resources/images/sponsor/catty14.png">

                    </div>
                </li>
                <li class="slideitem">
                    <div>
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                        <div class="img"><img alt="step2" src="/mypet/resources/images/sponsor/catty02.png"></div> 
                    </div>
                </li>
                <li class="slideitem">
                    <div>
                        <label for="slide02" class="left"></label>
                        <label for="slide04" class="right"></label>
                        <img alt="step3" src="/mypet/resources/images/sponsor/catty21.png"> 
                         </div>
                </li>
                <li class="slideitem">
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide01" class="right"></label>
                        <img alt="step4" src="/mypet/resources/images/sponsor/catty10.png"> 
                    </div>
                </li>
            </ul>
        </div>

        <hr>
        <div class="totalspon">
           2020년 전체 후원 누적 금액 : <span class="totalspon_money">123,453,566</span>원 감사합니다. 
        </div>
        <table id="tblsponsor">
            <tr>
                <td id="tblspontd1">
                    <table class="table table-condensed tblspontd1">
                        <tr class="headtr">
                            <th class="sectd">보호소명</th>
                            <th class="firsttd">전화번호</th>
                            <th class="fourthtd">후원 금액</th>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
                        </tr>
                        <tr class="tr2">
                            <td>보호소명</td>
                            <td>010-1234-5678</td>
                            <td>100,000,000 원</td>
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

                </td>
                <!--위가 1번 tr td-->
                <td>
                    <div class="board-write">
                        <div class="she_main"> 보호소 소개 </div>
                        <hr>
                        <div class="she_name she_info"><span>보호소</span>강아지좋아</div>
                        <div class="she_add she_info"><span>주소</span>서울 특별시 영등포구 테레한로 1204호-304</div>
                        <div class="she_tel she_info"><span>전화번호</span>010 - 1234 - 5678</div>
                        <div class="account she_info"><span>계좌번호</span>쌍용금융 <span class="ac_number">1234567890123411</span>
                        </div>
                        <div class="she_info">보호소 소개</div>
                                	
                        <textarea class="form-control board-content she_content" onclick="this.value=''" style="height: 180px;" placeholder="보호소소개" disabled></textarea> 	    	                      		
                    </div>	

                    <div class="board-btn">
                        <input type="button" class="btn common-btn" value="후원하기" data-toggle="modal" data-target="#spon_mainmodal">

                        <input type="button" class="btn common-btn" value="내역조회"></div>
                        
                        <img src="/mypet/resources/images/sponsor/catty01.png" alt=""
                        id="spon_addimg">
                </td>
            </tr>

        </table>
</div>


   <!--  modal  esc 방지 ! data-keyboard="false" -->
    <div class="modal fade" id="spon_mainmodal" tabindex="-1" role="dialog" aria-labelledby="spon_modal" data-backdrop="static">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <img src="/mypet/resources/images/sponsor/myhome.png" class="spon_modal_img">
                MyHomePay
            </div>
            <div class="modal-body">
            <div class="she_reci"><span>받는분</span>MYPET동물유치원</div>
            
            <div class="paytext"> 신용 / 체크카드 </div>
            
            <div class="cardinfo">
            <div class="cardnumber cardinfo_sub">
                <span>카드번호</span>
                <span class="cardnumber_span">
                <input type="number" inputmode="numeric" min="1000" max="9999" maxlength="4" oninput="length(this);" required>
                &nbsp;&nbsp;- 
                <input type="number" inputmode="numeric" min="1000" max="9999" maxlength="4" oninput="length(this);" required>
                &nbsp;&nbsp;- 
                <input type="number" inputmode="numeric" min="1000" max="9999" maxlength="4" oninput="length(this);" required>
                &nbsp;&nbsp;-
                <input type="number" inputmode="numeric" min="1000" max="9999" maxlength="4" oninput="length(this); " required>

            </span>
             
            
             </div>
            
        <div class="cardinfo_sub">
            <span>유효기간</span>
            <span class="authdate">
            <input type="number" inputmode="numeric" min="1" max="12" maxlength="2" oninput="length(this);" placeholder="MM" required>
            &nbsp;&nbsp;&nbsp; /&nbsp;&nbsp;&nbsp;
            <input type="number" inputmode="numeric" min="00" max="99" maxlength="2" oninput="length(this);" placeholder="YY" required>
        </span>
        </div>
       
        <div class="cardinfo_sub">
            <span>비밀번호</span>
            <input type="number" class="card_pass" inputmode="numeric" min="0" max="99" maxlength="2" oninput="length(this);"
            placeholder="카드 비밀번호 앞 두자리" required>
        </div>
        
        <div class="cardinfo_sub"> 
            <span>인증번호</span>
            <span class="auth_span">
            <input type="number" id="auth" inputmode="numeric" min="0" max="999999" maxlength="6" oninput="length(this);"
            placeholder="인증번호" required>
            
            <input type="hidden" id="authcopy">

            <input type="button" value="확인" class="spon_auth_che" >
            <input type="button" value="생성" class="spon_auth_btn" >
            <span class="spon_timer">00분00초</span>
            </span>
        </div>

        <div class="cardinfo_btn">
           
            <span class="spon_money" style="margin-right: 150px;">
                <label for="money"></label>
                송금액 <small>(단위 : 원)</small>
                <input type="number" id="money" name="money" inputmode="numeric"
                step="1000" maxlength="7" oninput="length(this);"
                required>
                원
            </span>

            <label for="agree">
            <span class="agree_info">개인정보제공 동의</span>
            <input type="checkbox" id="agree">             
            </label>
            


        </div>
   
    </div>
            <div style="margin-top: 15px;margin-left: 25px;">해당 카드의 명의자분 성함으로 결제가 진행됩니다.</div>
            
        </div>
            <div class="modal-footer">
              <button type="button" class="btn spon_modalbtn_save paycheck">후원결제</button>
              <button type="button" class="btn spon_modalbtn_false" data-dismiss="modal">닫기</button>
            </div>
          </div>
        </div>
      </div>


<script>


function length(max){
    if(max.value.length>max.maxLength){
        max.value =max.value.slice(0,max.maxLength);
    }
}

/*타이머 */
$(".spon_auth_btn").click(function(){

    alert("인증번호 : "+555555);
    $("#authcopy").val(555555);
var time = 180;
var min = "";
var sec = "";

var timer = setInterval(function(){
    min =parseInt(time/60);
    sec =time%60;
    $(".spon_timer").text(min+"분"+sec+"초");
    time--;
    if(time<0){
        clearInterval(timer);
        $(".spon_timer").text("시간초과");
    }

},1000);


});


$(".agree_info").click(function(){
    var txtinfo = "제1조 (구매신청) 이용자는 인터넷을 이용하여 이하의 방법에 의하여 구매를 신청합니다. 성명, 주소, 전화번호 입력  상품의 선택"+
    "제 2조 (구매계약의성립) 등등등..";
    
    alert(txtinfo);
})

$(".paycheck").click(function(){
    alert("결제가 완료되었습니다. + 정보 어쩌구 + 후원해 주셔서 감사합니다.");
    $(".spon_modalbtn_false").click();
});

$(".spon_auth_che").click(function(){
    alert("인증성공했다고하자.");

    $("#auth").css("background","#e3e3e3") .attr("disabled",true);

});



</script>