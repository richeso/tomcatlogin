
<%@page import="org.apache.catalina.realm.GenericPrincipal"%><%
	out.print(request.getRemoteUser());
	out.print("<br></br><hr></hr>");
	GenericPrincipal principal = (GenericPrincipal) request.getUserPrincipal();
	int rolenum=0;
	for (String role : principal.getRoles()) {
		out.print(" Registered Role #"+(++rolenum)+" ==> " + role);
		out.print("<br></br>");
	}
%>