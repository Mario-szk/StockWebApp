<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<title>�̹�����_<s:property value="#request.searchkeyword" /></title>
		<style></style>
		<link rel="stylesheet" href="css/style.css" />
		<link href="css/divcss5.css" rel="stylesheet" media="screen" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.6.4.js"></script>

	</head>
	<body link="#0000cc">
		<div id="out">
			<div id="in">
				<div id="wrapper">
					<div id="head">
						<div class="nv">
							<a href="search_index.html" class="logo"
								><img
									src="<%=basePath %>images/pangusou_logo.jpg" width="117"
									height="38" border="0" alt="��������ҳ">
							</a>
							<div class="tab">
								<s:if test="#request.searchtype == 0">
									<b>��Ѷ</b>
									<a href="search_gegu_index.html">����</a>
									<a href="fullTextSearch.html">ȫ�ļ���</a>
								</s:if>
								
								<s:elseif test="#request.searchtype == 1">
									<a	href="search_index.html">��Ѷ</a>
									<b>����</b>
									<a href="fullTextSearch.html">ȫ�ļ���</a>
								</s:elseif>
								<s:elseif test="#request.searchtype == 2">
									<a href="search_index.html">��Ѷ</a>
									<a href="search_gegu_index.html">����</a>
									<b>ȫ�ļ���</b>
								</s:elseif>
								
							</div>
						</div>
						<form name="f" action="searchStockAction.action" class="fm">
							<input type="hidden" name="bs" value="#searchkeyword">
							<input type="hidden" name="searchtype" value=<s:property value="#request.searchtype"/>>
							<input type="text" name="searchkeyword" id="kw" class="i" value=<s:property value="#request.searchkeyword"/>
								maxlength="100">
							<span class="btn_wr"><input type="submit" id="su"
									value="�̹�����" class="btn"
									onMouseDown= this.className = 'btn btn_h';
									onMouseOut= this.className = 'btn';>
							 </span><span class="tools"><span
								id="mHolder"> </span> </span>
						</form>
					</div>
					<br>
					<div id="container">
					<s:if test="#request.pageControl.maxPage>0">
						<s:iterator value="#request.pageControl.data">
						<br>
						<table cellpadding="0" cellspacing="0" class="result" id="2">
							<tr>
								<td class=f>
									<h3 class="t">
										<a href="<s:property value="url"/>"
											target="_blank"><s:property value="title" escapeHtml="false"/></a>
									</h3>
									<font size=-1>	<s:property value="stockContent" escapeHtml="false"/> ...<br>
										<span class="g"><s:property value="url"/> </span> - ʱ�䣺
										<span class="g"><s:property value="strPubDate"/> </span>
										<br/><font size=-1>�÷�:<span ><s:property value="strScore"/></span></font>
									<br>
									</font>
								</td>
							</tr>
						</table>
						</s:iterator>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>


						<script></script>
						<br clear=all>

						<p id="page">
							<s:include value="page.jsp"></s:include>
						</p>
					
						</s:if>
					
		<s:else>
		sorry!!!
	</s:else>
						
					</div>
					<div class="w960"> </div>
					<div id="js">
 						 <script type="text/javascript" src="js/common.js"></script>
 						 <script type="text/javascript" src="js/scroll.js"></script>
						  <div id="go_top_bottom"><a href="javascript:void(0);" id="go_top" style="display: block;">ȥ����</a> <a href="javascript:void(0);" id="go_bottom">ȥ�ײ�</a></div>
</div>

					<div id="search"></div>

					<div id="foot">
						&copy;2011 PanGu
						<span>������ϵ�̹��Ѹ�������ָ���Զ������Ľ�����������̹����޳ɱ�������վ�����ݻ�����</span>
					</div>
				</div>
			</div>
		</div>
		<img src="http://c.baidu.com/c.gif?t=0&q=%D0%BB%B7%E5%C1%E9&p=0&pn=1"
			style="display: none">
	</body>

	

	<script src="http://www.baidu.com/user/js/u.js"></script>

	<script type="text/javascript"
		src="http://www.baidu.com/cache/hps/js/hps-1.1.1.js"></script>

</html>
<!--0ab494977d3fc3e6-->
</p>