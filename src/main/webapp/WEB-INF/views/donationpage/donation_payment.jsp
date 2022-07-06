<%@ page import="com.spring.ex.dto.DonationDTO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
    <!--====== donationdetails css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationdetails.css">
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

</head>
<body>
<h1 style="text-align: center;">후원하기</h1><br>

<div class="container">
    <section class="mypage_sidebar">
        <%--사이드 메뉴 start--%>
        <article class="mypage_list">
            <ul>
                <li><a href="main">메인화면</a></li>
                <li><a href="donation">후원하기</a></li>
                <li><a href="livedonation">현장기부</a></li>
            </ul>
        </article>
        <%--사이드 메뉴 end--%>

        <%--후원하기 결제정보 입력 start--%>
        <article class="donationheader" style="flex-direction: column">

            <span class="donationinfo">후원정보 : ${data[0].m_dTitle}</span><hr>
            <span class="userinfo">후원자 정보 : <%=session.getAttribute("id")%></span><hr>

            <form action="donation_success">
            <span class="donationmoney">후원금액
                <input type="text" id="donationmoney" name="donationmoney" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="donationtextarea" placeholder="숫자를 입력해주세요" style="width: 50%; margin-left: 10px;"></input>
                <p style="font-weight: bold; margin-left: 10px;">원</p>
                <span class="donationanony">
                <div class="form-check">
                    <label class="form-check-label" for="check1" style="font-size: 20px; margin-top: 5px; ">익명</label>
                    <input type="checkbox" class="form-check-input1" id="check1" name="option1" value="something" style="width: 20px; height: 20px; float: left;">
                </div>
                </span>
            </span><hr>
            <%--결제 버튼그룹 start--%>
            <article class="donationmid">
                <div class="col-lg-12" style="display: flex; justify-content: space-evenly; flex-direction: column">
                        <input type="hidden" id="dID" name="dID" value="${data[0].m_dId}"/>
                        <input type="submit" class="btn btn-outline-secondary" value="결제하기"/>



<%--                    <a href="donation_success"><input type="button" class="btn btn-outline-secondary" value="계좌 이체"></a>--%>
<%--                    <a href="donation_success"><input type="button" class="btn btn-outline-secondary" value="카드 결제"></a>--%>
<%--                    <a href="donation_success"><input type="button" class="btn btn-outline-secondary" value="휴대폰 결제"></a>--%>
<%--                    <a href="donation_success"><input type="button" class="btn btn-outline-secondary" value="페이 결제"></a>--%>


<%--                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="결제하기"></a>--%>
                    <!-- pay js -->
<%--                    <script type="text/javascript">--%>
<%--                        $(document).ready(function(){--%>

<%--                            var IMP = window.IMP;--%>
<%--                            var code = "imp11048506"; //가맹점 식별코드--%>
<%--                            IMP.init(code);--%>

<%--                            $("#checkpay").click(function(e){--%>
<%--                                //결제요청--%>
<%--                                IMP.request_pay({--%>
<%--                                    //name과 amout만있어도 결제 진행가능--%>
<%--                                    //pg : 'kakao', //pg사 선택 (kakao, kakaopay 둘다 가능)--%>
<%--                                    pay_method: 'card',--%>
<%--                                    merchant_uid : 'merchant_' + new Date().getTime(),--%>
<%--                                    name : 'name', // 상품명--%>
<%--                                    amount : document.getElementById('donationmoney').value,--%>
<%--                                    buyer_email : ${user[0].m_email},--%>
<%--                                    buyer_name : ${user[0].m_name},--%>
<%--                                    buyer_tel : ${user[0].m_phone},  //필수항목--%>
<%--                                    //결제완료후 이동할 페이지 kko나 kkopay는 생략 가능--%>
<%--                                    //m_redirect_url : 'https://localhost:8080/payments/complete'--%>
<%--                                }, function(rsp){--%>
<%--                                    if(rsp.success){//결제 성공시--%>
<%--                                        var msg = '결제가 완료되었습니다';--%>
<%--                                        var result = {--%>
<%--                                            "imp_uid" : rsp.imp_uid,--%>
<%--                                            "merchant_uid" : rsp.merchant_uid,--%>
<%--                                            "biz_email" : ${user[0].m_email},--%>
<%--                                            "pay_date" : new Date().getTime(),--%>
<%--                                            "amount" : rsp.paid_amount,--%>
<%--                                            "card_no" : rsp.apply_num,--%>
<%--                                            "refund" : 'payed'--%>
<%--                                        }--%>
<%--                                        console.log("결제성공 " + msg);--%>
<%--                                        $.ajax({--%>
<%--                                            url : '/samsam/insertPayCoupon.do',--%>
<%--                                            type :'POST',--%>
<%--                                            data : JSON.stringify(result,--%>
<%--                                                ['imp_uid', 'merchant_uid', 'biz_email',--%>
<%--                                                    'pay_date', 'amount', 'card_no', 'refund']),--%>
<%--                                            contentType:'application/json;charset=utf-8',--%>
<%--                                            dataType: 'json', //서버에서 보내줄 데이터 타입--%>
<%--                                            success: function(res){--%>

<%--                                                if(res == 1){--%>
<%--                                                    console.log("추가성공");--%>
<%--                                                }else{--%>
<%--                                                    console.log("Insert Fail!!!");--%>
<%--                                                }--%>
<%--                                            },--%>
<%--                                            error:function(){--%>
<%--                                                console.log("Insert ajax 통신 실패!!!");--%>
<%--                                            }--%>
<%--                                        }) //ajax--%>

<%--                                    }--%>
<%--                                    else{//결제 실패시--%>
<%--                                        var msg = '결제에 실패했습니다';--%>
<%--                                        msg += '에러 : ' + rsp.error_msg--%>
<%--                                    }--%>
<%--                                    console.log(msg);--%>
<%--                                });//pay--%>
<%--                            }); //check1 클릭 이벤트--%>

<%--                        }); //doc.ready--%>
<%--                    </script>--%>
                </div>
            </article>
            <%--결제 버튼그룹 end--%>

        </article>
            </form>
        <%--후원하기 결제정보 입력 end--%>
    </section>
</div>

<%@include file="../footer.jsp"%><br><br><br><br>
</body>
</html>
