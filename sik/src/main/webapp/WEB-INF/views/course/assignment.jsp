<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
table{
	text-align: center;
}
.btnWrite{
	float: right;
	width: auto;
}
.div-header{
	margin: 5px;
}
</style>

<nav class="navbar navbar-expand-lg bg-white">
	<div class="container-fluid">
		<div class="collapse navbar-collapse" id="navbar-ex-6">
			<div class="navbar-nav me-auto">
				<a class="nav-item nav-link" href="javascript:void(0)">주차</a>
				<a class="nav-item nav-link" href="javascript:void(0)">학생목록</a>
				<a class="nav-item nav-link" href="javascript:void(0)">공지</a>
				<a class="nav-item nav-link" href="javascript:void(0)">출석</a>
				<a class="nav-item nav-link active" href="javascript:void(0)">과제</a>
				<a class="nav-item nav-link" href="javascript:void(0)">자료</a>
				<a class="nav-item nav-link" href="javascript:void(0)">성적</a>
			</div>
		</div>
	</div>
</nav>
<br />

<h5 class="title">
	<a href="#" class="categoryBar">메인</a>&nbsp;/&nbsp;<a href="#" class="categoryBar">강의목록</a>
	&nbsp;/&nbsp;<a href="#" class="categoryBar">재미있는 JAVA의 세계로(강의명)</a>
</h5>

<div class="card">
	<div class="div-header">
		<button type="button" class="btn btn-label-primary btnWrite">글쓰기</button>
	</div>
	<table class="table">
		<thead class="table-active">
			<tr class="text-nowrap">
				<th>주차</th>
				<th class="si_target">제목</th>
				<th>제출기간</th>
				<th>제출여부(학생)</th>
				<th>제출여부 조회(교수)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">8</th>
				<td>과제8</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">7</th>
				<td>과제7</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">6</th>
				<td>과제6</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">5</th>
				<td>과제5</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">4</th>
				<td>과제4</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>과제3</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>과제2</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
			<tr>
				<th scope="row">1</th>
				<td>과제1</td>
				<td>2022.05.05 - 2022.05.10</td>
				<td>x</td>
				<td><button class="btn">조회하기</button></td>
			</tr>
		</tbody>
	</table>

	<div class="card-footer">
		<div class="demo-inline-spacing">
			<nav class="paging" aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item active">
						<a class="page-link" href="javascript:void(0);">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="javascript:void(0);">2</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>

</div>