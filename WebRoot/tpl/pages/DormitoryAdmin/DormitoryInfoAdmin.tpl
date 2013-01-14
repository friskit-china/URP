<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetDormitoryInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="dormNo" width="120">宿舍编号</div>
		        <div field="buildNo" width="120">楼号</div>
		        <div field="apartmentNo" width="120">房间号</div>
		        <div field="sex" width="120">住宿性别</div>
		        <div field="stuNum" width="120">最大人数</div>
		        <div field="phone" width="120">宿舍电话号码</div>
		        <div field="manager.name" width="120">舍长</div>
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
