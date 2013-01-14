<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:800px;height:500px;" url="/FriskitURP/a/GetDepartmentInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="departNo" width="120">系编号</div>
		        <div field="departmentHeader.teacherName" width="120">系主任</div>
		        <div field="college.name" with="120">隶属学院</div>
		        <div field="name" width="120">系名称</div>
		        <div field="phone" width="120">联系电话</div>
		        <div field="introduction" width="120">系简介</div>
		    </div>
		</div> 

		<div id="detailWindow" class="mini-window" title="修改系信息" style="width:500px;height:300px;" showFooter="true" showModal="true" allowResize="true" allowDrag="true">
			<div property="footer">
				<a id="savaModifyBtn" class="mini-button" iconCls="icon-save">保存修改</a>
			</div>
			<div property="body">
				<table>
					<tr>
						<td>
							<label>系编号:</label>
						</td>
						<td>
							<input id="departNo" style="width: 300px" class="mini-textbox" required="true" allowInput="false"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>系名称:</label>
						</td>
						<td>
							<input id="departName" style="width: 300px" class="mini-textbox" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>隶属学院：</label>
						</td>
						<td>
							<input id="collegeName" style="width: 300px" class="mini-treeselect" url="/FriskitURP/a/GetCollegeList" required="true" multiSelect="false"/>
							<input id="collegeNo" class="mini-hidden"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>系主任:</label>
						</td>
						<td>
							<input id="departmentHeaderTeacherName" style="width: 300px" class="mini-treeselect" url="/FriskitURP/a/GetTeacherList" required="true" multiSelect="false" />
							<input id="departmentHeaderTeacherNo" class="mini-hidden"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>系电话:</label>
						</td>
						<td>
							<input vtype="int" id="phone" style="width: 300px" class="mini-textbox">
						</td>
					</tr>
					<tr>
						<td>
							<label>系简介:</label>
						</td>
						<td>
							<input id="introduction" style="width: 300px" class="mini-textarea">
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
        		dealEdit(e.record.departNo);
        	});

        	function dealEdit(departNo){
        		$.ajax({
        			type:		"GET",
					url:		"/FriskitURP/a/GetDepartmentDetail?departNo="+departNo,
					dataType:	"json",
					success: 	function(data){
						if(data.stateCode!=0){
							showErrorBox("出现错误:"+data.stateCode,"返回信息"+data.result);
							return;
						}

						mini.get("departNo").setValue(data.department.departNo);
						mini.get("departName").setValue(data.department.name);

						if(data.department.departmentHeader!=null){
							mini.get("departmentHeaderTeacherNo").setValue(data.department.departmentHeader.teacherNo);
							mini.get("departmentHeaderTeacherName").setValue(data.department.departmentHeader.teacherNo+"-"+data.department.departmentHeader.teacherName);
						}else{
							mini.get("departmentHeaderTeacherNo").setValue(null);
							mini.get("departmentHeaderTeacherName").setValue(null);
						}

						if(data.department.college!=null){
							mini.get("collegeNo").setValue(data.department.college.collegeNo);
							mini.get("collegeName").setValue(data.department.college.collegeNo+"-"+data.department.college.name);
						}else{
							mini.get("collegeNo").setValue(null);
							mini.get("collegeName").setValue(null);
						}

						mini.get("phone").setValue(data.department.phone);
						mini.get("introduction").setValue(data.department.introduction);


						var win = mini.get("detailWindow");
						win.show();
					},
					error:	function(){
						showErrorBox("网络传输错误","数据传输失败，请检查网络链接状态");
					} 
        		});
        	}


        	mini.get("collegeName").on("beforenodeselect",function(e){
        		var oldValue = mini.get("collegeName").getValue();
        		mini.get("collegeNo").setValue(e.node.id);
        	});

        	mini.get("departmentHeaderTeacherName").on("beforenodeselect",function(e){
        		var oldValue = mini.get("departmentHeaderTeacherName").getValue();
        		//禁止选中父节点
        		if (e.isLeaf == false) {
        			showErrorBox("数据非法","请选择学院下属的老师");
        			e.cancel = true;
        			mini.get("departmentHeaderTeacherName").setValue(oldValue);
        		}else{
        			mini.get("departmentHeaderTeacherNo").setValue(e.node.id);
        		}
        	});


        	mini.get("savaModifyBtn").on("click",function(){
        		var postData = "";
        		postData+="departNo="+mini.get("departNo").getValue();

        		if(mini.get("departmentHeaderTeacherNo").getValue()!="")
        			postData+="&departmentHeaderTeacherNo="+mini.get("departmentHeaderTeacherNo").getValue();
        		if(mini.get("collegeNo").getValue()!="")
        			postData+="&collegeNo="+mini.get("collegeNo").getValue();
        		if(mini.get("departName").getValue()!="")
        			postData+="&departName="+mini.get("departName").getValue();
        		if(mini.get("phone").getValue()!="")
        			postData+="&phone="+mini.get("phone").getValue();
        		if(mini.get("introduction").getValue()!="")
        			postData+="&introduction="+mini.get("introduction").getValue();
        		$.ajax({
        			type:		"POST",
        			url: 		"/FriskitURP/a/SaveDepartmentDetailModify",
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
		</script>
		{/literal}
	</body>
</html>
