<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetClassInfo" idField="id" allowResize="true"> 
			<div property="columns">
		        <div field="classNo" width="120">班级序号</div>
		        <div field="name" width="120">班级名称</div>
		        <div field="kind" width="120">班级类别</div>
		        <div field="monitor.name">班长</div>
		        <div field="manager.teacherName">班主任</div>
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
