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
width: 800px;
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
	
	diffUsingJS(0);
});

function diffUsingJS(viewType) {
	"use strict";
	var byId = function (id) { return document.getElementById(id); },
		base = difflib.stringAsLines("      kkkkkkkkkkkkkkkk\nsfsdkjafksdjfk\nwhere num=1 and test=1 where 1=1\n\n\select * from      query\nslfksldfkldskf\nsdfksdjf\nsdfdskflksdflksdfsdkf1=1\nslkflsdkf"),
		newtxt = difflib.stringAsLines("\nsfsdkjafksdjfk\nwhere num=1 and test=1 where 1=1\nldkgldkfglkdflgdlfkg fom stes where 1=1\ndlfkgfdlkg 1=1\n\n\n\n\n\nsdfdskflksdflksdfsdkf1=1"),
		sm = new difflib.SequenceMatcher(base, newtxt),
		opcodes = sm.get_opcodes(),
		diffoutputdiv = byId("diffoutput"),
		contextSize = 18;

	diffoutputdiv.innerHTML = "";
	//contextSize = contextSize || null;

	diffoutputdiv.appendChild(diffview.buildView({
		baseTextLines: base,
		newTextLines: newtxt,
		opcodes: opcodes,
		baseTextName: "dsfgsdfg",
		newTextName: "fdsgsfdgf",
		contextSize: contextSize,
		viewType: viewType
	}));
}

</script>
</head>
<body>
	<!-- <h1 class="top"><a href="http://github.com/cemerick/jsdifflib">jsdifflib</a> demo</h1>
	<div class="top">
		<strong>Context size (optional):</strong> <input type="text" id="contextSize" value="" />
	</div>
	<div class="textInput">
		<h2>Base Text</h2>
		<textarea id="baseText"></textarea>
	</div>
	<div class="textInput spacer">
		<h2>New Text</h2>
		<textarea id="newText"></textarea>
	</div>
	<div class="viewType">
		<input type="radio" name="_viewtype" id="sidebyside" onclick="diffUsingJS(0);" /> <label for="sidebyside">Side by Side Diff</label>
		&nbsp; &nbsp;
		<input type="radio" name="_viewtype" id="inline" onclick="diffUsingJS(1);" /> <label for="inline">Inline Diff</label>
	</div> -->
	<div id="diffoutput"> </div>
</body>
</html>