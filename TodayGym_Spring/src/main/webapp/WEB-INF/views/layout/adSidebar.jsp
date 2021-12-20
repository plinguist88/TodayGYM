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
		<li class="list active"><a href="adMainMove.ad"> <span
				class="admin-icon"> <ion-icon name="pulse-outline" />
			</span> <span class="admin-title">Home</span></a></li>
			
		<li class="list"><a href="#adMemberMove.ad"> <span
				class="admin-icon"> <ion-icon name="people-outline" />
			</span> <span class="admin-title">Member</span></a></li>
			
		<li class="list"><a href="adTicketMove.ad"> <span
				class="admin-icon"> <ion-icon name="id-card-outline" />
			</span> <span class="admin-title">Ticket</span></a></li>
			
		<li class="list"><a href="adSpotMove.ad"> <span
				class="admin-icon"> <ion-icon name="flag-outline" />
			</span> <span class="admin-title">Spot</span></a></li>
	</ul>
</div>

<script type="text/javascript">
	let menuToggle = document.querySelector('.toggle');
	menuToggle.onclick = function() {
		menuToggle.classList.toggle('active')
	}
	
	let list = document.querySelectorAll('.list');
	for (let i = 0; i < list.length; i++) {
		list[i].onclick = function() {
			let j = 0;
			while (j < list.length) {
				list[j++].className = 'list';
			}
			list[i].className = 'list active';
		}
	}
</script>