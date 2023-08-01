let manageMember = document.querySelector(".memberM");
console.log(manageMember);

manageMember.addEventListener("click", function() {
	let memberMenu = document.querySelector("#member-Menu");

	let isTrue = memberMenu.style.display == "block";

	hidden();
	console.log(isTrue);
	if (isTrue) {
		$(".chart").show();
	} else {
		memberMenu.style.display = "block";
	}
});

let managePost = document.querySelector(".memberPost");

managePost.addEventListener("click", function() {
	let memberPost = document.querySelector("#member-post");
	let isTrue = memberPost.style.display == "block";
	hidden();
	if (isTrue) {
		$(".chart").show();
	} else {
		memberPost.style.display = "block";
	}
});

let managePay = document.querySelector(".memberPay");
managePay.addEventListener("click", function() {
	let memberPay = document.querySelector("#member-payment");
	let isTrue = memberPay.style.display == "block";
	hidden();
	if (isTrue) {
		$(".chart").show();
	} else {
		memberPay.style.display = "block";
	}
});

function hidden() {
	let $test = $(".test");
	$(".chart").hide();
	$test.hide();
}

let chartTest = document.querySelector(".chart");
console.log(chartTest);

chartTest.addEventListener("click", function() {
	let chartTest = document.querySelector("#myChart");
	console.dir(chartTest.style.display);
	if (chartTest.style.display == "block") {
	} else {
		chartTest.style.display = "block";
	}
});

let chartCata = document.querySelector(".chart");
console.log(chartCata);

chartCata.addEventListener("click", function() {
	let chartTestA = document.querySelector("#mycate");
	console.dir(chartTestA.style.display);
	if (chartTestA.style.display == "block") {
	} else {
		chartTestA.style.display = "block";
	}
});

//==========================
const chartData = [
	{ x: 10, y: 20, r: 5 },
	{ x: 20, y: 30, r: 10 },
	{ x: 30, y: 10, r: 15 },
	{ x: 40, y: 50, r: 20 },
	{ x: 50, y: 40, r: 25 },
];

let searchMode = false;

function updatePage(page) {
	if (searchMode) {
		let userIdOrName = $('#user-serch').val();
		$.ajax({
			url: '/manager/userSerch.manager',
			type: 'GET',
			data: { userIdOrName: userIdOrName, page: page },
			dataType: 'json',
			success: updateTable,
			error: (xhr, status, error) => console.log(error),
		});
	} else {
		$.ajax({
			url: "/manager/managerListRest.manager",
			type: "GET",
			data: { page: page },
			dataType: "json",
			success: updateTable,
			error: (xhr, status, error) => console.log(error),
		});
	}
}

function updateTable(result) {
	// 기존 사용자 목록을 지우기
	$(".member-table tbody tr:not(:first)").remove();

	// 사용자 데이터로 새로운 행을 추가
	result.users.forEach((user) => {
		$(".member-table tbody").append(`
      <tr>
                <td class="user-number">${user.userNumber}</td>
        <td class="user-Id"><a href="#">${user.userId}</a></td>
        <td class="user-name"><a href="#">${user.userName}</a></td>
        <td class="user-email">${user.userEmail}</td>
        <td class="user-phone-number">${user.userPhoneNumber}</td>
        <td class="user-gender">${user.userGender}</td>
        <td class="user-status">${user.userStatus}</td>
        <td><a href="#">수정</a></td>
        <td><div class="checkbox-c"><a href="#"><input type="checkbox" name="user" class="user-check-box" value="${user.userNumber}" /></a></div></td>
      </tr>`);
	});

	// 페이지네이션 링크를 생성하고 업데이트
	$(".user-page ul").html(`
    ${result.prev ? `<li><a href="#" data-page="${result.startPage - 1}" class="prev">&lt;</a></li>` : ""}
    ${Array.from({ length: result.endPage - result.startPage + 1 }, (_, i) => i + result.startPage).map(i => `<li><a href="#" data-page="${i}"${i === result.page ? ' class="active"' : ""}>${i}</a></li>`).join('')}
    ${result.next ? `<li><a href="#" data-page="${result.endPage + 1}" class="next">&gt;</a></li>` : ""}`);

	// 새 페이지네이션 링크에 이벤트 리스너를 업데이트
	$(".user-page a").off("click").on("click", function(e) {
		e.preventDefault();
		updatePage($(this).data("page"));
	});
}

