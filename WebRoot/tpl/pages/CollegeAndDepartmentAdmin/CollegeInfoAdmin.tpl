<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{include file="../../inc/scriptHeader.tpl"}
	</head>

	<body>
		<div id="datagrid" class="mini-datagrid" style="width:800px;height:500px;" url="/FriskitURP/a/GetCollegeInfo" idField="id" allowResize="true">
		    <div property="columns">
		        <div field="collegeNo" width="120">学院编号</div>
		        <div field="president.teacherName" width="120">院长</div>
		        <div field="name" width="120">学院名称</div>
		        <div field="phone" width="120">联系电话</div>
		        <div field="introduction" width="120">学院简介</div>
		    </div>
		</div> 

		<div id="detailWindow" class="mini-window" title="修改学院信息" style="width:500px;height:300px;" showFooter="true" showModal="true" allowResize="true" allowDrag="true">
			<div property="footer">
				<a id="savaModifyBtn" class="mini-button" iconCls="icon-save">保存修改</a>
			</div>
			<div property="body">
				<table>
					<tr>
						<td>
							<label>学院编号:</label>
						</td>
						<td>
							<input id="collegeNo" style="width: 300px" class="mini-textbox" required="true" allowInput="false"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>学院名称:</label>
						</td>
						<td>
							<input id="collegeName" style="width: 300px" class="mini-textbox" required="true"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>院长:</label>
						</td>
						<td>
							<input id="presidentTeacherName" style="width: 300px" class="mini-treeselect" url="/FriskitURP/a/GetTeacherList" required="true" multiSelect="false" />
							<input id="presidentTeacherNo" class="mini-hidden"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>学院电话:</label>
						</td>
						<td>
							<input vtype="int" id="phone" style="width: 300px" class="mini-textbox">
						</td>
					</tr>
					<tr>
						<td>
							<label>学院简介:</label>
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
        		dealEdit(e.record.collegeNo);
        	});

        	function dealEdit(collegeNo){
        		$.ajax({
        			type:		"GET",
					url:		"/FriskitURP/a/GetCollegeDetail?collegeNo="+collegeNo,
					dataType:	"json",
					success: 	function(data){
						if(data.stateCode!=0){
							//alert("出现错误:"+data.stateCode+"\n返回信息:"+data.result);
							showErrorBox("出现错误:"+data.stateCode,"返回信息"+data.result);
							return;
						}
						mini.get("collegeNo").setValue(data.college.collegeNo);
						mini.get("collegeName").setValue(data.college.name);
						if(data.college.president!=null){
							mini.get("presidentTeacherNo").setValue(data.college.president.teacherNo);
							mini.get("presidentTeacherName").setValue(data.college.president.teacherNo+"-"+data.college.president.teacherName);
						}else{
							mini.get("presidentTeacherNo").setValue(null);
							mini.get("presidentTeacherName").setValue(null);
						}
						mini.get("phone").setValue(data.college.phone);
						mini.get("introduction").setValue(data.college.introduction);

						var win = mini.get("detailWindow");
						win.show();
					},
					error:	function(){
						showErrorBox("网络传输错误","数据传输失败，请检查网络链接状态");
					} 
        		});
        	}

        	mini.get("presidentTeacherName").on("beforenodeselect",function(e){
        		var oldValue = mini.get("presidentTeacherName").getValue();
        		//禁止选中父节点
        		if (e.isLeaf == false) {
        			showErrorBox("数据非法","请选择学院下属的老师");
        			e.cancel = true;
        			mini.get("presidentTeacherName").setValue(oldValue);
        		}else{
        			mini.get("presidentTeacherNo").setValue(e.node.id);
        		}
        	});

        	mini.get("savaModifyBtn").on("click",function(){
        		var postData = "";
        		postData+="collegeNo="+mini.get("collegeNo").getValue();

        		if(mini.get("presidentTeacherNo").getValue()!="")
        			postData+="&presidentTeacherNo="+mini.get("presidentTeacherNo").getValue();
        		if(mini.get("collegeName").getValue()!="")
        			postData+="&collegeName="+mini.get("collegeName").getValue();
        		if(mini.get("phone").getValue()!="")
        			postData+="&phone="+mini.get("phone").getValue();
        		if(mini.get("introduction").getValue()!="")
        			postData+="&introduction="+mini.get("introduction").getValue();

        		$.ajax({
        			type:		"POST",
        			url: 		"/FriskitURP/a/SaveCollegeDetailModify",
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
