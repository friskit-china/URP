<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetCourseInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="courseNo" width="120">课程编号</div>
		        <div field="kind" width="120">课程类别</div>
		        <div field="name" width="120">课程名</div>
		        <div field="credit" width="120">课程学分</div>
		        <div field="introduction" width="120">课程介绍</div>
		    </div>
		</div>
		{literal}
		<script type="text/javascript">
			mini.parse();
			var grid = mini.get("datagrid");
			grid.load();
		</script>
		{/literal}
	</body>
</html>