// 초기 페이지네이션 링크에 클릭 이벤트 리스너를 추가
$(".user-page a").on("click", function(e) {
	e.preventDefault();
	updatePage($(this).text().trim());
});

$('.user-serch-btn').on('click', function() {
	let userIdOrName = $('#user-serch').val();
	let gapCheck = $('#user-serch').val().trim();
	console.log(userIdOrName);

	if (gapCheck === '' || gapCheck.length === 0) {
		searchMode = false;
		updatePage(1);
	} else {
		searchMode = true;
		updatePage(1);
	}
});

// 회원삭제 submit버튼의 이벤트제거
$(".user-delete-form").on("submit", function(event) {
  event.preventDefault();
});

//회원검색기능 enter키눌러도 똑같이 실행
$("#user-serch").on("keyup", function(event) {
  if (event.which === 13) {
    let userIdOrName = $('#user-serch').val();
	let gapCheck = $('#user-serch').val().trim();
	console.log(userIdOrName);

	if (gapCheck === '' || gapCheck.length === 0) {
		searchMode = false;
		updatePage(1);
	} else {
		searchMode = true;
		updatePage(1);
	}
 }
});


// 게시물 리스트부분
let postSearchMode = false;

function updatePostPage(postPage) {
	if (postSearchMode) {
		let postTitle = $('#post-search').val();
		$.ajax({
			url: '/manager/postSerchOk.manager',
			type: 'GET',
			data: { postTitle: postTitle, postPage: postPage },
			dataType: 'json',
			success: updatePostTable,
			error: (xhr, status, error) => console.log(error),
		});
	} else {
		$.ajax({
			url: "/manager/managerPostOk.manager",
			type: "GET",
			data: { postPage: postPage },
			dataType: "json",
			success: updatePostTable,
			error: (xhr, status, error) => console.log(error),
		});
	}
}

function updatePostTable(postResult) {
	$(".post-table tbody tr:not(:first)").remove();
	
	console.log(postResult)

	postResult.posts.forEach((post) => {
		$(".post-table tbody").append(`
      <tr>
        <td class="post-number">${post.postNumber}</td>
        <td class="post-title"><a href="#">${post.postTitle}</a></td>
        <td class="post-user-Id"><a href="#">${post.userId}</a></td>
        <td class="post-view-count">${post.postViewCount}</td>
        <td class="post-date">${post.postDate}</td>
		<td><a href="#">수정</a></td>
        <td><div class="checkbox-c"><a href="#"><input type="checkbox" name="post" class="post-check-box" value="${post.postNumber}" /></a></div></td>
      </tr>`);
	});
	
	let pageResult = '';
	pageResult += `${postResult.postPrev ? `<li><a href="#" data-postPage="${postResult.postStartPage - 1}" class="prev">&lt;</a></li>` : ""}`;
    
	for(let i=postResult.postStartPage; i<=postResult.postEndPage; i++){
		pageResult += `<li><a href="#" data-postPage="${i}"${i === postResult.postPage ? ' class="active"' : ""}>${i}</a></li>`;
	}
	
    pageResult +=`${postResult.postNext ? `<li><a href="#" data-postPage="${postResult.postEndPage + 1}" class="next">&gt;</a></li>` : ""}`;

	/*`
    	${postResult.postPrev ? `<li><a href="#" data-postPage="${postResult.postStartPage - 1}" class="prev">&lt;</a></li>` : ""}
    	${Array.from({ length: postResult.postEndPage - postResult.postStartPage + 1 }, (_, j) => j + postResult.postStartPage).map(j => `<li><a href="#" data-postPage="${j}"${j === postResult.postPage ? ' class="active"' : ""}>${j}</a></li>`).join('')}
    	${postResult.postNext ? `<li><a href="#" data-postPage="${postResult.postEndPage + 1}" class="next">&gt;</a></li>` : ""}`*/

	$(".post-page ul").html(pageResult);

	$(".post-page a").off("click").on("click", function(e) {
		e.preventDefault();
		
		console.log($(this).data("postpage"))
		updatePostPage($(this).data("postpage"));
	});
	
}


$(".post-page a").on("click", function(e) {
	e.preventDefault();
	updatePostPage($(this).data('postpage'));
});

