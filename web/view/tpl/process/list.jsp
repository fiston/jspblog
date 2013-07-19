<%-- 
    Document   : list
    Created on : Jul 15, 2013, 9:49:31 PM
    Author     : s3f4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="project" dataSource="jdbc/s3f4Pool">
    SELECT projectid,projecttitle FROM project
</sql:query>
<sql:query var="tag" dataSource="jdbc/s3f4Pool">
    SELECT tagid,tagname FROM tag
</sql:query>
<sql:query var="thread" dataSource="jdbc/s3f4Pool">
    SELECT threadid,threadtitle,threadcontent FROM thread
</sql:query>
<div id="solAnaIcerik">


    <table>
        <c:forEach var="t" items="${tag.rows}">
            <tr>
                <td>
                    <a href="tag.jsp?id=${t.tagid}" id="title"> ${t.tagname}</a>
                </td>
                <td>
                    <a href="yon.jsp?process=edit&editType=tag&tagId=${t.tagid}">Düzenle</a>
                </td>
                <td>
                    <a href="yon.jsp?process=del&delType=tag&tagId=${t.tagid}">Sil</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="sagAnaIcerik">
    <a href="yon.jsp?process=insert&insertType=thread">Thread Ekle</a> - <a href="yon.jsp?process=insert&insertType=project">Project Ekle</a>
    <hr />
    <table>
        <c:forEach var="p" items="${project.rows}">
            <tr>
                <td>
                    <a href="project.jsp?id=${p.projectid}" id="projeLink"> ${p.projecttitle}</a>
                </td>
                <td>
                    <a href="yon.jsp?process=edit&editType=project&projectId=${p.projectid}">Düzenle</a>
                </td>
                <td>
                    <a href="yon.jsp?process=del&delType=project&projectId=${p.projectid}">Sil</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <hr />
    <table>
        <c:forEach var="thread" items="${thread.rows}">
            <tr>
                <td>
                    <a href="thread.jsp?id=${thread.threadid}" id="title"> ${thread.threadtitle}</a>
                </td>
                <td>
                    <a href="yon.jsp?process=edit&editType=thread&threadId=${thread.threadid}">Düzenle</a>
                </td>
                <td>
                    <a href="yon.jsp?process=del&delType=thread&threadId=${thread.threadid}">Sil</a>
                </td>
            </tr>
        </c:forEach>    
    </table>
</div>