<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<script type="text/javascript">
	/* window.onload = function(){
		var dire = document.getElementById("direction");
		dire.onchange = function(){
			var id = this.value;
			ajax(id,"v_findDTinfo.action");	
		}
	} 
	*/

	$(function(){
		$('#direction').change(function(){
			$.ajax({
				url:"v_findTypeByDId.action",
				type:"post",
				data:{did:$(this).val()
					},
				dataType:"json",
				succeess:function(data){
					var html="";
					for(var i=0;i<data.length;i++)
						{
							html+="<option value='"+data[i].id+"'>;"+data[i].tname+"</option>"
						}
					$('#type').append(html);
					
				}
			})
		})
	})

</script>


</head>

<body>
		<div class="main_right_top">您现在所在位置 > <span>添加课程信息</span></div>
		<div class="main_right_body"> 
        <div class="body_content">
        	<div class="add_xm_all">
            	<h1 class="add_xm_top">
                	基本信息
                </h1><!--add_xm_top-->
                
            	<div class="add_xm_form">
                	<ul>
                        <li>
                            <label>课程名称：</label>
                            <input type="text" />	
                            <span class="error_text">项目名称不能为空</span>			
                        </li>
                        <li>
                            <label>课程次数：</label>
                            <input type="text" />			
                        </li>
                        <li>
                            <label>方向：</label>
                            <select id="direction">
                            	<option>---请选择方向---</option>
                            	<s:iterator value="listDire" var="dire">
                            		<option value="<s:property value="#dire.id"/>"><s:property value="#dire.direction"/> </option>
                            	</s:iterator>
                            </select>			
                        </li>
                        <li>
                            <label>课程分类：</label>
                            <select>
                            	<option>---请选择方向---</option>
                            </select>			
                        </li>
						<li>
                            <label>作者：</label>
                            <input type="text" />		
                        </li>
                        <li>
                            <label>上传证书：</label>
							<div class="upload_music_all">
								<div class="upload_music">
									<a class="upload_music_btn">上传证书</a>
									<input type="file" class="upload_music_file" />
								</div>
								<div class="upload_img">
									<img src="images/user_img.png" />
									<a class="detele_upload"></a>
								</div>	
							</div><!--upload_music_all-->                            	
                        </li>
                    </ul>
                    <div class="regist_btn">
                        <input type="submit" value="提交" />
                        <a class="return_btn">返回</a>
                    </div>
                </div><!--add_xm_form-->
            </div><!--add_xm_all-->
       </div>	
	</div> <!--main_right_body-->
	
</body>
</html>



