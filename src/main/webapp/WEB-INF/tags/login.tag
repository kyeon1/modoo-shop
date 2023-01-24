<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="right-top-bar-menu">
	<c:choose>
		<c:when test="${mId == null}">
			<li>
				<a href="about.jsp">ABOUT US</a>
			</li>
			<li>
				<a href="login.jsp">LOGIN</a>
			</li>
			<li>
				<a href="join.jsp">JOIN</a>
			</li>
			<li>
				<a href="join.jsp">MYPAGE</a>
			</li>
		</c:when>
		<c:when test="${mId == 'admin'}">
			<li>
				<a href="about.jsp">ABOUT US</a>
			</li>
			<li>
				<a href="logout.do">LOGOUT</a>
			</li>
			<li>
				<a href="admin/admin-home.jsp">ADMIN</a>
			</li>
		</c:when>
		<c:otherwise>
			<li>
				<span>안녕하세요, ${mName}님</span>
			</li>
			<li>
				<a href="about.jsp">ABOUT US</a>
			</li>
			<li>
				<a href="logout.do">LOGOUT</a>
			</li>
			<li class="active-menu">
				<a href="change-inform.jsp">MYPAGE</a>
				<ul class="sub-menu">
					<li>
						<a href="order-list.jsp">주문조회</a>
					</li>
					<li>
						<a href="change-inform.jsp">내정보수정</a>
					</li>
					<li>
						<a href="dibs-list.jsp">찜리스트</a>
					</li>
				</ul>
			</li>
		</c:otherwise>
	</c:choose>
</ul>
