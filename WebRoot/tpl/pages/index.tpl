<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    {include file="../inc/scriptHeader.tpl"}
  </head>
  
  <body>		
  		本产品历时27小时写完成，内容简陋，由于很多功能类似，外加考试周压力大，所以很多体力劳动都省略了<br>
		现已实现：<br>
		<ul>
			<li>所有的查询功能</li>
			<li>学院信息编辑</li>
			<li>系信息编辑</li>
			<li>教师个人信息编辑</li>
		</ul>

		产品特色：<br>
		<ul>
			<li>使用轻量级J2EE框架Struts+Hibernate</li>
			<li>前端界面完美支持HTML5，并兼容IE7.0+</li>
			<li>大量使用Ajax技术减少数据传输，增加用户体验</li>
			<li>原创映射模型，耦合度低，非常适合功能扩展和维护</li>
		</ul>

		产品不足：<br>
		<ul>
			<li>由于时间紧迫，功能实现并不是很细致</li>
			<li>对于版本太老的IE，兼容性不强</li>
			<li>开放前没有经过太严格的设计和规划，所以在远程部署时可能会遇到URL转换等问题</li>
			<li>权限验证功能没有实现。（打算为不同权限的用户拼接不同的功能节点，达到分组权限功能，但由于时间问题，此部分尚未添加，但已经预留好接口方便日后扩展）</li>
			<li>部分未经细致加工的查询页面中的外键引用没有转换到对用户友好的形式。（重点页面有此功能）</li>
		</ul>

		上述带有编辑功能的模块是经过精细制作的。实现了查询，修改等功能。其他模块由于原理类似仅实现基本查询功能。</br>
		项目采用Struts2作为MVC框架、Hibernate作为ORM引擎、采用Smarty4J作为模板解释引擎、JQuery MiniUI作为前端显示框架。</br>
		模板映射大致原理如下。</br>
		主页使用MiniUI的Tree控件，实现对多个节点功能的相应。节点被点击后会向Struts请求页面，此时Struts将调用Smarty4J，将映射文件中的模板文件渲染后返回。</br>
		返回的模板被作为子框架显示在主页中。模板中使用json作为数据传输格式实现Ajax。

  </body>
</html>
