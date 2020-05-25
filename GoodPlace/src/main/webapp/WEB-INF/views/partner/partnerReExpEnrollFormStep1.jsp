<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/partner/partnerCommon.css" />
<style>
    /*공통*/
    /* font */
    *{font-family: 'Noto Sans KR', sans-serif;}
    /* 여백 초기화 */
     body, div, ul, li, dl, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form {margin: 0; padding: 0;}
    /* a 링크 초기화 */
    a {color: #333333; text-decoration: none;}
    /* body css */
    body {background: #fff;}
    #wrap {width: 1200px; height: 900px; margin: 0 auto; font-size: 18px; color: #fff; text-align: center; text-transform: uppercase; }
    #contents{height: 1700px;}

    /* 거절div */
    #comment{width:900px; padding:20px; margin-top: 50px; margin-bottom: 50px; border: 1px solid firebrick; border-radius: 4px;}
    #comment #comment1{color:firebrick; font-size: 15px; text-align: right;}
    #comment table p{width: 100px; text-align: center; margin-right: 20px; font-weight: bold;}
    #comment table tr{vertical-align: top;}
    #comment table input[type=text]{height: 35px; width: 200px; border-radius: 4px; border: 1px solid #bebebe;}
    #comment textarea{width: 750px; height: 100px; resize: none; border: 1px solid #bebebe; border-radius: 4px; font-size: 15px;}

    /* 중앙 박스(div#stepOne) 내부공통 css */
    #stepOne{width:950px; border: 1px solid #dbdbdb;}
    #stepOne table th{width: 200px; padding-top: 30px; padding-left: 70px; vertical-align: top;}
    #stepOne table td{width:500px; padding-top: 30px; padding-left: 50px;}
    #stepOne table td label{font-size: 15px; padding-left: 10px;}
    h5{color: cornflowerblue; padding-bottom: 5px;} /*중앙박스 외 상단에도 하나 있음*/
    #stepOne table td textarea{width: 500px; height: 170px; border-radius: 4px; resize: none; border: 1px solid #dbdbdb;}
    #stepOne table input[type=text]{width: 500px; height: 30px; border-radius: 4px; border: 1px solid #dbdbdb; }
    #stepOne table td span input[type=number]{width:200px; height: 30px;border-radius: 4px; margin-left: 20px;border: 1px solid #dbdbdb;}
    #stepOne table select{width: 200px; height: 30px;;border-radius: 4px; }
    #stepOne label{padding-left: 10px;}

    /*하단 버튼 css*/
    #btns{width:950px; text-align: right; margin-top: 20px; margin-bottom: 20px; margin-right: 20px;}
    button{cursor: pointer;  width: 140px; height: 35px; }
    #cancle{border: 1px solid #dbdbdb; border-radius: 4px; font-size: 15px;}
    #cancle:hover{background-color: white; border: solid 1px #dbdbdb;}
    #next{border: 1px solid #34538a; border-radius: 4px; font-size: 15px;}
    #next:hover{color: #34538a; background-color: white; font-weight: bold; border: 1px solid #34538a;}
    #next{color: white; background-color: #34538a;}
</style>
</head>
<body>
<div id="wrap">
    <jsp:include page="../common/partnerMenubar.jsp"/>
    <div id="contents" >
        <div id="tab"></div>
        <div class="sitemap">
            <a href="#"><span style="height: 30px;">HOME</span></a>
            <a href="#"><span> &gt; 체험관리</span></a>
            <a href="#"><span style="margin-right: 30px;"> &gt; 체험정보입력</span></a>
        </div>
        <br clear="both">
        <div class="con" style="color:#000">
            <span id="page_title">
                <img src="${pageContext.request.contextPath}/resources/images/partner/집로고.jpg" style="vertical-align: middle;">
                <p class="title_tt">체험관리상세</p>
            </span><br>
            <div id="comment">
                <div style="text-align: center; margin-bottom: 20px;">
                    <h2>체험 신청이 반려되었습니다.</h2>
                </div>
                <table>
                    <tr>
                        <td><p>거절사유</p></td>
                        <td><input type="text" value="적절하지 못한 내용" readonly></td>
                    </tr>
                    <tr>
                        <td><p>거절상세</p></td>
                        <td><textarea id="" name="" readonly>사유입니다</textarea></td>
                    </tr>
                </table>
                <p id="comment1">사유 확인 후 내용을 변경하여 다시 등록 요청을 해주세요. </p>
            </div>
            <div style="text-align: center;">
                <span><h2>체험 정보 입력</h2></span>
                <h5 style="margin-bottom: 50px;">안내에 따라 체험 내용을 정확하게 설명하여 주세요. /  상품 등록이 완료되면, 승인을 위한 심사가 진행됩니다. </h5>
            </div>
            <div id="stepOne">
            
            
            <form action="" method="post">
                <table>
                    <tr>
                        <th>* 카테고리</th>
                        <td>
                            <h5>• 아래의 카테고리중 1개만 선택이 가능합니다. <br>
                                상품을 가장 잘 표현하는 카테고리를 선택해 주세요. <br>
                                관리자 심사 후 수정될수 있습니다.</h5>
                            <input type="radio" name="expCategory" value="lifeStyle"><label for="lifeStyle">라이프 및 스타일(뷰티/패션/쇼핑)</label><br>
                            <input type="radio" name="expCategory" value="culture"><label for="culture">문화와 역사(과학/경제/역사/봉사활동)</label><br>
                            <input type="radio" name="expCategory" value="fitness"><label for="fitness">스포츠 및 피트니스(자전거/요가/러닝/근력운동)</label><br>
                            <input type="radio" name="expCategory" value="art"><label for="art">미술과 디자인(그림/전시/목공/사진/일러스트)</label><br>
                            <input type="radio" name="expCategory" value="outdoor"><label for="outdoor">야외활동(별관찰/농촌투어/캠핑/하이킹)</label>
                        </td>
                    </tr>
                    <tr>
                        <th>* 언어</th>
                        <td>
                            <h5>• 체험 진행 시 주로 사용되는 언어를 선택해주세요</h5>
                            <input type="checkbox" name="ko" value="ko"><label class="language" for="ko" style="padding-right: 20px;">한국어</label>
                            <input type="checkbox" name="es" value="es"><label class="language" for="es" style="padding-right: 20px;">스페인어</label>
                            <input type="checkbox" name="jp" value="jp"><label class="language" for="jp">일본어</label><br>
                            <input type="checkbox" name="en" value="en"><label class="language" for="en" style="padding-right: 35px;">영어</label>
                            <input type="checkbox" name="ch" value="ch"><label class="language" for="ch" style="padding-right: 34px;">중국어</label>
                            <input type="checkbox" name="etc" value="etc"><label class="language" for="etc">그 외</label>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 태그</th>
                        <td>
                            <h5>• 상품에 가장 잘 어울리는 태그를 선택해주세요. 최대 2개까지 가능합니다.</h5>
                            <input type="checkbox" name="museum" value="museum"><label class="expTag" for="museum" style="padding-right: 20px;">박물관/미술관</label>
                            <input type="checkbox" name="shopping" value="shopping"><label class="expTag" for="shopping" style="padding-right: 55px;">쇼핑</label>
                            <input type="checkbox" name="beauty" value="beauty"><label class="expTag" for="beauty">뷰티/패션</label><br>
                            <input type="checkbox" name="themapark" value="themapark"><label class="expTag" for="themapark" style="padding-right: 56px;">테마파크</label>
                            <input type="checkbox" name="citytour" value="citytour"><label class="expTag" for="citytour" style="padding-right: 25px;">시티투어</label>
                            <input type="checkbox" name="camping" value="camping"><label class="expTag" for="camping">캠핑</label><br>
                            <input type="checkbox" name="special" value="special"><label class="expTag" for="special" style="padding-right: 56px;">이색체험</label>
                            <input type="checkbox" name="food" value="food"><label class="expTag" for="food" style="padding-right: 20px;">맛집/카페</label>
                            <input type="checkbox" name="sports" value="sports"><label class="expTag" for="sports">스포츠</label><br>
                            <input type="checkbox" name="nightscape" value="nightscape"><label class="expTag" for="nightscape" style="padding-right: 86px;">야경</label>
                            <input type="checkbox" name="bicycle" value="bicycle"><label class="expTag" for="bicycle" style="padding-right: 40px;">자전거</label>
                            <input type="checkbox" name="class" value="class"><label class="expTag" for="class">클래스</label>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 제목</th>
                        <td>
                            <input type="text" id="" name="" value="">
                            <h5>• 정확하고 간결하게 표현해주세요. <br>
                                • 지역명이 포함된 제목은 노출에 더 효과적입니다. <br>
                                (도쿄, 산책하는 여행, 샌프란시스코 당일코드 등)</h5>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 소개</th>
                        <td>
                            <textarea id="" name="" value="" placeholder="체험 설명을 잘 작성하면 게스트의 예약과 참여를 유도할 수 있습니다.  &#13;&#10; 게스트를 위해 세심하게 고안한 체험 일정의 자세한 내용을 알려주세요. &#13;&#10; &#13;&#10;* 체험을 처음부터 끝까지 실제 진행 순서대로 설명해 주세요.&#13;&#10;- 게스트가 참여하게 될 체험활동을 구체적으로 설명하기&#13;&#10;- 게스트가 일정을 충분히 이해할 수 있도록 일정을 상세하게 설명하기"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 장소</th>
                        <td>
                                다음주소 api사용
                        </td>
                    </tr>
                </table>
                </form>
                
                
                
                
                
                <br>
            </div>
            <div id="btns">
                <button id="cancle">취소하기</button>
                <button type="submit" id="next">저장 후 다음으로</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>