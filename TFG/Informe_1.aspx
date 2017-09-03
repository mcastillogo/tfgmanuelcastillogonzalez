<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Informe_1.aspx.vb" Inherits="GESTACTIV.Informe_1" Debug="true"%>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 317px">
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>" SelectCommand="SELECT DISTINCT SOCIEDAD, CODIGO, TIPO_ELEMENTO, CENTRO, UBICACION, COD_POSTAL, TIPO_LOCALIDAD, TIPO_PROVINCIA, FECHA, TITULO_PROPIEDAD, PROTOCOLO, TIPO_REGISTRO, COPIA_TITULO, CTIPO_PROVINCIA, NUM_FINCA, TIPO_CERTIFICACION, REF_CATASTRAL, IBI, DESCRIPCION_CORTA, DESCRIPCION_LARGA, OBSERVACIONES_GENERALES, CODIGO_NOTARIO, USUARIO, DESC_CENTRO, DESC_TIPO_REGISTRO, APELLIDO_1_NOTARIO, APELLIDO_2_NOTARIO, NOMBRE_NOTARIO, DESC_TIPO_CERTIFICACION, DESC_TIPO_ELEMENTO FROM Seleccion_Elementos_New WHERE (USUARIO = @Usuario) ORDER BY SOCIEDAD, CODIGO, TIPO_ELEMENTO">
            <SelectParameters>
                <asp:SessionParameter Name="Usuario" SessionField="EntUsuario" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="3000px">
            <LocalReport ReportPath="Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <br />
        <br />
                    <br />
        <br />
        <br />
    
    </div>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
