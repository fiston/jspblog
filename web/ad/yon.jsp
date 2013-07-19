<%-- 
    Document   : index
    Created on : Jul 14, 2013, 9:48:37 PM
    Author     : s3f4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../view/css/site.css" />
        <title>JSP Page</title>
        <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <script type="text/javascript" src="../view/js/ana.js">
        </script>
        <div>
            <div id="ana">
                <div id="ust">
                    <div id="logo">
                        Sefa ŞAHİN
                    </div>
                    <div id="ustLinkler">
                        <a href="default.jsp" id="link">Home Page</a>
                        <a href="project.jsp" id="link">Projects</a>
                        <a href="thread.jsp" id="link">Threads</a>
                        <a href="tag.jsp?name=clojure" id="link">Clojure</a>
                        <a href="tag.jsp?name=clojure" id="link">Java Techs</a>
                        <a href="tag.jsp?name=clojure" id="link">Data Mining</a>
                        <a href="tag.jsp?name=clojure" id="link">Artificial Intelligence</a>
                    </div>
                </div>
                <div id="mainContent">
                    <%
                        String process;
                        if (request.getParameter("process") == null) {
                    %>
                    <%@include file="../view/tpl/process/list.jsp" %>
                    <%                             } else {
                        process = request.getParameter("process");
                        if (process.equals("list")) {%>
                    <%@include file="../view/tpl/process/list.jsp" %>
                    <% } else if (process.equals("edit")) {
                        String editType = request.getParameter("editType");
                        if (editType.equals("tag")) {
                            if (request.getParameter("tagId") != null) {
                                String tagId = request.getParameter("tagId");
                    %>
                    <%@include file="../view/tpl/process/tagEdit.jsp" %>
                    <%
                        }
                    } else if (editType.equals("project")) {
                        if (request.getParameter("projectId") != null) {
                            String projectId = request.getParameter("projectId");
                    %>
                    <%@include file="../view/tpl/process/projectEdit.jsp" %>
                    <%
                        }
                    } else if (editType.equals("thread")) {
                        if (request.getParameter("threadId") != null) {
                            String threadId = request.getParameter("threadId");
                    %>
                    <%@include file="../view/tpl/process/tagEdit.jsp" %>
                    <%
                            }
                        }
                    } else if (process.equals("del")) {
                        if (request.getParameter("delType") != null) {
                            String type = request.getParameter("delType");
                            if (type.equals("tag")) {
                                if (request.getParameter("tagId") != null) {
                                    out.print("delete tag");
                                }
                            } else if (type.equals("project")) {
                                if (request.getParameter("projectId") != null) {
                                    out.print("delete project");
                                }
                            } else if (type.equals("thread")) {
                                if (request.getParameter("threadId") != null) {
                                    out.print("delete Thread");
                                }
                            }
                        }
                    } else if (process.equals("insert")) {
                        String insertType = request.getParameter("insertType");
                        if (insertType.equals("thread")) {
                    %>
                    <%@include file="../view/tpl/process/addThread.jsp" %>
                    <%                            } else if (insertType.equals("project")) {
                    %>
                    <%@include file="../view/tpl/process/addProject.jsp" %>
                    <%                                    }

                        } else {
                            out.print("sie Go");
                        }
    }%>

                </div>
                <%@include file="../view/tpl/footer.jsp" %>
