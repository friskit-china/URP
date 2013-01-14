<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetScoreInfo" idField="id" allowResize="true">
		    <div property="columns">
		    	<div field="id.student.stuNo" width="120">学生学号</div>
		    	<div field="id.student.name" width="120">学生姓名</div>
		        <div field="id.course.courseNo" width="120">课程编号</div>
		        <div field="id.course.kind" width="120">课程类别</div>
		        <div field="id.course.name" width="120">课程名</div>
		        <div field="id.course.credit" width="120">课程学分</div>
		        <div field="score" width="120">考试分数</div>
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
