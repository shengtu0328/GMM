<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="X-UA-Compatible" content="IE-8">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="base" value="<%=request.getContextPath()%>" scope="session" />
<c:if test="${base=='/'}">
	<c:set var="base" value="" />
</c:if>
<c:set var="res" value="${base}/res" />
<script>
	var base = '${base}';
</script>