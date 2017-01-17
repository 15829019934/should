<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

	 window.onload = function(){
		var a1  =document.getElementById("a1");
		var a2  =document.getElementById("a2");
		var a3  =document.getElementById("a3");
		
		a1.onclick = function(){
			$.ajax({
				"url" : "http://www.baidu.com/a_ajax1.action",
				"data" : {
					"id" : 1,
					"a1" : 11
				},
				"dataType":"json",
				"success" : function(data){
					alert("a1");
				}
			});
		}
		
		a2.onclick = function(){
			$.ajax({
				"url" : "a_ajax2.action",
				"data" : {
					"id" : 2,
					"a2" : 22
				},
				"success" : function(){
					alert("a2");
				}});
		}
		
		a3.onclick = function(){
			$.ajax({
				"url" : "a_ajax3.action",
				"data" : {
					"id" : 3,
					"a3" :33
				},
				"success" : function(){
					alert("a3");
				}
			   });
		}
		
		
		function ajax(){
			//url ---请求链接地址
			//success--- 请求成功后的处理函数
			//data ---发送请求的参数  对象JSON
			var setting = {
					"url" : null,
					"success":null,
					"data":{}
			};
			var p = arguments[0];
			for(var a in p){
				setting[a] = p[a];
			}
			
			var data  = setting.data;
			var params = "";
			for(var attr in data){
				params +=attr +"="+data[attr]+"&";
			}
			
			var httpRequest = new XMLHttpRequest();
			httpRequest.onreadystatechange = function(){
				if(httpRequest.readyState == 4 && httpRequest.status==200){
					setting.success();
				}
			}
			
			httpRequest.open("post",setting.url,true);
			httpRequest.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			httpRequest.send(params);
		} 
	}
</script>


</head>

<body>
		<input type="button" value="ajax1" id="a1"/>
		<input type="button" value="ajax2" id="a2"/>
		<input type="button" value="ajax3" id="a3"/>
</body>
</html>



