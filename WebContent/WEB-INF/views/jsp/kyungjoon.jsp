<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<head>
<title>고경준 mvc MVC야이개본ㅁ의 새끼야lsdkflsdkfl욕한번 오지게 해주라ㅑ</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"
	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
	crossorigin="anonymous"></script>

<script>
	//A $( document ).ready() block.
	$(document).ready(function() {
		/* 	console.log("ready!");

			alert("sdlfksdlkf");

			alert("돌아이쉬키");
		 */

		/* 	var data = {
				"items" : [ {
					"id" : 1,
					"category" : "cat1"
				}, {
					"id" : 2,
					"category" : "cat2"
				}, {
					"id" : 3,
					"category" : "cat1"
				} ]
			}; */

		var json = {
			'homes' : [ {
				"tableName" : "test66",
				"price" : "925",
				"sqft" : "1100",
				"num_of_beds" : "2",
				"num_of_baths" : "2.0",
			}, {
				"tableName" : "test777",
				"price" : "1425",
				"sqft" : "1900",
				"num_of_beds" : "4",
				"num_of_baths" : "2.5",
			}, {
				"tableName" : "test123",
				"price" : "1425",
				"sqft" : "1900",
				"num_of_beds" : "4",
				"num_of_baths" : "2.5",
			}, {
				"tableName" : "temp012345",
				"price" : "1425",
				"sqft" : "1900",
				"num_of_beds" : "4",
				"num_of_baths" : "2.5",
			}

			// ... (more homes) ...     
			]
		}

		var selectTableNames = [];

		selectTableNames.push("test66");
		selectTableNames.push("test777");
		selectTableNames.push("temp012345");

		//code for filtering//		//code for filtering//		//code for filtering//		//code for filtering//	
		//code for filtering//
		json.homes = $.map(json.homes, function(jsonDataElementOne, index) {

			var isAddedData = false;
			for (var i = 0; i < selectTableNames.length; i++) {
				if (selectTableNames[i] == jsonDataElementOne.tableName) {
					isAddedData = true;
					break;
				}
			}

			if (isAddedData == true) {
				return jsonDataElementOne;
			}
			
			
		});


		alert(JSON.stringify(json.homes));

	});
</script>
</head>
<body>
	<div class="container">

		<div class="row">고경준
			천재님이십니디ㅏsdlfksldkflsdkflksdlfklkdfsgdfsgsdfgsdfgdfsgsdfgdfsg

			ㄴㅇ리ㅏㄴㅁ이라ㅣㄴ망리ㅏㄴ이라니알 추가LSADKFLASDKF ㄴㅇ리ㅏㄴㅁ이라 aslkdlaskdlasdlk
			ㅣㄴ망리ㅏㄴ이라니알 추가LSADKFLASDKF ㄴㅇ리ㅏㄴㅁ이라ㅣㄴ망리ㅏㄴ이라니알 추가LSADKFLASDKF
			ㄴㅇ리ㅏㄴㅁ이라ㅣㄴ망리ㅏㄴ이라니알 추가LSADKFLASDKF</div>


		<hr>
		<footer>
		<p>&copy; Mkyong.com 2015</p>
		</footer>
	</div>
	
	sdafasdf
	sdfdsfsdfadsf

	<spring:url value="/resources/core/css/hello.js" var="coreJs" />
	<spring:url value="/resources/core/css/bootstrap.min.js"
		var="bootstrapJs" />

	<script src="${coreJs}"></script>
	<script src="${bootstrapJs}"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>

<div class="tmpl_handlebars" id="tmpl_places">
	<article>
	<h1>Hello, World!</h1>
	<p>This is a template...</p>
	{{coreJs}} </article>
</div>

<scrip {{blankchar}}t type="tmpl_handlebars" id="tmpl_places"> <article>




asdasd asdasdasd ㄴㅁㅇㄹㄴㅇㄹ ㅁ ㅁㄴㅇㅁㄴㅇ {{each colList}}
<table>
	{{ldskfl}} {{ldskfl}} {{ldskfl}}
	<tr>
		</scrip>
	</tr>
	{{ldskfl}}



</table>
{{/each}} </article> </script>
</html>

asdasd


<script>
	$(function() {
		$(".tmpl_handlebars").each(
				function() {
					var $this = $(this);
					var children = $this.children().detach();
					var id = $this.attr("id");
					$this.replaceWith($('<script type="tmpl_handlebars"/>')
							.attr("id", id).append(children));
				});
	});
</script>