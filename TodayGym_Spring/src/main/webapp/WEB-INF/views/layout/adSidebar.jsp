<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/layout/adSidebar_style.css">
<div class="adSidebar">
	<div class="toggle">
		<ion-icon name="menu-outline" class="open"></ion-icon>
		<ion-icon name="close-outline" class="close"></ion-icon>
	</div>
	<ul>
		<li class="list active"><a href="adMainMove.ad?side=0"> <span
				class="admin-icon"> <ion-icon name="pulse-outline" />
			</span> <span class="admin-title">Home</span></a></li>

		<li class="list"><a href="adMemMove?side=1"> <span
				class="admin-icon"> <ion-icon name="people-outline" />
			</span> <span class="admin-title">Member</span></a></li>

		<li class="list"><a href="adTicketMove.ad?side=2"> <span
				class="admin-icon"> <ion-icon name="id-card-outline" />
			</span> <span class="admin-title">Ticket</span></a></li>

		<li class="list"><a href="adSpotMove.ad?side=3"> <span
				class="admin-icon"> <ion-icon name="flag-outline" />
			</span> <span class="admin-title">Spot</span></a></li>
	</ul>
	<div class="toggle">
		<a href="home"><ion-icon name="exit-outline"></ion-icon></a>
	</div>
</div>

<script type="text/javascript">
	let menuToggle = document.querySelector('.toggle');
	menuToggle.onclick = function() {
		menuToggle.classList.toggle('active')
	}

	const url = new URL(window.location.href);
	console.log('url : ' + url);

	const urlParams = url.searchParams;
	console.log('urlParams : ' + urlParams);

	const side = urlParams.get('side');
	console.log('side : ' + side);

	let i = parseInt(side);
	console.log('i : ' + i);

	let list = document.querySelectorAll('.list');

	let j = 0;
	
	for(j=0; j < list.length; j++){
		list[j].className = 'list';
	}
	
	list[i].className = 'list active';
</script>