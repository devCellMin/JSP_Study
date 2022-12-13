<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
        	*{margin: 0;padding: 0;box-sizing: border-box;}
        	#uploadForm {
        		margin: 0 auto;
        		border: 1px solid black;
        	}
        	#uploadForm>table {
        		margin: 30px auto 10px auto;
        		border-collapse: collapse;
        		border: 1px solid black;
        	}
        	#uploadForm>table tr>th,
        	#uploadForm>table tr>td {
        		border: 1px solid black;
        		text-align: center;
        	}
        	#uploadForm>table tr:not(:first-child)>th {
        		text-align: right;
        		padding: 5px 10px;
        	}
        	
        	#uploadForm>table tr>td>input[type=text] {
        		width: calc(100% - 10px);
        		height: 30px;
        		border: none;
        		padding: 0 5px
        	}
        	
        	#uploadForm>table tr>td>input[type=file] {
        		width: calc(100% - 10px);
        		height: 30px;
        		margin-top: 5px;
        	}
        	
        	#btnUpload {
        		padding: 3px 10px;
        	}
        	
        </style>
    </head>
    <body>
    
    	<form id="uploadForm" action="ImageUpload.jsp" method="post" enctype="multipart/form-data">
    		<table>
    			<tr>
    				<th colspan="2">파일 업로드 폼</th>
    			</tr>
    			<tr>
    				<th>올린 사람 :</th>
    				<td>
    					<input type="text" id="name" name="name">
    				</td>
    			</tr>
    			<tr>
    				<th>제  목 :</th>
    				<td>
    					<input type="text" id="subject" name="subject">
    				</td>
    			</tr>
    			<tr>
    				<th>파일명 :</th>
    				<td>
    					<input type="file" id="fileUpload" name="fileUpload" multiple="multiple">
    				</td>
    			</tr>
    			<tr>
    				<td colspan="2">
    					<input type="button" id="btnUpload" value="전송">
    				</td>
    			</tr>
    		</table>
    	</form>
    	
        <script>
        	window.onload = function() {
        		
        		btnUpload.addEventListener("click", function(event) {
        			uploadForm.submit();
        		});
        	}
        </script>
    </body>
</html>