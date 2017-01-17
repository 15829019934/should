<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

	$(function(){
		var i=0;
		$('#bt').click(function(){
			var uu = $('#uu');
			var html = "<ul class='dele_ul'>"
						+"<li><label>课程方向：</label>"
						+"<input type='text' name='list["+(i++)+"]'/>"
						+"</li><div class='clr'></div>"
						+"<a class='detele_upload'></a></ul>";
			uu.append(html);
			var i=0;
			$.each($('#uu input[type=text]'),function(){
				$(this).attr("name","listDire["+(i++)+"]");
			});
			
			$('.detele_upload').click(function(){
				$(this).parent().remove();
				
			});
			
		});
	});
</script>
</head>

<body>
    <div class="main_right_top">您现在所在位置 > <a>添加课程类型信息</a> ></div>
    <div class="main_right_body"> 
    	<div class="body_content">
            <div class="bridge_fome_all">
              <form action="kc_addDirection.action" method="post">
              <div class="bridge_fome">
                    <div class="bridge_fome_one">
                        <div class="base_infor">
                        	<div class="set_all">
              				  <h1 class="biao_title">基本信息</h1>
               				 <a href="#" class="set_btn_link" id="bt">添加课程方向信息</a>
            				</div><!--set_all-->
						 </div><!--base_infor-->
                       <div class="bridge_add_index" style="width:800px;margin: 0px auto;" id="uu">
						</div><!--bridge_add_index-->
                    </div><!--bridge_fome_one-->
					 <div class="regist_btn">
                        <input type="submit" value="保存" />
                        <a class="return_btn">取消</a>
                 </div>
              </div><!--bridge_fome-->
              </form>
            </div><!--bridge_fome_all-->
         </div><!--body_content-->
    </div> <!--main_right_body-->
</body>
</html>
