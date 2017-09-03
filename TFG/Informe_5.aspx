<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Informe_5.aspx.vb" Inherits="GESTACTIV.Informe_5" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="3000px">
            <LocalReport ReportPath="Report5.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>" SelectCommand="SELECT DISTINCT SOCIEDAD, CENTRO, CODIGO, REF_CATASTRAL, DESCRIPCION_CORTA, ID, FECHA, TIPO_USO_URBANISTICO, OBSERVACIONES, DESC_USO_URBANISTICO, DESC_CENTRO FROM Seleccion_Elementos_New_Datos_Uso_Urbanistico WHERE (USUARIO = @Usuario) ORDER BY SOCIEDAD, CODIGO, CENTRO, REF_CATASTRAL, DESCRIPCION_CORTA, ID">
            <SelectParameters>
                <asp:SessionParameter Name="Usuario" SessionField="EntUsuario" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
