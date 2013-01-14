<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:1000px;height:500px;" url="/FriskitURP/a/GetTeacherInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="teacherNo" width="100">教师编号</div>
		        <div field="teacherName" width="100">教师姓名</div>
		        <div field="sex" width="100" renderer="onGenderRenderer">教师性别</div>
		        <div field="phone" width="180">联系电话</div>
		        <div field="post" width="120">邮政编码</div>
		        <div field="college.name" width="120">隶属学院</div>
		        <div field="department.name" width="120">隶属系</div>
		    </div>
		</div>
		<div id="detailWindow" class="mini-window" title="修改教师信息" style="width:500px;height:300px;" showFooter="true" showModal="true" allowResize="true" allowDrag="true">
			<div property="footer">
				<a id="savaModifyBtn" class="mini-button" iconCls="icon-save">保存修改</a>
			</div>
			<div property="body">
				<table>
					<tr>
						<td>
							<label>教师编号:</label>
						</td>
						<td>
							<input id="teacherNo" style="width: 300px" class="mini-textbox" required="true" allowInput="false"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>教师名称:</label>
						</td>
						<td>
							<input id="teacherName" style="width: 300px" class="mini-textbox" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>教师性别:</label>
						</td>
						<td>
							<input id="sex" style="width: 300px" class="mini-textbox" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>隶属学院:</label>
						</td>
						<td>
							<input id="collegeName" style="width: 300px" class="mini-treeselect" url="/FriskitURP/a/GetCollegeList" required="true" multiSelect="false" />
							<input id="collegeNo" class="mini-hidden"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>隶属系:</label>
						</td>
						<td>
							<input id="departName" style="width: 300px" class="mini-treeselect" url="/FriskitURP/a/GetDepartmentList" required="true" multiSelect="false" />
							<input id="departNo" class="mini-hidden"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>教师电话:</label>
						</td>
						<td>
							<input vtype="int" id="phone" style="width: 300px" class="mini-textbox">
						</td>
					</tr>
					<tr>
						<td>
							<label>教师信箱:</label>
						</td>
						<td>
							<input vtype="int" id="post" style="width: 300px" class="mini-textbox">
						</td>
					</tr>
				</table>
			</div>
		</div>
		{literal}
		<script type="text/javascript">
			mini.parse();
        	var grid = mini.get("datagrid");
        	grid.load({
        		pageSize:100
        	});

        	grid.on("rowdblclick",function(e){
        		dealEdit(e.record.teacherNo);
        	});

        	function dealEdit(teacherNo){
        		$.ajax({
        			type:		"GET",
					url:		"/FriskitURP/a/GetTeacherDetail?teacherNo="+teacherNo,
					dataType:	"json",
					success: 	function(data){
						if(data.stateCode!=0){
							showErrorBox("出现错误:"+data.stateCode,"返回信息"+data.result);
							return;
						}
						mini.get("teacherNo").setValue(data.teacher.teacherNo);
						mini.get("teacherName").setValue(data.teacher.teacherName);
						if(data.teacher.sex==1){
							mini.get("sex").setValue("男");
						}else if(data.teacher.sex==2){
							mini.get("sex").setValue("女");
						}else{
							mini.get("sex").setValue(null);
						}
						
						mini.get("phone").setValue(data.teacher.phone);
						mini.get("post").setValue(data.teacher.post);
						if(data.teacher.college!=null){
							mini.get("collegeNo").setValue(data.teacher.college.collegeNo);
							mini.get("collegeName").setValue(data.teacher.college.collegeNo+"-"+data.teacher.college.name);
						}else{
							mini.get("collegeNo").setValue(null);
							mini.get("collegeName").setValue(null);
						}
						if(data.teacher.department!=null){
							mini.get("departNo").setValue(data.teacher.department.departNo);
							mini.get("departName").setValue(data.teacher.department.departNo+"-"+data.teacher.department.name);
						}else{
							mini.get("departNo").setValue(null);
							mini.get("departName").setValue(null);
						}
						var win = mini.get("detailWindow");
						win.show();
					},
					error:	function(){
						showErrorBox("网络传输错误","数据传输失败，请检查网络链接状态");
					} 
        		});
        	}

        	mini.get("collegeName").on("beforenodeselect",function(e){
        		mini.get("collegeNo").setValue(e.node.id);
        	});


        	mini.get("departName").on("beforenodeselect",function(e){
        		var oldValue = mini.get("departName").getValue();
        		//禁止选中父节点
        		if (e.isLeaf == false) {
        			showErrorBox("数据非法","请选择学院下属的系");
        			e.cancel = true;
        			mini.get("departName").setValue(oldValue);
        		}else{
        			mini.get("departNo").setValue(e.node.id);
        		}
        	});

        	mini.get("savaModifyBtn").on("click",function(){
        		var postData = "";
        		postData+="teacherNo="+mini.get("teacherNo").getValue();

        		if(mini.get("teacherName").getValue()!="")
        			postData+="&teacherName="+mini.get("teacherName").getValue();
        		if(mini.get("sex").getValue()!=""){
        			if(mini.get("sex").getValue()=="男"){
        				postData+="&sex="+1;
        			}else if(mini.get("sex").getValue()=="女"){
        				postData+="&sex="+2;
        			}
        		}
        		if(mini.get("phone").getValue()!="")
        			postData+="&phone="+mini.get("phone").getValue();
        		if(mini.get("post").getValue()!="")
        			postData+="&post="+mini.get("post").getValue();
        		if(mini.get("collegeNo").getValue()!="")
        			postData+="&collegeNo="+mini.get("collegeNo").getValue();
        		if(mini.get("departNo").getValue!="")
        			postData+="&departNo="+mini.get("departNo").getValue();

        		$.ajax({
        			type:		"POST",
        			url: 		"/FriskitURP/a/SaveTeacherDetailModify",
        			dataType: 	"json",
        			data: 		postData,
        			success: 	function(data){
        				mini.showMessageBox({
        					width: 300,
        					title: "操作完成！",
        					buttons: ["ok"],
        					message: "数据已成功保存",
        					iconCls: "mini-messagebox-info"
        				});
        				mini.get("detailWindow").hide();
        				grid.reload();
        			},
        			error: 		function(){
        				showErrorBox("网络传输错误","数据传输失败，请检查网络链接状态");
        			}
        		});
        	});
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
