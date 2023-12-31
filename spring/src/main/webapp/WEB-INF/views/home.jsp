<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>렌탈 메인 페이지</title>
<style>
.section_tit {
    font-weight: 500;
    font-size: 32px;
    text-align: center;
    line-height: 60px;
    margin: 60px 0 40px 0;
}
.contact_page_input_con {
    border-top: 4px solid #8f0c1b;
    width: 960px;
    margin: 0 auto 40px auto;
}
.contact_page_input_con li {
    height: 60px;
    line-height: 60px;
    border-bottom: 1px solid #dfdfdf;
    font-size: 0;
}
.contact_page_input_tit {
    height: 100%;
    vertical-align: top;
    background: #f4f4f4;
    display: inline-block;
    width: 320px;
    font-size: 16px;
    text-align: center;
    font-weight: 500;
}
.contact_page_input_box {
    width: calc(100% - 320px);
    height: 100%;
    padding: 10px;
    box-sizing: border-box;
    vertical-align: top;
    display: inline-block;
    font-size: 20px;
    font-weight: bold;
}
.input_write_box {
    box-sizing: border-box;
    width: 100%;
    padding: 0 10px;
    height: 40px;
    vertical-align: top;
    border: 1px solid #e4eaec;
    background: #f7f7f7;
}
.privacy_agree_box {
    width: 960px;
    margin: 0 auto;
}
.privacy_agree_tit {
    font-size: 16px;
    font-weight: 500;
    line-height: 40px;
}
.privacy_agree_box textarea {
    line-height: 20px;
    font-size: 14px;
    border: 1px solid #ccc;
    color: #333;
    width: 100%;
    height: 80px;
    padding: 15px;
    box-sizing: border-box;
}
.contact_page_btn {
    background: #222;
    width: 240px;
    margin: 40px auto 80px auto;
    display: block;
    height: 60px;
    text-align: center;
    line-height: 60px;
    font-size: 18px;
    color: #fff;
}
</style>
</head>
<body>
<a href="/consult/register"><button>버튼</button></a>
<div class="main_container">
		<section class="contact_page">
			<h2 class="section_tit">상담신청</h2>
			<ul class="contact_page_input_con">
				<li>
					<p class="contact_page_input_tit">제품</p>
					<div class="contact_page_input_box">
					<input type="text" id="f_product" placeholder="상품을 입력해주세요" class="input_write_box">
					</div>
				</li>
				<li>
					<p class="contact_page_input_tit">고객명</p>
					<div class="contact_page_input_box">
						<input type="text" id="f_name" placeholder="고객명을 입력해주세요" class="input_write_box">
					</div>
				</li>
				<li>
					<p class="contact_page_input_tit">연락처</p>
					<div class="contact_page_input_box">
						<input type="text" id="f_phone" placeholder="연락처를 입력해주세요" class="input_write_box">
					</div>
				</li>
				<li>
					<p class="contact_page_input_tit">상담 가능 시간</p>
					<div class="contact_page_input_box">
						<input type="text" id="f_phone" placeholder="상담가능시간을 입력해주세요" class="input_write_box">
					</div>
				</li>
			</ul>
			<div class="privacy_agree_box">
				<p class="privacy_agree_tit">※ 개인정보 수집 및 이용에 관한 안내</p>
				<textarea>
					[렌탈 서비스 제공을 위한 개인정보 수집 및 이용] 서비스 제공을 위하여 이용자의 개인정보를 아래와 같이 수집하고 있습니다.
					1. 개인정보의 수집 및 이용목적
					원활한 렌탈 상담 및 주문을 위한 참조자료로 아래와 같은 항목의 개인정보를 수집하고 있습니다.
					2. 수집하려는 개인정보 항목
					필수 수집항목 : 이름, 연락처	
					3. 개인정보의 보유 및 이용기간
					수집된 정보는 이용자의 정보 삭제 요구 시까지 보관, 활용하며 수집 및 이용 목적이 달성된 후 해당 정보를 지체 없이 파기합니다. *단순 상담고객 3개월 / 계약 고객 12개월
					4. 개인정보 취급 담당자
					이름 : 임형진 / 연락처 : 1588-3916
					5. 개인정보 수집 동의거부 사항
					이용자의 개인정보는 원활한 상담을 위해 수집하고 있으며, 동의하지 않을 경우 상담 및 주문이 제한됩니다.
				</textarea>
				<div class="agree_check_box">
					<input type="checkbox" id="f_agree">
					<span>개인정보 수집 및 이용에 동의합니다.</span>
				</div>
			</div>
			<a href="#" class="contact_page_btn" id="contact_page_btn">상담신청</a>
		</section>
	</div>
</body>
</html>
