<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="kiben" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>毕业设计管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%
	// stylesheet
%>
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/main.css" rel="stylesheet" media="screen">
<%
	// icon
%>
<link rel="icon" href="image/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="image/favicon.ico" type="image/x-icon" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="../../assets/js/html5shiv.js"></script>
	<script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrap">
		<div id="main" class="clearfix">
			<%-- 此行控制是否该页面未登录无法访问 --%>
			<%@ include file="/jsp/authentication.jsp"%>

			<%-- header导航条--%>
			<%@ include file="/jsp/nav.jsp"%>

			<div class="container bs-docs-container">
				<div class="row">
					<div class="col-md-3" id="side">
						<%--导入侧边栏 --%>
						<%@ include file="side.jsp"%></div>
					<div class="col-md-9" id="content">
						<%-- 在注释之间添加代码 --%>
						<h4>自评学生</h4>
						<table class="table table-bordered" style="text-align: center">
							<tr>
								<td width="150px">姓名</td>
								<td width="150px">学号</td>
								<td width="150px">专业</td>
								<td width="200px">选题</td>
								<td colspan="2" width="300px">其他</td>
							</tr>
							<s:iterator value="#request.students" var="student">
							<tr>
								<td>${student.name}</td>
								<td>${student.no}</td>
								<td>${student.specialty}</td>
								<td>${student.issue}</td>
								<td width="150px"><button type="button" class="btn btn-primary"
										onclick='studentInfo("${student.no}")'>详细信息</button></td>
								<td width="150px"><button type="button" class="btn btn-primary"
										onclick='studentGrade("${student.no}")'>成绩管理</button></td>
							</tr>
							</s:iterator>
						</table>
						<h4>互评学生</h4>
						<table class="table table-bordered" style="text-align: center">
							<tr>
								<td width="150px">姓名</td>
								<td width="150px">学号</td>
								<td width="150px">专业</td>
								<td width="200px">选题</td>
								<td colspan="2" width="300px">其他</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<h4>答辩学生</h4>
						<table class="table table-bordered" style="text-align: center">
							<tr>
								<td width="150px">姓名</td>
								<td width="150px">学号</td>
								<td width="150px">专业</td>
								<td width="200px">选题</td>
								<td colspan="2" width="300px">其他</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<script>
							function studentInfo(no) {
								window.location.href = ('teacherStudentDetail?no='
										+ no + '');
							}
							function studentGrade(no) {
								window.location.href = ('teacherStudentGrade?no='
										+ no + '');
							}
						</script>
						<%-----------------%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%--页脚版权信息 --%>
	<%@ include file="/jsp/footer.jsp"%>
	<%--js脚本 --%>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>