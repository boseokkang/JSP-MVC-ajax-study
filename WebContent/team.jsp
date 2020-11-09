<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Baseball Team List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<h2>Baseball Team</h2>
				<table class="table">
					<thead>
						<tr>
							<th>Number</th>
							<th>Team Name</th>
						</tr>
					</thead>
					<tbody id="team__list">
						<c:forEach var="team" items="${teams}">
						<tr>
							<td>${team.id}</td>
							<td onclick="membersList()">${team.name}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
		  <div class="col-sm-4">
				<h2>Team of Player</h2>
				<table class="table">
					<thead>
						<tr>			
							<th>Player Name</th>
							<th>Player Position</th>
						</tr>
					</thead>
					<tbody id="player__list">
						<tr class="table-warning">
							<td>Default</td>
							<td>Defaultson</td>						
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>

</body>

<script src="/BaseballList/js/teamList.js"></script>
</html>
