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
<sql:query var="t1" dataSource="jdbc/s3f4Pool">
    SELECT threadid,threadtitle,threadcontent FROM thread
</sql:query>
<sql:query var="project" dataSource="jdbc/s3f4Pool">
    SELECT projectid,projecttitle FROM project
</sql:query>
<sql:query var="tag" dataSource="jdbc/s3f4Pool">
    SELECT tagid,tagname FROM tag
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
        <%if(request.getParameter("id") == null){ %>
        <c:forEach var="row" items="${t1.rows}">
            <a href="thread.jsp?id=${row.threadid}" id="title"> ${row.threadtitle}</a>
            <div id="content">
                ${row.threadcontent}
            </div>
        </c:forEach>
         <%}else{ %>
        <c:forEach var="row" items="${rs.rows}">
            <a href="thread.jsp?id=${row.threadid}" id="title"> ${row.threadtitle}</a>
            <div id="content">
                ${row.threadcontent}
            </div>
        </c:forEach>
        <%}%>

    </div>
</div>
<%@include file="view/tpl/footer.jsp" %>
