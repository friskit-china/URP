<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetStudentInfo" idField="id" allowResize="true"
		sizeList="[20,30,50,100]" pageSize="20"
		>
		    <div property="columns">
		    	<div type="indexcolumn"></div>
		    	<div field="stuNo" width="120">学号</div>
		    	<div field="name" width="80">姓名</div>
		    	<div field="nation" width="40">民族</div>
		    	<div field="sex" width="40" renderer="onGenderRenderer">性别</div>
		    	<div field="birthday" width="120" dateFormat="yyyy-MM-dd">生日</div>
		    	<div field="polity" width="80">政治面貌</div>
		    	<div field="dormitory.dormitoryNo" width="80">宿舍</div>
		    	<div field="source" width="80">学生来源</div>
		    	<div field="score" width="80">入学成绩</div>
		    	<div field="homePhone" width="100">家庭电话</div>
		    	<div field="address" width="100">家庭地址</div>
		    </div>
		</div>
		{literal}
		<script type="text/javascript">
			mini.parse();
        	var grid = mini.get("datagrid");
        	grid.load();

        	function showErrorBox(_title,_message){
        		mini.showMessageBox({
					width: 300,
					title: _title,
					buttons: ["ok"],
					message: _message,
					iconCls: "mini-messagebox-error"
				});
        	}

			var Genders = [{ id: 1, text: '男' }, { id: 2, text: '女'}];
			function onGenderRenderer(e) {
				for (var i = 0, l = Genders.length; i < l; i++) {
					var g = Genders[i];
					if (g.id == e.value) return g.text;
				}
				return "";
	        }
		</script>
		{/literal}
	</body>
</html>
