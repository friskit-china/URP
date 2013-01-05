<!DOCTYPE html>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<html>
<head>
    
	{include file="../../inc/scriptHeader.tpl"}
</head>
<body>
    这里要放置一大堆通知……<br>
    <input id="helloBtn" class="mini-button" text="测试button" onclick="onHelloClick"/>
    <script type="text/javascript">
        function onHelloClick(e) {
            var button = e.sender;
            mini.alert("Hello Friskit~");
        }
    </script>
</body>
</html>