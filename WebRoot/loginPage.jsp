<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>smarty4j Test</title>
  </head>
  
  <body>
    <s:form action="/mng/book">
	<table width="100%" border="0" align="left" cellpadding="0"
		cellspacing="0">
		<tr>
			<td>
			<div class="labeltext">ÓÃ»§Ãû:</div>
			</td>
		</tr>
		<tr>
			<td><input name="uname" type="text" id="uname" class="input-text">
			</td>
		</tr>
		<tr>
			<td>
			<div class="labeltext">ÃÜÂë:</div>
			</td>
		</tr>
		<tr>
			<td><input name="upass" type="password" id="upass"
				class="input-text"></td>
		</tr>
		<tr>
			<td height="50" valign="bottom"><input type="submit"
				name="imageField" value="µÇÂ¼" class="loginbutton"></td>
		</tr>
		<tr>
			<td height="20" valign="bottom" class="uErr"></td>
		</tr>
	</table>
	</s:form>

  </body>
</html>
