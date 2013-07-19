<%-- 
    Document   : addThread
    Created on : Jul 17, 2013, 11:39:13 PM
    Author     : s3f4
--%>

<%@page import="db.action.ThreadDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="orm.Thread" %>
<div id="solAnaIcerik">
    İnsert Threads
</div>
                    <div id="sagAnaIcerik">
                        <br />
                        <form action="yon.jsp?process=insert&insertType=thread" method="post">
                            <table border="0">
                                
                                <tbody>
                                    <tr>
                                        <td>Başlık : </td>
                                        <td><input type="text" size="77" name="threadTitle"/></td>
                                    </tr>
                                    <tr>
                                        <td>İçerik : </td>
                                        <td> <textarea class="ckeditor" name="editor1" name="threadTitle"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td>Etiketler : </td>
                                        <td><input type="text" size="77" name="threadTagId"/></td>
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
    String threadTitle,threadContent,threadDate;
    int[] threadTagId = {1,2,3,4,5};
    int userId=1;
    threadTitle=request.getParameter("threadTitle");
    threadContent=request.getParameter("threadContent");
    threadDate=plugins.Time.Now();

    orm.Thread thread = new orm.Thread(userId,threadTitle,threadContent,threadDate,threadTagId);
    ThreadDB threadDB = new ThreadDB();
    threadDB.addThread(thread);
%>