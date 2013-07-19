<%-- 
    Document   : index
    Created on : Jul 14, 2013, 9:48:37 PM
    Author     : s3f4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="view/tpl/header.jsp" %>

<sql:query var="rs" dataSource="jdbc/s3f4Pool">
    SELECT threadid,threadtitle,threadcontent FROM thread Where threadid=<%= request.getParameter("id")%>
</sql:query>
<sql:query var="project" dataSource="jdbc/s3f4Pool">
    SELECT projectid,projecttitle FROM project
</sql:query>
<sql:query var="tag" dataSource="jdbc/s3f4Pool">
    SELECT tagid,tagname FROM tag
</sql:query>
<sql:query var="tagThread" dataSource="jdbc/s3f4Pool">
    SELECT t.threadid,t.threadtitle 
    FROM thread t,tagmap tm,tag tg 
    WHERE tg.tagname='<% request.getParameter("name");%>' 
    AND tm.tagid=tg.tagId AND t.threadid=tm.id
    AND tm.type=0
</sql:query>
<sql:query var="tagProject" dataSource="jdbc/s3f4Pool">
    SELECT p.projectid,p.projecttitle 
    FROM project p,tagmap tm,tag tg 
    WHERE tg.tagname='<% request.getParameter("name");%>' 
    AND tm.tagid=tg.tagId AND p.projectid=tm.id
    AND tm.type=1
</sql:query>
<div id="mainContent">
    <div id="solAnaIcerik"><br />
        <center><div style="color:black;font-size:12pt;margin-top:3px;">Projects</div></center>

        <c:forEach var="p" items="${project.rows}">
            <a href="project.jsp?id=${p.projectid}" id="projeLink"> ${p.projecttitle}</a>
        </c:forEach>
        <br />
        <center><div style="color:black;font-size:12pt;margin-top:3px;">Tags</div></center>

        <c:forEach var="t" items="${tag.rows}">
            <a href="tag.jsp?id=${t.tagid}" id="etiketLink"> ${t.tagname}</a>
        </c:forEach>


        <br /><br />
        <center>
            <script id="_wau0dz">var _wau = _wau || [];
                _wau.push(["colored", "0w5051ox580o", "0dz", "009ada000000"]);
                (function() {
                    var s = document.createElement("script");
                    s.async = true;
                    s.src = "http://widgets.amung.us/colored.js";
                    document.getElementsByTagName("head")[0].appendChild(s);
                })();</script>
        </center>
    </div>
    <div id="sagAnaIcerik">
        <c:forEach var="t" items="${tag.rows}">
            <a href="thread.jsp?id=${t.tagid}" id="title"> ${t.tagname}</a>
        </c:forEach>


    </div>
</div>
<%@include file="view/tpl/footer.jsp" %>
