<%-- 
    Document   : edit
    Created on : Jul 15, 2013, 9:59:03 PM
    Author     : s3f4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="solAnaIcerik">
    İnsert Threads
</div>
                    <div id="sagAnaIcerik">
                        <br />
                        <form action="yon.jsp">
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
