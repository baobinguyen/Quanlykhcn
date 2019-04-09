<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>

<html>
<head>

    <title><dec:title default="Admin page"/></title>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<c:url value='/template/admin/css/bootstrap.min.css'/>" />
    <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.2.0/css/font-awesome.min.css'/>" />
    <!-- page specific plugin styles -->
    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value='/template/admin/fonts/fonts.googleapis.com.css'/> "/>
    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value='/template/admin/css/ace.min.css'/>" class="ace-main-stylesheet"
          id="main-ace-style"/>
    <!-- ace settings handler -->

    <!--[if lte IE 9]>
    <![endif]-->

    <!--[if lte IE 9]>
    <![endif]-->

    <!-- inline styles related to this page -->
    <script src="<c:url value='/template/admin/js/ace-extra.min.js'/> "></script>
    <!-- ace settings handler -->
    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <![endif]-->

    <dec:head/>
</head>
<body class="no-skin">
<%@include file="/common/admin/header.jsp" %>
<%--<%@ include file="/common/admin/menu.jsp"%>--%>
<dec:body/>
<%--<%@ include file="/common/admin/fooder.jsp"%>--%>
<script src="<c:url value='/template/admin/js/bootstrap.min.js' />"></script>
<!-- page specific plugin scripts -->
<!--[if lte IE 8]>
<![endif]-->
<script src="<c:url value='/template/admin/js/jquery-ui.custom.min.js'/> "></script>
<script src="<c:url value='/template/admin/js/jquery.ui.touch-punch.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/jquery.easypiechart.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/jquery.sparkline.min.js'/> "></script>
<script src="<c:url value='/template/admin/js/jquery.flot.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/jquery.flot.pie.min.js'/> "></script>
<script src="<c:url value='/template/admin/js/jquery.flot.resize.min.js'/> "></script>
<!-- ace scripts -->
<script src="<c:url value='/template/admin/js/ace-elements.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/ace.min.js'/>"></script>
</body>
</html>
