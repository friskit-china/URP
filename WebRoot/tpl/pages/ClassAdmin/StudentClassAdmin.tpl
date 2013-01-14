<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetStudentClassInfo" idField="id" allowResize="true"> 
			<div property="columns">
		        <div field="id.student.stuNo" width="120">学生学号</div>
		        <div field="id.student.name" width="120">学生名称</div>
		        <div field="id.uclass.classNo" width="120">班级编号</div>
		        <div field="id.uclass.name" width="120">班级名称</div>
		        <div field="id.uclass.kind" width="120">班级类别</div>
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
