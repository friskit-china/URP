<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetTeachCourseInfo" idField="id" allowResize="true">
		    <div property="columns">
		    	<div field="id.course.courseNo" width="120">课程编号</div>
		        <div field="id.course.name" width="120">课程名称</div>
		        <div field="id.course.kind" width="120">课程类型</div>
		        <div field="id.teacher.teacherNo" width="120">教师编号</div>
		        <div field="id.teacher.teacherName" width="120">教师姓名</div>
		        <div field="comments" width="120">备注</div>
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
