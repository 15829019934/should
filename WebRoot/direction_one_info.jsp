<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="css/base.css" type="text/css" />
</head>

<body>
    <div class="main_right_top">您现在所在位置 > <span>课程方向详情</span></div>
    <div class="main_right_body">
    <div class="body_content"> 
    	<div class="project_detail">
        	<h1 class="project_detail_title">课程方向</h1>
        	<ul class="p_form">
                <li>
                    <label>课程方向：</label>
                    <span class="p_name"><s:property value="dv.direction"/></span>	
                </li>
                <li>
                    <label>课程说明：</label>
                    <span class="p_name"><s:property value="dv.info"/></span>	
                </li>
            </ul>
        </div><!--project_detail-->
        <div class="biao_list">
            <div class="set_all">
                <h1 class="biao_title"><s:property value="dv.direction"/></h1>
                <a href="add_direction_child.html" class="set_btn_link">添加课程方向子类</a>
            </div><!--set_all-->
            <table border="0" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" />
                        </th>
                        <th>分类名称</th>
                        <th>分类说明</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                <s:iterator value="listDtype" var="dtVO">
                    <tr>
                        <td><input type="checkbox" /></td>
                        <td><s:property value="#dtVO.tname"/></td>
                        <td>html是前端课程信息的标准</td>
                        <td>
                            <a href="#" class="td_edit">修改</a>
                            <a href="#" class="td_detele">删除</a>
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

