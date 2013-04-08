<%--
  GRANITE DATA SERVICES
  Copyright (C) 2011 GRANITE DATA SERVICES S.A.S.

  This file is part of Granite Data Services.

  Granite Data Services is free software; you can redistribute it and/or modify
  it under the terms of the GNU Library General Public License as published by
  the Free Software Foundation; either version 2 of the License, or (at your
  option) any later version.

  Granite Data Services is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Library General Public License
  for more details.

  You should have received a copy of the GNU Library General Public License
  along with this library; if not, see <http://www.gnu.org/licenses/>.

  @author Franck WOLFF
--%>/**
 * Generated by Gas3 v${gVersion} (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package ${jClass.clientType.packageName};<%

	///////////////////////////////////////////////////////////////////////////
	// Write Import Statements.
	
	Set javaImports = new TreeSet();
	
	javaImports.add("javax.inject.Inject");
	javaImports.add("javax.inject.Named");
	javaImports.add("org.granite.messaging.amf.RemoteClass");
	javaImports.add("org.granite.client.tide.server.ServerSession");
	
	if (javaImports.size() > 0) {%>
	<%
	}
	for (javaImport in javaImports) {%>
import ${javaImport};<%
	}
	%>

@Named
@RemoteClass("${jClass.qualifiedName}")
public class ${jClass.clientType.name} extends ${jClass.clientType.name}Base {
	
	@Inject
	public ${jClass.clientType.name}(ServerSession serverSession) {
    	super(serverSession);
    }
}
