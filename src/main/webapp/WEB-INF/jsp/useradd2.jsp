<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户添加页面</span>
        </div>
        <div class="providerAdd">
            <fm:form id="userForm" name="userForm" method="post" modelAttribute="user"  action="${pageContext.request.contextPath }/user/userAdd" enctype="multipart/form-data"  >
				<input  type="hidden" name="method" value="add" />
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                <fm:errors path="userCode"></fm:errors>
                <fm:label path="userCode">用户编码：</fm:label>
                <fm:input path="userCode" id="userCode"  value=""/>
                
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                  <fm:errors path="userName"></fm:errors>
                <fm:label path="userName">用户名称：</fm:label>
                <fm:input path="userName" id="userName"  value=""/>
					<font color="red"></font>
                </div>
                <div>
                
                     <fm:errors path="userPassword"></fm:errors>
                 <fm:label path="userPassword">用户密码：</fm:label>
                <fm:input path="userPassword" id="userPassword"  value=""/>
                
					<font color="red"></font>
                </div>
               <%--  <div>
                 <fm:label path="ruserPassword">确认密码：</fm:label>
                <fm:input path="ruserPassword" id="ruserPassword"  value=""/>
					<font color="red"></font>
                </div> --%>
                <div>
                 <fm:label path="gender">用户性别：</fm:label>
                <fm:select path="gender" id="gender">
                
                <fm:option value="1" selected="selected">男</fm:option>
                <fm:option value="2">女</fm:option>
                
                </fm:select>
                </div>
                <div>
              <fm:errors path="birthday"></fm:errors>
                 <fm:label path="birthday">出生日期：</fm:label>
                 
                <fm:input path="birthday" type="text" Class="Wdate" id="birthday" 
					readonly="readonly" onclick="WdatePicker();"/>
                
					<font color="red"></font>
                </div>
                <div>
                 <fm:label path="phone">用户电话：</fm:label>
                <fm:input path="phone" id="phone"  value=""/>
                
					<font color="red"></font>
                </div>
                <div>
                 <fm:label path="address">用户地址：</fm:label>
                <fm:input path="address" id="address"  value=""/>
                
                </div>
                <div>
                 <fm:label path="userRole">用户角色：</fm:label>
                 <!-- 列出所有的角色分类 -->
                 <fm:select path="userRole" id="userRole">
                   <fm:option value="1">管理员</fm:option>
                    <fm:option value="2">经理</fm:option>
                     <fm:option value="3">员工</fm:option>
                 </fm:select>
                 
	        		<font color="red"></font>
                </div>
                <div>
                   <input type="hidden" id="errorinfo" value="${uploadFileError}" />
                	<label for="idpicpath"></label>
                  	证件照: <input type="file" name="idpicpath" id="idpicpath"  />
                	<font color="red"></font>
                </div>
                
                <div class="providerAddBtn">
                    <input type="submit" name="add" id="add" value="保存" >
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </fm:form>
        </div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/useradd2.js"></script>
