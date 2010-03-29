
<#include "/commons/macro.ftl" />

<@override name="head">
	<title>SchedulerGroup.TABLE_ALIAS 新增</title>
</@override>

<@override name="content">
	<form method="post" action="${ctx}/schedulergroup" >
		<input id="submitButton" name="submitButton" type="submit" value="提交" />
		<input type="button" value="返回列表" onclick="window.location='${ctx}/schedulergroup'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<table class="formTable">
		<#include "form_include.ftl" />
		</table>
	</form>
	
	<script>
		
		new Validation(document.forms[0],{onSubmit:true,onFormValidate : function(result,form) {
			var finalResult = result;
			
			//在这里添加自定义验证
			
			return disableSubmit(finalResult,'submitButton');
		}});
	</script>
</@override>


<@extends name="/base.ftl"/>