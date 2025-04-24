<%@page import="com.ibm.json.java.JSONObject, psdi.server.MXServer"%>

<%
JSONObject userJSON = new JSONObject();
s.getUserInfo().toJSON(userJSON, false);
theMXServer = MXServer.getMXServer();

String userFullName = HTML.encode(HTML.cleanHtml((String)userJSON.get("displayName"), true, false));
String defaultSite = HTML.encode(HTML.cleanHtml((String)userJSON.get("defaultSite"), true, false));
String aEnvBannerMsg = theMXServer.getProperty("STI.EnvBannerMsg")
String aEnvBannerStyle = theMXServer.getProperty("STI.EnvBannerStyle")

%>


<div style="<%=aEnvBannerStyle%>"><%=aEnvBannerMsg%></div>
