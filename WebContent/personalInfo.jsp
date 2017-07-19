<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../res/css/bootstrap.css" rel="stylesheet">
 <link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<script src="../../../res/js/jquery-1.11.3.min.js"></script>

 <!--        <script src="js/fileinput.js" type="text/javascript"></script>
        <script src="js/fileinput_locale_zh.js" type="text/javascript"></script> -->
        <script src="../../res/js/bootstrap.min.js" type="text/javascript"></script>
<style type="text/css">
.text {
	line-height: 35px;
}

.header {
	height: 120px;
}
</style>
<script>
	$("#file-1").fileinput({
		uploadUrl : '#',
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
		overwriteInitial : false,
		maxFileSize : 1000,
		maxFilesNum : 10,
		slugCallback : function(filename) {
			return filename.replace('(', '_').replace(']', '_');
		}
	});

	function edit() {
		//$("#sex").removeClass('disabled');
		$("#sex").attr('disabled', false);
		$("#mail").attr('disabled', false);
		$("#phone").attr('disabled', false);
		$("#QQ").attr('disabled', false);
	}
</script>
<title>Insert title here</title>
</head>

<body>
	<div class="header">
		<ul class="nav nav-tabs">
			<li class="active"><a href="##">个人资料</a></li>
			<li><a href="##">头像上传</a></li>
		</ul>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-xs-3"></div>
			<div class="col-xs-6">
				<form class="form-horizontal Info" role="form">
					<div class="form-group">
						<label class="col-xs-3 control-label text">性别：</label>
						<div class="col-xs-9">
							<select id="sex" class="form-control" disabled>
								<option value="male">男</option>
								<option value="female">女</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label text">邮箱：</label>
						<div class="col-xs-9">
							<input type="text" id="mail" class="form-control" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label text">手机：</label>
						<div class="col-xs-9">
							<input type="text" id="phone" class="form-control" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 control-label text">QQ：</label>
						<div class="col-xs-9">
							<input type="text" id="QQ" class="form-control" disabled>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-9">
							<button type="button" class="btn-primary btn" onclick="edit()">修改</button>
							<button type="submit" class="btn-primary btn">保存</button>
						</div>
					</div>

				</form>
				<form>

					<div class="form-group">
						<input id="file-1" type="file" multiple class="file"
							data-overwrite-initial="false" data-min-file-count="2">
					</div>


				</form>
			</div>
		</div>

	</div>

</body>
</html>