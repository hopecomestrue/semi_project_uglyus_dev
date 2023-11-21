<%@page import="com.veg.hjj.member.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	Member loginAdmin=(Member)session.getAttribute("loginMember");
    %>
    <%if(loginAdmin!=null&&loginAdmin.getAdminCheck().equals("Y")){ %>
<%@ include file="/views/admin/common/header.jsp" %>
	<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }

      .admin-title{
        color: black;
        text-decoration: none;
      }

      #btn_submit{
        margin-left: 80%;
      }
      
      .refund-detail-user{
        width: 70%;
        margin : 0 auto;
      }
      
    </style>

<body>
<form>
<h1 style="text-align: center; margin-top: 5%;">주문 환불 상세 현황</h1>

<div class="refund-detail-user">
<table class="table table-bordered">
    <tr>
        <th>주문 상세 번호</th>
        <td>123456789</td>
    </tr>
    <tr>
      <th>주문 아이디</th>
      <td>admin123</td>
    </tr>
    <tr>
      <th>이름</th>
      <td>홍길동</td>
    </tr>
    <tr>
      <th>전화번호</th>
      <td>010-1234-1234</td>
    </tr>
    <tr>
      <th>상품 내용</th>
      <td>상품명, 수량</td>
    </tr>
    <tr>
        <th>주소</th>
        <td>서울시 금천구</td>
    </tr>
    <tr>
      <th>주문 날짜</th>
      <td>2023-11-10</td>
    </tr>
    <tr>
        <th>결제 수단</th>
        <td>카카오 페이</td>
    </tr>    
    <tr>
        <th>총 금액</th>
        <td>￦ 83,000</td>
    </tr>    
    <tr>
        <th>환불 사유</th>
        <td>고객 단순 변심</td>
    </tr>    
    <tr>
      <th>주문 체크</th>
      <td>
        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
            <option selected>대기중</option>
            <option value="1">승인</option>
            <option value="2">거부</option>
          </select>
      </td>
    </tr>
  </table>
</div>
  <button type="submit" class="btn btn-primary" id="btn_submit">등록</button>
</form>

</main>
<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="/views/admin/common/footer.jsp" %>
<%}%>