$('.post-serch-btn').on('click', function() {
	let postSearch = $('#post-search').val();
	let postGapCheck = $('#post-search').val().trim();

	if (postGapCheck === '' || postGapCheck.length === 0) {
		postSearchMode = false;
		updatePostPage(1);
	} else {
		postSearchMode = true;
		updatePostPage(1);
	}
});

// 게시글 삭제 submit버튼의 이벤트제거
$(".post-delete-form").on("submit", function(event) {
  event.preventDefault();
});

//게시글 검색기능 enter키눌러도 똑같이 실행
$("#post-search").on("keyup", function(event) {
  if (event.which === 13) {
   let postSearch = $('#post-search').val();
	let postGapCheck = $('#post-search').val().trim();

	if (postGapCheck === '' || postGapCheck.length === 0) {
		postSearchMode = false;
		updatePostPage(1);
	} else {
		postSearchMode = true;
		updatePostPage(1);
	}
 }
});

// ==========결제 관리 추가정보js======


function showOrder(target) {
  let deliveryRow = $(target).closest("td").parent().next("tr.order-info");

  if (deliveryRow.css("display") === "none") {
    deliveryRow.css("display", "table-row");
  } else {
    deliveryRow.css("display", "none");
  }
}






// ==========결제 관리 js======

let orderSearchMode = false;
let orderPage = 1;


updateOrderPage(orderPage)
function updateOrderPage(orderPage) {
	if (orderSearchMode) {
		let serchKeyword = $('#payment-serch').val();
		$.ajax({
			url: '/manager/orderSerchOk.manager',
			type: 'GET',
			data: { serchKeyword: serchKeyword, orderPage: orderPage },
			/*dataType: 'json',*/
			success: updateOrderTable,
			error: (xhr, status, error) => console.log(error),
		});
	} else {
		$.ajax({
			url: "/manager/managerOrderOk.manager",
			type: "GET",
			data: { 
				orderPage: orderPage 
				},
			dataType: "json",
			success: updateOrderTable,
			error: (xhr, status, error) => console.log(error),
		});
	}
}


function updateOrderTable(orderResult) {
	$(".payment-table tbody tr:not(:first)").remove();
	
	console.log(orderResult)

	orderResult.orders.forEach((order) => {
		$(".payment-table tbody").append(`
		<tr class="order-list">
			<td class="order-number">${order.orderNumber}</td>
			<td class="order-user-id">${order.userId}</td>
			<td class="order-total-cost">${order.orderTotalCost}</td>
			<td class="order-date">${order.orderDate}</td>
			<td class="order-status">
				<select name="orderStatus" class="order-status-select" data-orderNumber="${order.orderNumber}">
		            <option value="${order.orderStatus}" selected="selected">${order.orderStatus}</option>
		            <option value="대기중">대기중</option>
		            <option value="배송중" >배송중</option>
		            <option value="배송완료">배송완료</option>
		            <option value="취소됨">취소됨</option>
				</select>
			</td>
			<td class="order-status-edit">
				<div class="checkbox-c">
					<button type="button" class="order-check-btn" data-orderNumber="${order.orderNumber}">확인</button>
					<input type="hidden" name="payment"
						class="payment-check-box" value="#결제번호" />
					<input type="hidden" name="orderUserNumber"
						class="payment-check-box" value="${order.userNumber}" />
				</div>
			</td>
			<td><button onclick="showOrder(this)">상세정보보기</button></td>
			<td>
				<button onclick="showOrderProducts(this)" data-orderNumber="${order.orderNumber}">주문상품보기</button>
			</td>
	</tr>
	
             <tr class="order-info" style="display: none ;" >
               <td></td>
               <td colspan="1">받는사람 : <br> ${order.orderRecipient} </td>
               <td colspan="3"> 주문 주소 : <br>${order.orderAddress}</td>
               <td colspan="3"> 주문 요청사항 : <br>${order.orderMessage}</td>
            </tr>
 						
			`
			);
	});
	
	let orderPageResult = '';
	orderPageResult += `${orderResult.orderPrev ? `<li><a href="#" data-orderPage="${orderResult.orderStartPage - 1}" class="prev">&lt;</a></li>` : ""}`;
    
	for(let i=orderResult.orderStartPage; i<=orderResult.orderEndPage; i++){
		orderPageResult += `<li><a href="#" data-orderPage="${i}"${i === orderResult.orderPage ? ' class="active"' : ""}>${i}</a></li>`;
	}
	
    orderPageResult +=`${orderResult.orderNext ? `<li><a href="#" data-orderPage="${orderResult.orderEndPage + 1}" class="next">&gt;</a></li>` : ""}`;

	/*`
    	${postResult.postPrev ? `<li><a href="#" data-postPage="${postResult.postStartPage - 1}" class="prev">&lt;</a></li>` : ""}
    	${Array.from({ length: postResult.postEndPage - postResult.postStartPage + 1 }, (_, j) => j + postResult.postStartPage).map(j => `<li><a href="#" data-postPage="${j}"${j === postResult.postPage ? ' class="active"' : ""}>${j}</a></li>`).join('')}
    	${postResult.postNext ? `<li><a href="#" data-postPage="${postResult.postEndPage + 1}" class="next">&gt;</a></li>` : ""}`*/

	$(".order-page ul").html(orderPageResult);

	$(".order-page a").off("click").on("click", function(e) {
		e.preventDefault();
		
		console.log($(this).data("orderpage"))
		updateOrderPage($(this).data("orderpage"));
	});
	
}


