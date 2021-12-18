<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/layout/adSidebar_style.css?after">
<div class="adSidebar active">
	<ul>
		<li class="list">
			<a href="javascript:adMainMove()">
				<span class="admin-icon">
					<ion-icon name="pulse-outline" />
				</span> 
				<span class="admin-title">Home</span></a></li>
		<li class="list">
			<a href="javascript:adMemberMove()">
				<span class="admin-icon">
					<ion-icon name="people-outline" />
				</span>
				<span class="admin-title">Member</span></a></li>
		<li class="list">
			<a href="javascript:adTicketMove()">
				<span class="admin-icon">
					<ion-icon name="id-card-outline" />
				</span>
				<span class="admin-title">Ticket</span></a></li>
		<li class="list">
			<a href="javascript:adSpotMove()">
				<span class="admin-icon">
					<ion-icon name="flag-outline" />
				</span>
				<span class="admin-title">Spot</span></a></li>
	</ul>
</div>
<div class="toggle">
	<ion-icon name="menu-outline" class="open"></ion-icon>
	<ion-icon name="close-outline" class="close"></ion-icon>
</div>

<script type="text/javascript">
/* 	
	let menuToggle = document.querySelector('.toggle');
	let menuSidebar = document.querySelector('.adSidebar')
	menuToggle.onclick = function(){
		menuToggle.classList.toggle('active')
		menuSidebar.classList.toggle('active')
	} 

	let list = document.querySelectorAll('.list');
	for (let i=0; i<list.length; i++){
		list[i].onclick = function(){
			let j = 0;
			while(j < list.length){
				list[j++].className = 'list';
			}
			list[i].className = 'list active';
		}
	}
*/
</script>
<script type="text/javascript">

function adMainMove(){
	location.href="adMainMove.ad";
}

function adMemberMove(){
	location.href="adMemberMove.ad";
}

function adTicketMove(){
	location.href="adTicketMove.ad";
}

function adSpotMove(){
	location.href="adSpotMove.ad";
}
</script>