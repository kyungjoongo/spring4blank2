<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context" value="${pageContext.request.contextPath}" />


<link rel="stylesheet" type="text/css" href="${context}/resources/diffview.css">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html lang="ko">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<head>
<style type="text/css">
body {
	font-size: 12px;
	font-family: Sans-Serif;
}
h2 {
	margin: 0.5em 0 0.1em;
	text-align: center;
}
.top {
	text-align: center;
}
.textInput {
	display: block;
	width: 49%;
	float: left;
}
textarea {
	width:100%;
	height:300px;
}
label:hover {
	text-decoration: underline;
	cursor: pointer;
}
.spacer {
	margin-left: 10px;
}
.viewType {
	font-size: 16px;
	clear: both;
	text-align: center;
	padding: 1em;
}
#diffoutput {
	width: 100%;
}
.texttitle{
display: none;
}

.author
{
display: none;
}
.diff td{
width: 350px;
;font-size: 11pt;
}
</style>

<title>고경준 mvc MVC야이개본ㅁ의 새끼야lsdkflsdkfl욕한번 오지게 해주라ㅑ</title>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"	integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="	crossorigin="anonymous"></script> -->



<script src="${context}/resources/jquery.js" type="text/javascript"></script>
<script src="${context}/resources/diffview.js" type="text/javascript"></script>
<script src="${context}/resources/difflib.js" type="text/javascript"></script>

<script type="text/javascript">

$(document).ready(function() {
	//str, str2, appendDiv
	var str1= "      select * from num where 1=1 num='sdlfksdlkf'\nsfsdkjafksdjfk\nwhere num=1 and test=1 where 1=1\n\n\select * from      query\nslfksldfkldskf\nsdfksdjf\nsdfdskflksdflksdfsdkf1=1\nslkflsdkf";
	var str2= "\nsfsdkjafksdjfk\nwhere num=1 and test=1 where 1=1\nldkgldkfglkdflgdlfkg fom stes where 1=1\ndlfkgfdlkg 1=1\n\n\n\n\n\nsdfdskflksdflksdfsdkf1=1";	
	diffUsingJS(str1,str2, "diffoutput");
});

function diffUsingJS(str1, str2, outputDiv) {
	"use strict";
	var byId = function (id) { return document.getElementById(id); },
		base = difflib.stringAsLines(str1),
		newtxt = difflib.stringAsLines(str2),
		sm = new difflib.SequenceMatcher(base, newtxt),
		opcodes = sm.get_opcodes(),
		diffoutputdiv = byId(outputDiv),
		contextSize = 18;
	
	
	diffoutputdiv.innerHTML = "";
	diffoutputdiv.appendChild(diffview.buildView({
		baseTextLines: base,
		newTextLines: newtxt,
		opcodes: opcodes,
		viewType: 0
	}));
}

</script>
</head>
<body>
	
	<div id="diffoutput"> </div>
</body>
</html>