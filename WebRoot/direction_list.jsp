<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<!-- 引入 Bootstrap -->
      <link href="boot/css/bootstrap.min.css" rel="stylesheet"/>
      <script src="boot/js/jquery-1.9.1.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="boot/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
 <script type="text/javascript">
	$(function(){
		$('.td_detele').click(function(){
			if($(this).text() == "删除"){
				/* 删除数据 */
				var id=$(this).attr("val");
	 			$(this).parent().parent().remove(); 
				var httpRequest = new XMLHttpRequest();
				httpRequest.onreadystatechange= function(){
					if(httpRequest.readyState ==4){
							
					}
				}
				
				httpRequest.open('POST','kc_delDirectionById.action',true);//true:异步 ; flase:同步
				httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
				//发送请求
				httpRequest.send("id="+id);
			}else{
				/* 取消当前保存操作 */
				/* 还原页面元素 */
				$(this).prev().prev().show();
				$(this).text("删除");
				$(this).prev().text("修改");
				var info = $(this).parent().prev();
				var infot =info.children().val();
				var dire = $(this).parent().prev().prev();
				var diret = dire.children().val();
				info.children().remove();
				dire.children().remove();
				dire.text(diret);
				info.text(infot);
			}
			
		});

		/* 修改操作如下 */
		
		$('.td_edit').click(function(){
			
			/* 得到 */
			var id =$(this).next().attr("val");
			var dire = $(this).parent().prev().prev();
			var diret= dire.text();
			var info = $(this).parent().prev();
			var infot = info.text();
			var father = $(this).parent();
			
			 /* 改变页面元素 进行修改操作 */ 
			if($(this).text() == "修改"){
				$(this).prev().hide();
				$(this).text("保存").attr('');
				$(this).next().text("取消");	
				dire.text("");
				info.text("");
				/* 以下方法为动态創建一个元素 追加到指定元素里 */
				$(function(){ 
					$('<input />',{ 
						type:"text", 
						val:diret, 
						class:"form-control",
						id:"direction" 
					}).appendTo(dire); 
					}); 
				$(function(){ 
					$('<input />',{ 
						type:"text", 
						val:infot, 
						id:"info" ,
						class:"form-control"
					}).appendTo(info); 
					}); 
			}else{
				/* !!!在这儿进行异步保存 */
				/* 保存修改后的数据,页面元素还原 kc_updateDirection.action（处理数据的保存） */
				$.ajax({
					type:'post',
				    contentType:'application/x-www-form-urlencoded; charset=UTF-8',
					"url":"kc_updateDirection.action",
					"data":{
						"id":id,
						"direction":dire.children().val(),
						"info":info.children().val()
					},
					"success":function(){
						
					}
				});
				//异步请求结束后还原页面元素
				$(this).prev().show();
				$(this).text("修改").attr('');
				$(this).next().text("删除");
				var info = $(this).parent().prev();
				var infot =info.children().val();
				var dire = $(this).parent().prev().prev();
				var diret = dire.children().val();
				info.children().remove();
				dire.children().remove();
				dire.text(diret);
				info.text(infot);
			}
		});
	});
</script>

</head>

<body><s:debug></s:debug>
	<div class="main_right_top">您现在所在位置 > <span>课程方向管理</span></div>
    <div class="main_right_body">
    <div class="body_content"> 
        <div class="biao_list">
            <div class="set_all">
                <h1 class="biao_title">课程方向</h1>
                <a href="add_direction.jsp" class="set_btn_link">添加课程方向</a>
            </div><!--set_all-->
            <table border="0" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" />
                        </th>
                        <th>方向名称</th>
                        <th>方向说明</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="listDirection" status="ad" var="dire">
                    <s:if test="#ad.index%2==0">
                    	<tr >
                    </s:if>
                    <s:else>
                    	<tr  class="tr_two">
                    </s:else>
                    		<input type="hidden" id="hd" value="<s:property value="#dire.id"/>"/>
	                        <td><input type="checkbox" /></td>
	                        <td><s:property value="#dire.direction"/></td>
	                        <td><s:property value="#dire.info" /></td>
	                        <td>
	                            <a href="kc_findDirectionInfo.action?id=${dire.id }"  class="td_detail">详情</a>
	                            <a href="#" class="td_edit">修改</a>
	                            <!-- 使用访问链接的形式删除如下 但是页面有刷新 -->
	                            <%--href= "remove.action?id=${dire.id}" --%>
	                            <a  href="#"   class="td_detele" val="<s:property value="#dire.id"/>">删除</a>
	                        </td>
                    </tr>
                   </s:iterator>
                </tbody>
            </table>
            <div class="page_all">
                <div class="page">
                    <ul>
                        <li>
                            <a><span class="arrow_left"></span></a>
                        </li>
                        <li>
                            <a>1</a>
                        </li>
                        <li>
                            <a>2</a>
                        </li>
                        <li class="page_active">
                            <a>3</a>
                        </li>
                        <li>
                            <a>4</a>
                        </li>
                        <li>
                            <a>5</a>
                        </li>
                        <li>
                            <a><span class="arrow_right"></span></a>
                        </li>
                        <div class="clr"></div>
                    </ul>
                </div>
                <div class="clr"></div>
            </div><!--page_all-->
            
        </div><!--biao_list-->
        </div>
    </div> <!--main_right_body-->
</body>
</html>
