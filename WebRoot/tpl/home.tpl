<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Hello MiniUI!</title>

    {include file="inc/scriptHeader.tpl"}

    <style type="text/css">
        body{
            margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
        }    
        .header
        {
            background:url(/FriskitURP/img/header.gif) repeat-x 0 -1px;
        }
    </style>

</head>
<body>
    <div id="layout1" class="mini-layout" style="width:100%;height:100%;">
        <!-- 头部 -->
        <div class="header" region="north" height="70" showSplit="false" showHeader="false">
            <h1 style="margin:0;padding:15px;cursor:default;font-family:微软雅黑,黑体,宋体;">FriskitURP 校园信息管理系统 (Ver 0.00001)</h1>
            <div style="position:absolute;top:18px;right:10px;">
                <a class="mini-button mini-button-iconTop" iconCls="icon-add" onclick="onQuickClick" plain="true">快捷</a>    
                <a class="mini-button mini-button-iconTop" iconCls="icon-edit" onclick="onClick"  plain="true" >首页</a>        
                <a class="mini-button mini-button-iconTop" iconCls="icon-date" onclick="onClick"  plain="true" >消息</a>        
                <a class="mini-button mini-button-iconTop" iconCls="icon-edit" onclick="onClick"  plain="true" >设置</a>        
                <a class="mini-button mini-button-iconTop" iconCls="icon-close" onclick="onClick"  plain="true" >关闭</a>
            </div>
        </div>
        <div title="south" region="south" showSplit="false" showHeader="false" height="30" >
            <div style="line-height:28px;text-align:center;cursor:default">Copyright © Friskit版权所有 </div>
        </div>
        <div title="center" region="center" bodyStyle="overflow:hidden;">    
            <!--Splitter-->
            <div class="mini-splitter" style="width:100%;height:100%;" borderStyle="border:0;">
                <div size="180" maxSize="250" minSize="100" showCollapseButton="true">
                    <!--OutlookTree-->
                        <div id="leftTree" class="mini-outlooktree" url="{$treePath}" onnodeselect="onNodeSelect" textField="text" idField="id" parentField="pid">
                        </div>
                </div>
                    <!--Tabs-->
                    <div id="mainTabs" class="mini-tabs bg-toolbar" activeIndex="0" style="width:100%;height:100%;" bodyStyle="border:0;background:white;">        
                        <div title="首页" url="/FriskitURP/GetPages/GetIndexPageAction" ></div>
                    </div>
                <div showCollapseButton="false"></div>        
            </div>
        </div>
    </div>
    {literal}
    <script type="text/javascript">
        mini.parse();
        var tree = mini.get("leftTree");
        function showTab(node) {
            var tabs = mini.get("mainTabs");
            var id = "tab$" + node.id;
            var tab = tabs.getTab(id);
            if (!tab) {
                tab = {};
                tab.name = id;
                tab.title = node.text;
                tab.showCloseButton = true;
                switch(node.id){
                    //Attention
                    case "Notification":
                        tab.url = "/FriskitURP/GetPages/GetNotificationPageAction";
                        break;
                    case "SchoolCalendar":
                        tab.url = "/FriskitURP/GetPages/GetSchoolCalendarPageAction";
                        break;
                    case "About":
                        tab.url = "/FriskitURP/GetPages/GetAboutPageAction";
                        break;

                    //CollegeAndDepartment
                    case "CollegeInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetCollegeInfoAdminPageAction";
                        break;
                    case "DepartmentInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetDepartmentInfoAdminPageAction";
                        break;

                    //TeacherAdmin
                    case "TeacherInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetTeacherInfoAdminPageAction";
                        break;
                    case "TeacherCourseAdmin":
                        tab.url = "/FriskitURP/GetPages/GetTeacherCourseAdminPageAction";
                        break;

                    //StudentAdmin
                    case "StudentAdd":
                        tab.url = "/FriskitURP/GetPages/GetStudentAddPageAction";
                        break;
                    case "StudentInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetStudentInfoAdminPageAction";
                        break;

                    //CourseAdmin
                    case "CourseInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetCourseInfoAdminPageAction";
                        break;
                    case "CourseTeachInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetCourseTeachInfoAdminPageAction";
                        break;
                    case "SyllabusQuery":
                        tab.url = "/FriskitURP/GetPages/GetSyllabusQueryPageAction";
                        break;

                    //ScoreAdmin
                    case "RegisterScore":
                        tab.url = "/FriskitURP/GetPages/GetRegisterScorePageAction";
                        break;
                    case "ScoreQuery":
                        tab.url = "/FriskitURP/GetPages/GetScoreQueryPageAction";
                        break;
                    case "ScoreStatistic":
                        tab.url = "/FriskitURP/GetPages/GetScoreStatisticPageAction";
                        break;
                    case "ScoreModify":
                        tab.url = "/FriskitURP/GetPages/GetScoreModifyPageAction";
                        break;
                    case "ClassInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetClassInfoAdminPageAction";
                        break;
                    case "StudentClassAdmin":
                        tab.url = "/FriskitURP/GetPages/GetStudentClassAdminPageAction";
                        break;
                    case "DormitoryInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetDormitoryInfoAdminPageAction";
                        break;
                    case "ClassroomInfoAdmin":
                        tab.url = "/FriskitURP/GetPages/GetClassroomInfoAdminPageAction";
                        break;

                }
                
                tabs.addTab(tab);
            }
            tabs.activeTab(tab);
        }

        function onNodeSelect(e) {
            var node = e.node;
            var isLeaf = e.isLeaf;
            if (isLeaf) {
                showTab(node);
            }
        }

        function onClick(e) {
            var text = this.getText();
            alert(text);
        }

        function onQuickClick(e) {
            tree.expandPath("datagrid");
            tree.selectNode("datagrid");
        }
    </script>
    {/literal}


</body>
</html>