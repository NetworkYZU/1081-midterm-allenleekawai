<%-- 
    Document   : list
    Created on : Oct 31, 2019, 9:54:35 AM
    Author     : lendle
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>FoodKoala, your elite food ordering and delivering service</title>
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    </head>
    <body>
        <a href="order.jsp"><button>去加購</button></a><br/>
        您購物車裡的食物：<br/>
        <table style="width: 90%;" border="1">
            <thead>
                <th>項目</th>
            </thead>
            <tbody>
                
                <!--
                question 1 (30%)
                -->
                <ol>
                    <%
                        ArrayList list=(ArrayList)session.getAttribute("list");
                        for(int i=0; list!=null && i<list.size(); i++) {
                            String t=(String)list.get(i);
                            out.println("<tr><td><li>" + t + "</li></td></tr>");
                        }
                    %>
                </ol>
                <!--
                從 session 取得 foodList 這個 attribute 
                將 foodList 裏面的每個字串列成 table 的一列
                例如
                <tr><td>烤雞腿</td></tr>
                -->
                
            </tbody>
        </table>
        <a href="checkout.jsp"><button>Checkout</button></a><br/>
        
        <!--
        question 2 (10%)
        -->
        <%@ include file="/WEB-INF/footer.jsp" %>
        <!--
        引用 /WEB-INF/footer.jsp
        -->
        
    </body>
</html>
