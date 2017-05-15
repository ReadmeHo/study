
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajax应用</title>
    </head>
    <script type="text/javascript">
	var xmlHttp;
	function createHttpRequest(){
	    if(window.ActiveXObject)
		xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	    else
		if(window.XMLHttpRequest)
		    xmlHttp=new XMLHttpRequest();
	}
	function beginCheck(){
	    var xh=document.all.xh.value;
	    if(xh==""){
		alert("请输入学号");
		return;
	    }
	}
	createHttpRequest();
	xmlHttp.onreadystatechange=processor;
	xmlHttp.open("get","CheckUser?xh="+xh);
	xmlHttp.send(null);
	function processor(){
	    var responseContext;
	    if(xmlHttp.readyState==4)
		if(xmlHttp.status==200){
		    responseContext=xmlHttp.responseText;
		    if(responseContext.indexOf("true")!=-1)
			alert("有效");
		    else
			alert("已有此学号");
		}
	}
    </script>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
