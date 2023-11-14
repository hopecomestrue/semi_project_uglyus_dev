<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<style>body{margin-top:20px;}
.card-style1 {
    box-shadow: 0px 0px 10px 0px rgb(89 75 128 / 9%);
}
.border-0 {
    border: 0!important;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: 0.25rem;
}

section {
    padding: 120px 0;
    overflow: hidden;
    background: #fff;
}
.mb-2-3, .my-2-3 {
    margin-bottom: 2.3rem;
}

.section-title {
    font-weight: 600;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
}
.text-primary {
    color: #ceaa4d !important;
}
.text-secondary {
    color: #15395A !important;
}
.font-weight-600 {
    font-weight: 600;
}
.display-26 {
    font-size: 1.3rem;
}

@media screen and (min-width: 992px){
    .p-lg-7 {
        padding: 4rem;
    }
}
@media screen and (min-width: 768px){
    .p-md-6 {
        padding: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .p-sm-2-3 {
        padding: 2.3rem;
    }
}
.p-1-9 {
    padding: 1.9rem;
}

.bg-secondary {
    background: #15395A !important;
}
@media screen and (min-width: 576px){
    .pe-sm-6, .px-sm-6 {
        padding-right: 3.5rem;
    }
}
@media screen and (min-width: 576px){
    .ps-sm-6, .px-sm-6 {
        padding-left: 3.5rem;
    }
}
.pe-1-9, .px-1-9 {
    padding-right: 1.9rem;
}
.ps-1-9, .px-1-9 {
    padding-left: 1.9rem;
}
.pb-1-9, .py-1-9 {
    padding-bottom: 1.9rem;
}
.pt-1-9, .py-1-9 {
    padding-top: 1.9rem;
}
.mb-1-9, .my-1-9 {
    margin-bottom: 1.9rem;
}
@media (min-width: 992px){
    .d-lg-inline-block {
        display: inline-block!important;
    }
}
.rounded {
    border-radius: 0.25rem!important;
}
</style>

<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div class="card card-style1 border-0">
                    <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                        <div class="row align-items-center">
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <img src="<%=request.getContextPath() %>/images/brand_image (1).png" alt="...">
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                    <h3 class="h2 text-white mb-0">제목</h3>
                                    
                                    <span class="text-primary">아이디</span>
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">소요시간:</span> 30분컷</li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">카테고리:</span> 한식/볶음밥</li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">내용:</span> <br>
                                    청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다
									이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하
									되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가</li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">해시태그:</span> #간단요리, #다이어트요리, #가벼운 요리</li>
                                    <li class="display-28"><span class="display-26 text-secondary me-2 font-weight-600"></span> 댓글 0  좋아요 7</li>
                                </ul>
                                <ul class="social-icon-style1 list-unstyled mb-0 ps-0">
                                    <li><a href="#!"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#!"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#!"><i class="ti-pinterest"></i></a></li>
                                    <li><a href="#!"><i class="ti-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div>
                    <span class="section-title text-primary mb-3 mb-sm-4">재료</span>
                    <table style="width:600px; text-align: center ">
                    	<tr>
                    		<th colspan="2">필수재료</th>
                    		<th colspan="2">부재료</th>
                    		<th colspan="2">양념</th>
                    	</tr>
                    	<tr>
                    		<td>양파</td>
                    		<td>10개</td>
                    		<td>사과</td>
                    		<td>1개</td>
                    		<td>소금</td>
                    		<td>1술</td>
                    	</tr>
                    </table>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-sm-5">
                        <ol type="1">
                        	<li>"Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
                        	<li>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</li>
                        	<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
                        </ol>
                        <div>
                            <span class="section-title text-primary mb-3 mb-sm-4">Education</span>
                            <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
                            <p class="mb-1-9">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
              
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="/views/common/footer.jsp" %>