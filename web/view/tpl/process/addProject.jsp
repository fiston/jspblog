<%-- 
    Document   : addProject
    Created on : Jul 17, 2013, 11:38:50 PM
    Author     : s3f4
--%>

<%@page import="db.action.ProjectDB"%>
<%@page import="orm.Project"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="solAnaIcerik">
    İnsert Threads
</div>
                    <div id="sagAnaIcerik">
                        <br />
                        <form action="yon.jsp?process=insert&insertType=thread">
                            <table border="0">
                                
                                <tbody>
                                    <tr>
                                        <td>Başlık : </td>
                                        <td><input type="text" size="77" /></td>
                                    </tr>
                                    <tr>
                                        <td>İçerik : </td>
                                        <td> <textarea class="ckeditor" name="editor1"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>Etiketler : </td>
                                        <td><input type="text" size="77" /></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td><center><input type="submit" value="Gönder" /></center></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>                      
                        <script type="text/javascript">
                            CKEDITOR.replace('editor1');
                        </script>
                    </div>
<%
    String projectTitle,projectContent,projectDate,projectStartDate,projectFinishDate;
    int[] projectTagId = {1,2,3,4,5};
    int userId=1;
    projectTitle=request.getParameter("projectTitle");
    projectContent=request.getParameter("projectContent");
    projectDate=plugins.Time.Now();
    projectStartDate=request.getParameter("projectTitle");
    projectFinishDate=request.getParameter("projectTitle");
    Project project = new Project(userId,projectTitle,projectContent,projectDate,projectStartDate,projectFinishDate,projectTagId);
    ProjectDB projectDB = new ProjectDB();
    projectDB.addProject(project);
%>