$(".order-page a").on("click", function(e) {
	e.preventDefault();
	updateOrderPage($(this).data('orderpage'));
	console.log('aaaa')
});

$('.order-serch-btn').on('click', function() {
	let orderSearch = $('#payment-serch').val();
	let orderGapCheck = $('#payment-serch').val().trim();

	if (orderGapCheck === '' || orderGapCheck.length === 0) {
		orderSearchMode = false;
		updateOrderPage(1);
	} else {
		orderSearchMode = true;
		updateOrderPage(1);
	}
});

$("#payment-serch").on("keyup", function(event) {
  if (event.which === 13) {
   let orderSearch = $('#payment-serch').val();
	let orderGapCheck = $('#payment-serch').val().trim();

	if (orderGapCheck === '' || orderGapCheck.length === 0) {
		orderSearchMode = false;
		updateOrderPage(1);
	} else {
		orderSearchMode = true;
		updateOrderPage(1);
	}
 }
});





$('.payment-table').on('click', '.order-check-btn', function() {
      let clickedButton = $(this); // 클릭한 버튼
	  let orderNumber = clickedButton.data("ordernumber")
	  let orderStatus = $(this).closest("tr").find('.order-status-select').val();
		
	  orderStatusAjax(orderNumber,orderStatus );
	/*주문상태변경하는 ajax들어가야함*/
	
    });


function orderStatusAjax(orderNumber,orderStatus) {
	$.ajax({
		url: '/manager/orderStatusUpdateOk.manager',
		type: 'post',
		data: { orderNumber: orderNumber,
					orderStatus: orderStatus 
					/*orderPage: orderPage*/
				},
		success: function(result){
			console.log('주문상태변경 ajax연결 성공');
			alert('주문상태가 변경되었습니다.');
		} ,
		
		error: (xhr, status, error) => console.log(error),
	});
} 



function showOrderProducts(target) {
  let productsRow = $(target).closest("tr");
  let nextProductsRow= productsRow.nextAll('.order-list').first();
  

  let orderNumber = $(target).data("ordernumber");

	
	if (!productsRow.nextAll().hasClass("order-itemList")) {
	$('.order-itemList').remove();
		orderItemAjax(orderNumber,productsRow);
	}else{
	$('.order-itemList').remove();
	}
}


function orderItemAjax(orderNumber,productsRow) {
	$.ajax({
		url: '/manager/orderItemListOk.manager',
		type: 'get',
		data: { orderNumber: orderNumber},
		dataType: 'json',
		success: function(result){
			console.log(result);
			getOrderItems(result,productsRow);

		} ,
		
		error: (xhr, status, error) => console.log(error),
	});
}

function getOrderItems(result,productsRow) {
	let text = '';
	
	
	result.orderItems.forEach((item) => {
	text +=`
			<tr class="order-itemList">
			<td></td>
       		<td colspan="1">${item.ingredientName}</td>
       		<td colspan="2">${item.ingredientSmallestUnit}g</td>
       		<td colspan="2">${item.ingredientPrice}원</td>
       		<td colspan="3">${item.orderItemQuantity}개</td>
            </tr>
			
			`;
			
	})
	
	productsRow.closest('tr').next().after(text);
	

}




















