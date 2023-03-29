<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Josefin+Slab:ital@1&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff"
    />
    <link rel="icon" href="../img/managerImg/pecoImg.png" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div id="body-main">
      <div id="main-header"></div>
      <div id="main-body">
        <div class="body-main-page">
          <div class="main-page-tbb">
            <div class="main-top">
              <div class="profile-picture">
                <div class="profile">
                  <div class="imgbox-div">
                    <div class="img-box"></div>
                  </div>
                  <div class="profile-box">
                    <div class="nickname-box">
                      <p class="nickname">mana_mana</p>
                      <div class="manage">
                        <a href="../html/profile.html">프로필 편집</a>
                      </div>
                      <div>
                        <a href="#"
                          ><img
                            src="../img/managerImg/setting.png"
                            alt=""
                            id="설정"
                        /></a>
                      </div>
                    </div>
                    <div class="follow-box">
                      <p>게시물<span>10</span></p>
                      <p><a href="#">팔로워</a><span>100</span></p>
                      <p><a href="#">팔로우</a><span>100</span></p>
                    </div>
                    <div class="namebox">
                      <h6>쿸팡걸~</h6>
                    </div>
                  </div>
                </div>
              </div>
              <!-- <div>
                <canvas id="live"></canvas>
              </div> -->
            </div>

            <div class="main-banner">
              <div class="manage-menu">
                <div id="manage-menu-text" class="memberM">
                  <div class="manage-member-click">회원관리</div>
                </div>
                <div id="manage-menu-text" class="memberPost">
                  <div class="manage-post-click">게시물관리</div>
                </div>
                <div id="manage-menu-text" class="memberPay">
                  <div class="manage-pay-click">결제관리</div>
                </div>
              </div>
            </div>

            <div class="main-bottom">
              <div class="manage-member">
                <div class="chart">
                  <div class="myChart-1">
                    <canvas id="myChart"></canvas>
                  </div>
                  <div class="myChart-2">
                    <canvas id="mycate"></canvas>
                  </div>
                </div>

                <div>
                  <div class="member-main test" id="member-Menu">
                    <div class="member-serch">
                      <input
                        type="text"
                        placeholder="회원아이디를 입력하시오"
                      />
                      <button>
                        <a href="#"
                          ><img src="../img/managerImg/검색.png" alt=""
                        /></a>
                      </button>
                    </div>
                    <table class="member-table">
                      <tbody>
                        <tr>
                          <th>번호</th>
                          <th>이름</th>
                          <th>이메일</th>
                          <th>전화번호</th>
                          <th>성별</th>
                          <th>수정</th>
                          <th>삭제</th>
                        </tr>

                        <tr>
                          <td>1</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>5</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>6</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>7</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>8</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>9</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"><input type="checkbox" /></a>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>10</td>
                          <td><a href=""> 홍길동</a></td>
                          <td>hong@example.com</td>
                          <td>010-1234-5678</td>
                          <td>남</td>
                          <td><a href="#">수정</a></td>
                          <td>
                            <div class="checkbox-c">
                              <a href="#"
                                ><input type="checkbox" name="member-delet"
                              /></a>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <button class="button" id="memberDelete">회원 삭제</button>
                    <div class="paging">
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_prev.jpg"
                            alt=""
                            class="direction"
                          />
                        </a>
                      </p>
                      <p class="paging-num">
                        <a href="">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                        <a href="">5</a>
                      </p>
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_next.jpg"
                            alt="다음으로"
                          />
                        </a>
                      </p>
                      <p class="paging-btn" id="paging-last">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_d_next.jpg"
                            alt="마지막으로"
                          />
                        </a>
                      </p>
                    </div>
                  </div>
                </div>

                <div>
                  <div class="manage-post test" id="member-post">
                    <div class="post-serch">
                      <input
                        type="text"
                        placeholder="회원아이디를 입력하시오"
                      />
                      <button>
                        <a href="#"
                          ><img src="../img/managerImg/search.png" alt=""
                        /></a>
                      </button>
                    </div>
                    <table class="post-table">
                      <tr>
                        <th>번호</th>
                        <th>게시물 제목</th>
                        <th>아이디</th>
                        <th>조회수</th>
                        <th>수정</th>
                        <th>삭제</th>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>7</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>9</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>10</td>
                        <td><a href="">만두를 만들어요</a></td>
                        <td>asd123@naver.com</td>
                        <td>15</td>
                        <td><a href="#">수정</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                    </table>
                    <button class="button">게시글 삭제</button>
                    <div class="paging">
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_prev.jpg"
                            alt=""
                            class="direction"
                          />
                        </a>
                      </p>
                      <p class="paging-num">
                        <a href="">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                        <a href="">5</a>
                      </p>
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_next.jpg"
                            alt="다음으로"
                          />
                        </a>
                      </p>
                      <p class="paging-btn" id="paging-last">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_d_next.jpg"
                            alt="마지막으로"
                          />
                        </a>
                      </p>
                    </div>
                  </div>
                </div>

                <div>
                  <div class="manage-payment test" id="member-payment">
                    <div class="payment-serch">
                      <input
                        type="text"
                        placeholder="회원아이디를 입력하시오"
                      />
                      <button>
                        <a href="#"
                          ><img src="../img/managerImg/search.png" alt=""
                        /></a>
                      </button>
                    </div>
                    <table class="payment-table">
                      <tr>
                        <th>번호</th>
                        <th>주소</th>
                        <th>아이디</th>
                        <th>금액</th>
                        <th>주문수량</th>
                        <th>삭제</th>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>7</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>9</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>10</td>
                        <td>강남구 어딘가</td>
                        <td><a href="">asd123@naver.com</a></td>
                        <td>15,000원</td>
                        <td><a href="#">2</a></td>
                        <td>
                          <div class="checkbox-c">
                            <a href="#"><input type="checkbox" /></a>
                          </div>
                        </td>
                      </tr>
                    </table>
                    <button class="button">결제 삭제</button>
                    <div class="paging">
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_prev.jpg"
                            alt=""
                            class="direction"
                          />
                        </a>
                      </p>
                      <p class="paging-num">
                        <a href="">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                        <a href="">5</a>
                      </p>
                      <p class="paging-btn">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_next.jpg"
                            alt="다음으로"
                          />
                        </a>
                      </p>
                      <p class="paging-btn" id="paging-last">
                        <a href="">
                          <img
                            src="https://2bob.co.kr/skin/nodskin_argio/images/paging_d_next.jpg"
                            alt="마지막으로"
                          />
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="body-side-bar">
          <div class="sidebar-menu">
            <li class="sidebar-name"><a href="#">CookPang</a></li>
            <ul class="sidebar-ul">
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/home.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">홈</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/h.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">검색</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/heart.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">알림</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/plus.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">만들기</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/backet.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">찜한 레시피</a>
                </div>
              </li>
              <li class="sidebar-li">
                <div class="li-box">
                  <img
                    src="../img/managerImg/pro.png"
                    alt=""
                    class="sidebar-img"
                  />
                  <a href="#">프로필</a>
                </div>
              </li>
            </ul>
            <li class="sidebar-login"><a href="#">로그인</a></li>
          </div>
        </div>
      </div>

      <div id="main-footer">
        <footer>
          <div>
            <div class="footer-content">
              <h3>Cook Pang</h3>
              <p>
                콘텐츠의 저작권은 제공처 또는 코리아IT아카데미 에 있으며, 이를
                무단 이용하는 경우 저작권법 등에 따라 법적책임을 질 수 있습니다.
              </p>
            </div>
            <div class="footer-bottom">
              <p>copyright © <a href="#">Cookpang</a></p>
              <div class="footer-menu">
                <ul class="f-menu">
                  <li><a href="../html/termsOfUse.html">이용약관</a></li>
                  <li><a href="">About</a></li>
                  <li><a href="">Contact</a></li>
                  <li><a href="">Blog</a></li>
                </ul>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="../js/cookpang.js"></script>
    <script src="../js/chart.js"></script>
  </body>
</html>
        