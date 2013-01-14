<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetClassroomInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="classroomNo" width="120">教室编号</div>
		        <div field="kind" width="120">教室类别</div>
		        <div field="name" width="120">教室名</div>
		        <div field="capacity" width="120">教室容量</div>
		        <div field="comments" width="120">注释</div>
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
