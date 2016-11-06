<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gradle + Spring MVC</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
<script
  src="https://code.jquery.com/jquery-1.12.4.js"  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="  crossorigin="anonymous"></script>

<script>
//A $( document ).ready() block.
$( document ).ready(function() {
    console.log( "ready!" );
    
    alert("sdlfksdlkf");
    
    alert("돌아이쉬키");
});

</script>
</head>
<body>
<div class="container">

	<div class="row">
		고경준 천재님이십니디ㅏsdlfksldkflsdkflksdlfklkdfsgdfsgsdfgsdfgdfsgsdfgdfsg
	rhrusdfkasjdfkjsadkffsdja
	spring4 proejct testlskdflskdlfksdlkflk
	
	고경준천재님이십니다mysql pogsdkfo, oracle, mssql
	
	</div>


	<hr>
	<footer>
		<p>&copy; Mkyong.com 2015</p>
	</footer>
</div>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>