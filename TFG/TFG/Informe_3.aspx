<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Informe_3.aspx.vb" Inherits="GESTACTIV.Informe_3" %>

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
            <LocalReport ReportPath="Report3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>" SelectCommand="SELECT DISTINCT SOCIEDAD, CODIGO, CENTRO, REF_CATASTRAL, DESCRIPCION_CORTA, USUARIO, ID, FECHA, TIPO_ARRENDATARIO, TIPO_USO, RENTA_ANUAL, CONTRATO, FECHA_INICIO_CONTRATO, FECHA_FIN_CONTRATO, CODIGO_ARRENDATARIO, OBSERVACIONES, APELLIDO_1, APELLIDO_2, NOMBRE, CODIGO_RESPONSABLE, DESC_TIPO_USO, DESC_TIPO_ARRENDATARIO, DESC_CENTRO, SOCIEDAD AS Expr1, CODIGO AS Expr2, CENTRO AS Expr3, REF_CATASTRAL AS Expr4, DESCRIPCION_CORTA AS Expr5, USUARIO AS Expr6, ID AS Expr7, FECHA AS Expr8, TIPO_ARRENDATARIO AS Expr9, TIPO_USO AS Expr10, RENTA_ANUAL AS Expr11, CONTRATO AS Expr12, FECHA_INICIO_CONTRATO AS Expr13, FECHA_FIN_CONTRATO AS Expr14, CODIGO_ARRENDATARIO AS Expr15, OBSERVACIONES AS Expr16, APELLIDO_1 AS Expr17, APELLIDO_2 AS Expr18, NOMBRE AS Expr19, CODIGO_RESPONSABLE AS Expr20, DESC_TIPO_USO AS Expr21, DESC_TIPO_ARRENDATARIO AS Expr22, DESC_CENTRO AS Expr23 FROM Seleccion_Elementos_New_Datos_Uso WHERE (USUARIO = @Usuario) ORDER BY SOCIEDAD, CODIGO, CENTRO, REF_CATASTRAL, DESCRIPCION_CORTA, ID">
            <SelectParameters>
                <asp:SessionParameter Name="Usuario" SessionField="EntUsuario" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
