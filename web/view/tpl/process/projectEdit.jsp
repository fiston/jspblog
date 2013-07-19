<%-- 
    Document   : edit
    Created on : Jul 15, 2013, 9:59:03 PM
    Author     : s3f4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="solAnaIcerik">
                        <center><div style="color:black;font-size:12pt;margin-top:3px;">Projeler</div></center>
                        <a id="projeLink" href="">Apache Poi</a>
                        <a id="projeLink" href="">Apache ManifoldCF</a>
                        <a id="projeLink" href="">Apache Solr</a>
                        <a id="projeLink" href="">Apache Lucene</a>

                        <center><div style="color:black;font-size:12pt;margin-top:3px;">Etiketler</div></center>
                        <a href="" id="etiketLink">Apache</a>,<a href="" id="etiketLink">XTreemFS</a>

                        <br />
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
                        <br />
                        <form action="yon.jsp">
                            Başlık :<input type="text" size="80" /><br />
                            İçerik :<textarea class="ckeditor" name="editor1"></textarea><br />
                            Tags   :<input type="text" size="80" /><br />
                                    <input type="submit" value="Gönder" />
                        </form>
                        
                        <script type="text/javascript">
                            CKEDITOR.replace('editor1');
                        </script>
                    </div>
