<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script type="text/javascript">
    	function b1(){		
		var timeId = document.getElementById("timeId");
		var x  = new Array("������", "����һ", "���ڶ�","������","������", "������","������");
		timeId.innerHTML = "��ǰʱ��Ϊ��   "+"<fmt:formatDate value="<%=new Date()%>" pattern="yyyy��MM��dd��"/>" +"   "+x[new Date().getUTCDay()];
	}
	</script>
    <body onload="b1()">
     <div class="header">
       	<div class="logo"></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="getGoodsByTypeServlet">��ҳ</a></li>
            <li><a href="page?type=0">������Ʒ</a></li>
            <li><a href="page?type=2">������Ʒ</a></li>
            <li><a href="page?type=4">�Ƽ���Ʒ</a></li>
            <li><a href="page?type=1">������Ʒ</a></li>
            <li><a href="page?type=3">�ؼ���Ʒ</a></li>
            <li><a href="okLoggin">��������</a></li>
            <li><a href="pageNoteServlet">�û�����</a></li>
            <li><a href="cart.jsp">���ﳵ</a></li>
            <li><a href="userLoginOut">ע��</a></li>
            </ul>
        </div>                        
       </div> 
       <div id="serachDiv">
       	<div style="padding-left:50px">
       	 <form action="pageSearchServlet" method="post" id="searchForm">
       	 	<table>
       	 		<tr>
       				<td><input type="text" style="width: 250px" name="keywords" id="keywords" /></td>
       				<td><input type="image" src="images/search.gif" name="submit" /></td>
       				<td><img src="images/gjsearch.png" name="gjsearch" /></td>    
       				<td><a href="showSuperTypeServlet">�߼�����</a></td>
       				<td id="timeId" style="padding-left: 130px;"></td>   				
       			</tr>
       		</table>
       	 </form>
       	</div> 		
       </div>
       <!--end of leftTop content-->
      </body> 