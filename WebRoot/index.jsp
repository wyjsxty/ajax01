<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>index.jsp</title>
    <script type="text/javascript" src="/ajax01/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    				
    		$('input[type=button]').click(function(){
    			var form = $('form').serializeArray();
    			$.ajax({
    				url:'/ajax01/userlogin/loginmsg.action',
    				data:form,
    				success:function(msg){
					  	alert(msg);
					}
    			});	
    		}); 	 	
    	});
    	
    	$.ajaxSetup({
		  type: "POST",
		  beforeSend:function(msg){
		  	alert('begin');
		  },
		  complete:function(msg){
		  	alert('end');
		  },
		  error:function(msg){
		  	alert('error');
		  }
		});
    	
    	/**
    	$(this).ajaxSuccess(function(event,request, settings){
   			alert(request.responseText);	
   		});
   		*/
    </script>
  </head>
  
  <body>
    <form action="/ajax01/userlogin/loginmsg.action" method="get" enctype="application/x-www-form-urlencoded">
    	<input type="text" name="username" />
    	<input type="text" name="password" />
    	<input type="button" value="登录" />
    </form>
  </body>
</html>
