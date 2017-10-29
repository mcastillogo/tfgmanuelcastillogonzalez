<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FichaInmueble.aspx.vb" Inherits="GESTACTIV.FichaInmueble" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-FICHA INMUEBLE</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div title="GESTACTIV - FICHA INMUEBLE">
        <div>
            <div>
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: 0px; width: 1439px;
            position: absolute; top: 0px; height: 723px; margin-right: 0px; margin-bottom: 0px;" /><img id="I_1_Inmuebles" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 24px;
                    width: 118px; position: absolute; top: 8px; height: 87px; background-color: #FFFFFF;" />
                <img id="I_2_Inmuebles" alt="" src="man-2546224_960_720.png" style="z-index: 107; left: 146px;
                    width: 179px; position: absolute; top: 9px; height: 88px" />
                &nbsp;&nbsp;
                <asp:Label ID="T_1_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True"
                    Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                    left: 328px; position: absolute; top: -62px" Text="ACS Construcciones y Servicios"
                    Width="520px"></asp:Label>
                <img id="I_3_Seguridad" alt="" src="logopiedra.jpg" style="z-index: 105; left: 1032px;
                    width: 166px; position: absolute; top: -126px; height: 88px" />
                <asp:Label ID="T_2_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True"
                    Font-Names="Arial" Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103;
                    left: 184px; position: absolute; top: -134px" Text="Sistema de Información Inmobiliaria (SII)"
                    Width="464px"></asp:Label>
                <asp:Label ID="T_2_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True"
                    Font-Names="Arial" Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103;
                    left: 344px; position: absolute; top: 72px" Text="Sistema de Información Inmobiliaria (SII)"
                    Width="464px"></asp:Label>
                <asp:Label ID="T_1_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True"
                    Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                    left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
                    Width="520px"></asp:Label>
                &nbsp;<asp:Button ID="B_1_Inmuebles" runat="server" Style="left: 1251px; position: absolute;
                    top: 94px" Text="Página Anterior" Width="168px" />
                &nbsp;
                <asp:Label ID="T_3_Seguridad" runat="server" BackColor="Transparent" Font-Bold="False"
                    Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                    left: 848px; position: absolute; top: -662px" Text="Seguridad" Width="168px"></asp:Label>
                &nbsp; &nbsp;&nbsp;
                <asp:Label ID="T_3_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
                    Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                    left: 384px; position: absolute; top: -30px" Text="Inmuebles" Width="168px"></asp:Label>
                <asp:Panel ID="P_MensajeError" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                    Height="32px" HorizontalAlign="Left" ScrollBars="Vertical" Style="z-index: 102;
                    left: 24px; position: absolute; top: 120px; width: 1384px;">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label5" runat="server"
                        BackColor="#FFFFC0" BorderColor="DarkRed" BorderStyle="None" Font-Bold="True"
                        Font-Names="Arial" Font-Overline="True" Font-Underline="False" ForeColor="Red"
                        Height="18px" Style="z-index: 105; left: -158px; position: relative; top: 472px"
                        Width="856px"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                        BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                        ForeColor="Red" Height="18px" Style="z-index: 105; left: 16px; position: absolute;
                        top: 8px; width: 1332px;"></asp:Label>
                </asp:Panel>
                &nbsp;&nbsp;
            </div>
        </div>
        <asp:Label ID="T3Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
            Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
            left: 812px; position: absolute; top: 72px" Text="Datos Principales Elemento" Width="228px"></asp:Label>
        &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Panel ID="P_1_Seguridad" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue" Style="z-index: 102; left: 24px; position: absolute;
                    top: 164px; height: 331px;" Width="1208px">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                        ForeColor="Gainsboro" Height="24px" Style="z-index: 100; left: 16px; position: absolute;
                        top: 8px" Width="1168px">Datos Principales Elemento</asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource0" runat="server"
                        SelectCommand="SELECT SOCIEDAD, CODIGO, TIPO_ELEMENTO, CENTRO, [2_UBICACION], [2_COD_POSTAL], [2_TIPO_LOCALIDAD], [2_TIPO_PROVINCIA], [3_TITULO_PROPIEDAD], [3_FECHA], [3_PROTOCOLO], [3_COPIA_TITULO], [4_TIPO_REGISTRO], [4_TIPO_PROVINCIA], [4_NUM_FINCA], [4_TIPO_CERTIFICACION], [5_REF_CATASTRAL], [5_IBI], [6_DESCRIPCION_CORTA], [6_DESCRIPCION_LARGA], OBSERVACIONES_GENERALES, [3_CODIGO_NOTARIO] FROM ELEMENTOS WHERE (SOCIEDAD = @SOCIEDAD) AND (CODIGO = @CODIGO)" InsertCommand="INSERT INTO ELEMENTOS(SOCIEDAD, CODIGO, TIPO_ELEMENTO, CENTRO, [2_UBICACION], [2_COD_POSTAL], [2_TIPO_LOCALIDAD], [2_TIPO_PROVINCIA], [3_TITULO_PROPIEDAD], [3_FECHA], [3_PROTOCOLO], [3_COPIA_TITULO], [4_TIPO_REGISTRO], [4_TIPO_PROVINCIA], [4_NUM_FINCA], [4_TIPO_CERTIFICACION], [5_REF_CATASTRAL], [5_IBI], [6_DESCRIPCION_CORTA], [6_DESCRIPCION_LARGA], OBSERVACIONES_GENERALES,[3_CODIGO_NOTARIO]) VALUES (@SOCIEDAD, @CODIGO, @TIPO_ELEMENTO, @CENTRO, @2_UBICACION, @2_CODPOSTAL, @2_TIPO_LOCALIDAD, @2_TIPO_PROVINCIA, @3_TITULO_PROPIEDAD, @3_FECHA, @3_PROTOCOLO, @3_COPIA_TITULO, @4_TIPO_REGISTRO, @4_TIPO_PROVINCIA, @4_NUM_FINCA, @4_TIPO_CERTIFICACION, @5_REF_CATASTRAL, @5_IBI, @6_DESCRIPCION_CORTA, @6_DESCRIPCION_LARGA, @OBSERVACIONES_GENERALES,@3_CODIGO_NOTARIO)" UpdateCommand="UPDATE ELEMENTOS &#13;&#10;SET&#13;&#10;TIPO_ELEMENTO = @TIPO_ELEMENTO,&#13;&#10;CENTRO = @CENTRO,&#13;&#10;[2_UBICACION]= @2_UBICACION,&#13;&#10;[2_COD_POSTAL]= @2_COD_POSTAL,&#13;&#10;[2_TIPO_LOCALIDAD]= @2_TIPO_LOCALIDAD,&#13;&#10;[2_TIPO_PROVINCIA]= @2_TIPO_PROVINCIA,&#13;&#10;[3_TITULO_PROPIEDAD]= @3_TITULO_PROPIEDAD,&#13;&#10;[3_FECHA]= @3_FECHA,&#13;&#10;[3_PROTOCOLO]=@3_PROTOCOLO,&#13;&#10;[3_COPIA_TITULO]=@3_COPIA_TITULO,&#13;&#10;[4_TIPO_REGISTRO]=@4_TIPO_REGISTRO,&#13;&#10;[4_TIPO_PROVINCIA]=@4_TIPO_PROVINCIA,&#13;&#10;[4_NUM_FINCA]=@4_NUM_FINCA,&#13;&#10;[4_TIPO_CERTIFICACION]=@4_TIPO_CERTIFICACION,&#13;&#10;[5_REF_CATASTRAL]=@5_REF_CATASTRAL,&#13;&#10;[5_IBI]=@5_IBI,&#13;&#10; [6_DESCRIPCION_CORTA] = @6_DESCRIPCION_CORTA,&#13;&#10; [6_DESCRIPCION_LARGA] = @6_DESCRIPCION_LARGA,&#13;&#10; [OBSERVACIONES_GENERALES] = @OBSERVACIONES_GENERALES,&#13;&#10;[3_CODIGO_NOTARIO]=@3_CODIGO_NOTARIO&#13;&#10;WHERE (SOCIEDAD = @SOCIEDAD) AND (CODIGO = @CODIGO)">
                        <InsertParameters>
                            <asp:FormParameter FormField="SOCIEDAD" Name="SOCIEDAD" />
                            <asp:SessionParameter Name="CODIGO" SessionField="XCodigo" />
                            <asp:FormParameter FormField="TIPO_ELEMENTO" Name="TIPO_ELEMENTO" />
                            <asp:SessionParameter Name="CENTRO" SessionField="XCentro" />
                            <asp:FormParameter FormField="X2_UBICACION" Name="2_UBICACION" />
                            <asp:FormParameter DefaultValue="00000" FormField="X2_COD_POSTAL" Name="2_CODPOSTAL" />
                            <asp:SessionParameter DefaultValue="" Name="2_TIPO_LOCALIDAD" SessionField="X2_TIPO_LOCALIDAD" />
                            <asp:FormParameter DefaultValue="" FormField="X2_TIPO_PROVINCIA" Name="2_TIPO_PROVINCIA" />
                            <asp:FormParameter FormField="X3_TITULO_PROPIEDAD" Name="3_TITULO_PROPIEDAD" />
                            <asp:FormParameter FormField="X3_FECHA" Name="3_FECHA" />
                            <asp:FormParameter FormField="X3_PROTOCOLO" Name="3_PROTOCOLO" />
                            <asp:FormParameter DefaultValue="False" FormField="X3_COPIA_TITULO" Name="3_COPIA_TITULO" />
                            <asp:FormParameter FormField="X4_TIPO_REGISTRO" Name="4_TIPO_REGISTRO" />
                            <asp:FormParameter FormField="X4_TIPO_PROVINCIA" Name="4_TIPO_PROVINCIA" />
                            <asp:FormParameter FormField="X4_NUM_FINCA" Name="4_NUM_FINCA" />
                            <asp:FormParameter FormField="X4_TIPO_CERTIFICACION" Name="4_TIPO_CERTIFICACION" />
                            <asp:FormParameter FormField="X5_REF_CATASTRAL" Name="5_REF_CATASTRAL" />
                            <asp:FormParameter DefaultValue="False" FormField="X5_IBI" Name="5_IBI" />
                            <asp:FormParameter FormField="X6_DESCRIPCION_CORTA" Name="6_DESCRIPCION_CORTA" />
                            <asp:FormParameter FormField="X6_DESCRIPCION_LARGA" Name="6_DESCRIPCION_LARGA" />
                            <asp:FormParameter FormField="OBSERVACIONES_GENERALES" Name="OBSERVACIONES_GENERALES" />
                            <asp:FormParameter DefaultValue="''" FormField="X3_NOTARIO" Name="3_CODIGO_NOTARIO" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="SOCIEDAD" SessionField="BSOCIEDAD" />
                            <asp:SessionParameter Name="CODIGO" SessionField="BCODIGO" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:SessionParameter Name="SOCIEDAD" SessionField="BSOCIEDAD" />
                            <asp:SessionParameter Name="CODIGO" SessionField="CODIGO" />
                            <asp:FormParameter FormField="TIPO_ELEMENTO" Name="TIPO_ELEMENTO" />
                            <asp:FormParameter FormField="XCentro" Name="CENTRO" />
                            <asp:FormParameter FormField="X2_UBICACION" Name="2_UBICACION" />
                            <asp:FormParameter FormField="X2_COD_POSTAL" Name="2_COD_POSTAL" />
                            <asp:FormParameter FormField="X2_TIPO_LOCALIDAD" Name="2_TIPO_LOCALIDAD" />
                            <asp:FormParameter FormField="X2_TIPO_PROVINCIA" Name="2_TIPO_PROVINCIA" />
                            <asp:FormParameter FormField="X3_TITULO_PROPIEDAD" Name="3_TITULO_PROPIEDAD" />
                            <asp:FormParameter FormField="X3_FECHA" Name="3_FECHA" />
                            <asp:FormParameter FormField="X3_PROTOCOLO" Name="3_PROTOCOLO" />
                            <asp:FormParameter FormField="X3_COPIA_TITULO" Name="3_COPIA_TITULO" />
                            <asp:FormParameter FormField="X4_TIPO_REGISTRO" Name="4_TIPO_REGISTRO" />
                            <asp:FormParameter FormField="X4_TIPO_PROVINCIA" Name="4_TIPO_PROVINCIA" />
                            <asp:FormParameter FormField="X4_NUM_FINCA" Name="4_NUM_FINCA" />
                            <asp:FormParameter FormField="X4_TIPO_CERTIFICACION" Name="4_TIPO_CERTIFICACION" />
                            <asp:FormParameter FormField="X5_REF_CATASTRAL" Name="5_REF_CATASTRAL" />
                            <asp:FormParameter FormField="X5_IBI" Name="5_IBI" />
                            <asp:FormParameter FormField="X6_DESCRIPCION_CORTA" Name="6_DESCRIPCION_CORTA" />
                            <asp:FormParameter FormField="X6_DESCRIPCION_LARGA" Name="6_DESCRIPCION_LARGA" />
                            <asp:FormParameter FormField="OBSERVACIONES_GENERALES" Name="OBSERVACIONES_GENERALES" />
                            <asp:FormParameter FormField="X3_CODIGO_NOTARIO" Name="3_CODIGO_NOTARIO" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                SelectCommand="SELECT [DESCRIPCION_EMPRESA], [SOCIEDAD] FROM [SOCIEDADES]" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_ELEMENTO]" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                SelectCommand="SELECT SOCIEDAD, DESCRIPCION, TIPO_CENTRO FROM Seleccion_Sociedades_Centros WHERE (SOCIEDAD = @Sociedad)" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="''" Name="Sociedad" SessionField="XXSOCIEDAD"
                                        Size="10" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                    &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                        SelectCommand="SELECT DISTINCT TIPO_PROVINCIA, DESCRIPCION FROM Seleccion_Provincia_Localidad" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FormView ID="FElemento" runat="server" BackColor="Transparent" BorderColor="Black"
                        DataKeyNames="SOCIEDAD,CODIGO" Style="left: 12px;
                        position: absolute; top: 16px; z-index: 101; height: 88px; width: 121px;" DataSourceID="SqlDataSource0" AllowPaging="True" CaptionAlign="Right" CellPadding="0">
                        <ItemTemplate>
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:TextBox ID="X3_PROTOCOLO" runat="server" Enabled="False" Style="z-index: 100;
                                left: 632px; position: absolute; top: 184px" Text='<%# Bind("3_PROTOCOLO", " {0}") %>'
                                Width="376px"></asp:TextBox>
                            <asp:DropDownList ID="X4_TIPO_CERTIFICACION" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_CERTIFICACION"
                                SelectedValue='<%# Bind("4_TIPO_CERTIFICACION", "{0}") %>' Style="left: 892px; position: absolute;
                                top: 224px; z-index: 101;" Width="252px" AppendDataBoundItems="True" Enabled="False">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="X2_TIPO_LOCALIDAD" runat="server" DataSourceID="SqlDataSource44"
                                DataTextField="Expr1" DataValueField="TIPO_LOCALIDAD" Style="left: 768px;
                                position: absolute; top: 144px; z-index: 102;" Width="248px" AppendDataBoundItems="True" OnSelectedIndexChanged="X2_TIPO_LOCALIDAD_SelectedIndexChanged" OnDataBinding="X2_TIPO_LOCALIDAD_DataBinding" OnInit="X2_TIPO_LOCALIDAD_Init" Enabled="False" SelectedValue='<%# Bind("2_TIPO_LOCALIDAD", "{0}") %>'>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="X4_TIPO_PROVINCIA" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA"
                                SelectedValue='<%# Bind("4_TIPO_PROVINCIA", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 224px; z-index: 103;" Width="216px" AppendDataBoundItems="True" Enabled="False">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="Button1" runat="server" Style="z-index: 104; left: 348px; position: absolute;
                        top: 320px" Text="Editar Datos Inmueble" Width="144px" OnClick="Editar" />
                            &nbsp;
                            <asp:TextBox ID="OBSERVACIONES_GENERALES" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                                BorderWidth="1px" Enabled="False" Height="40px" Style="z-index: 105; left: 512px;
                                position: absolute; top: 264px" Text='<%# Bind("OBSERVACIONES_GENERALES", " {0}") %>'
                                TextMode="MultiLine" Width="627px"></asp:TextBox>
                            <asp:DropDownList ID="X3_NOTARIO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7"
                                DataTextField="NOMBRE_COMPLETO" DataValueField="CODIGO_RESPONSABLE"
                                SelectedValue='<%# Bind("3_CODIGO_NOTARIO", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 184px; z-index: 106;" Width="216px" AppendDataBoundItems="True" Enabled="False">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X6_DESCRIPCION_CORTA" runat="server" Enabled="False" Style="z-index: 107;
                                left: 24px; position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_CORTA", " {0}") %>'
                                Width="464px" OnInit="Codigo_Init" AutoPostBack="True" MaxLength="50"></asp:TextBox>
                            &nbsp;
                            <asp:TextBox ID="X4_NUM_FINCA" runat="server" Enabled="False" Style="z-index: 108;
                                left: 512px; position: absolute; top: 224px" Text='<%# Bind("4_NUM_FINCA", " {0}") %>'
                                Width="364px"></asp:TextBox>
                            <asp:TextBox ID="X3_FECHA" runat="server" Enabled="False" Style="z-index: 109; left: 512px;
                                position: absolute; top: 184px" Text='<%# Bind("3_FECHA", " {0:d}") %>' Width="104px"></asp:TextBox>
                            <asp:TextBox ID="X3_TITULO_PROPIEDAD" runat="server" Enabled="False" Style="z-index: 110;
                                left: 24px; position: absolute; top: 184px" Text='<%# Bind("3_TITULO_PROPIEDAD", "{0}") %>'
                                Width="244px"></asp:TextBox>
                            <asp:DropDownList ID="X4_TIPO_REGISTRO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_REGISTRO"
                                SelectedValue='<%# Bind("4_TIPO_REGISTRO", "{0}") %>' Style="left: 24px; position: absolute;
                                top: 224px; z-index: 111;" Width="250px" AppendDataBoundItems="True" Enabled="False">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X2_COD_POSTAL" runat="server" AutoPostBack="True" Enabled="False"
                                Style="z-index: 112; left: 1024px; position: absolute; top: 144px" Text='<%# Bind("2_COD_POSTAL", "{0}") %>'
                                Width="116px"></asp:TextBox>
                            <asp:DropDownList ID="Sociedad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                                SelectedValue='<%# Bind("SOCIEDAD", "{0}") %>' Style="left: 96px; position: absolute;
                                top: 40px; z-index: 113;" Width="250px" AppendDataBoundItems="True" OnTextChanged="Sociedad_TextChanged2" OnInit="Codigo_Init" Enabled="False">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="Codigo" runat="server" Enabled="False" Style="z-index: 114; left: 408px;
                                position: absolute; top: 40px" Text='<%# Bind("CODIGO", "{0:0000}") %>'
                                Width="80px" OnInit="Codigo_Init" OnDataBinding="Codigo_DataBinding1"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Style="z-index: 115; left: 352px; position: absolute;
                                top: 40px" Text="Codigo :"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Style="z-index: 116; left: 24px; position: absolute;
                                top: 40px" Text="Sociedad :"></asp:Label>
                            <asp:DropDownList ID="TipoElemento" runat="server" DataSourceID="SqlDataSource2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_ELEMENTO" Style="left: 512px;
                                position: absolute; top: 40px; z-index: 117;" Width="248px" AutoPostBack="True" SelectedValue='<%# Bind("TIPO_ELEMENTO", "{0}") %>' AppendDataBoundItems="True" Enabled="False" OnInit="Codigo_Init">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="Centro" runat="server" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION"
                                DataValueField="TIPO_CENTRO" Style="left: 768px; position: absolute; top: 40px; z-index: 118;"
                                Width="376px" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="Centro_SelectedIndexChanged" OnDataBinding="Centro_DataBinding" SelectedValue='<%# Bind("CENTRO", "{0}") %>' OnInit="Codigo_Init" Enabled="False">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X2_UBICACION" runat="server" Enabled="False" Style="z-index: 119;
                                left: 24px; position: absolute; top: 144px" Text='<%# Bind("2_UBICACION", "{0}") %>'
                                Width="468px"></asp:TextBox>
                            <asp:DropDownList ID="X2_TIPO_PROVINCIA" runat="server" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA" Style="left: 512px;
                                position: absolute; top: 144px; z-index: 120;" Width="248px" AutoPostBack="True" AppendDataBoundItems="True" SelectedValue='<%# Bind("2_TIPO_PROVINCIA", "{0}") %>' OnSelectedIndexChanged="X2_TIPO_PROVINCIA_SelectedIndexChanged" OnDataBound="X2_TIPO_PROVINCIA_DataBound" Enabled="False">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X5_REF_CATASTRAL" runat="server" Enabled="False" Style="z-index: 121;
                                left: 24px; position: absolute; top: 264px" Text='<%# Bind("5_REF_CATASTRAL", " {0}") %>'
                                Width="465px"></asp:TextBox>
                            <asp:TextBox ID="X6_DESCRIPCION_LARGA" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                                BorderWidth="1px" Enabled="False" Height="40px" Style="z-index: 122; left: 512px;
                                position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_LARGA", " {0}") %>'
                                TextMode="MultiLine" Width="628px"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:CheckBox ID="X3_COPIA_TITULO" runat="server" BackColor="Transparent"
                                Font-Bold="True" ForeColor="Gainsboro" Style="left: 1124px; position: absolute;
                                top: 164px; z-index: 109;" Width="164px" Checked='<%# Bind("3_COPIA_TITULO", "{0}") %>' Enabled="False" />
                            &nbsp; &nbsp; &nbsp;&nbsp; 
                            <asp:CheckBox ID="X5_IBI" runat="server" Checked='<%# Bind("5_IBI", "{0}") %>' Enabled="False"
                                Style="z-index: 104; left: 476px; position: absolute; top: 244px" Width="68px" />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:Button ID="Button10" runat="server" OnClick="Baja" Style="z-index: 124; left: 512px;
                                position: absolute; top: 320px" Text="Baja Inmueble" Width="144px" />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp;
                        </ItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="X3_PROTOCOLO" runat="server" Style="z-index: 100; left: 632px; position: absolute;
                                top: 184px" Text='<%# Bind("3_PROTOCOLO", " {0}") %>' Width="376px"></asp:TextBox>
                            &nbsp;<asp:DropDownList ID="X4_TIPO_CERTIFICACION" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_CERTIFICACION"
                                SelectedValue='<%# Bind("4_TIPO_CERTIFICACION", "{0}") %>' Style="left: 892px; position: absolute;
                                top: 224px; z-index: 101;" Width="252px" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="X2_TIPO_LOCALIDAD" runat="server" DataSourceID="SqlDataSource44"
                                DataTextField="Expr1" DataValueField="TIPO_LOCALIDAD" Style="left: 768px;
                                position: absolute; top: 144px; z-index: 102;" Width="248px" AutoPostBack="True" AppendDataBoundItems="True" OnSelectedIndexChanged="X2_TIPO_LOCALIDAD_SelectedIndexChanged" OnDataBinding="X2_TIPO_LOCALIDAD_DataBinding">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="X4_TIPO_PROVINCIA" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA"
                                SelectedValue='<%# Bind("4_TIPO_PROVINCIA", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 224px; z-index: 103;" Width="216px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;<asp:Button ID="Grabar_Inmueble" runat="server" Style="z-index: 103; left: 348px; position: absolute;
                        top: 320px" Text="Grabar Datos" Width="145px" OnClick="Grabar_Inmueble_Click" />
                            <asp:Button ID="Button2" runat="server" Style="z-index: 103; left: 512px; position: absolute;
                        top: 320px" Text="Cancelar Grabación" Width="145px" OnClick="Button2_Click1" />
                            <asp:TextBox ID="OBSERVACIONES_GENERALES" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                                BorderWidth="1px" Height="40px" Style="z-index: 121; left: 512px; position: absolute;
                                top: 264px" Text='<%# Bind("OBSERVACIONES_GENERALES", " {0}") %>' TextMode="MultiLine"
                                Width="627px"></asp:TextBox>
                            <asp:CheckBox ID="X5_IBI" runat="server" Checked='<%# Bind("5_IBI", "{0}") %>' Style="z-index: 104;
                                left: 476px; position: absolute; top: 244px" Width="68px" />
                            <asp:DropDownList ID="X3_NOTARIO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7"
                                DataTextField="NOMBRE_COMPLETO" DataValueField="CODIGO_RESPONSABLE"
                                SelectedValue='<%# Bind("3_CODIGO_NOTARIO", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 184px; z-index: 103;" Width="216px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList><asp:CheckBox ID="X3_COPIA_TITULO" runat="server" BackColor="Transparent"
                                Font-Bold="True" ForeColor="Gainsboro" Style="left: 1124px; position: absolute;
                                top: 164px; z-index: 109;" Width="164px" Checked='<%# Bind("3_COPIA_TITULO", "{0}") %>' />
                            &nbsp;&nbsp;
                            <asp:TextBox ID="X6_DESCRIPCION_CORTA" runat="server" Style="z-index: 105; left: 24px;
                                position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_CORTA", " {0}") %>'
                                Width="464px"></asp:TextBox>
                            <asp:TextBox ID="X4_NUM_FINCA" runat="server" Style="z-index: 106; left: 512px; position: absolute;
                                top: 224px" Text='<%# Bind("4_NUM_FINCA", " {0}") %>' Width="364px"></asp:TextBox>
                            &nbsp;
                            <asp:TextBox ID="X3_FECHA" runat="server" Style="z-index: 107; left: 512px; position: absolute;
                                top: 184px" Text='<%# Bind("3_FECHA", " {0:d}") %>' Width="104px"></asp:TextBox>
                            <asp:TextBox ID="X3_TITULO_PROPIEDAD" runat="server" Style="z-index: 108; left: 24px; position: absolute;
                                top: 184px" Text='<%# Bind("3_TITULO_PROPIEDAD", "{0}") %>' Width="244px"></asp:TextBox>
                            &nbsp; &nbsp;&nbsp;<asp:DropDownList ID="X4_TIPO_REGISTRO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_REGISTRO"
                                SelectedValue='<%# Bind("4_TIPO_REGISTRO", "{0}") %>' Style="left: 24px; position: absolute;
                                top: 224px; z-index: 109;" Width="250px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp;
                            <asp:TextBox ID="X2_COD_POSTAL" runat="server" Style="z-index: 110; left: 1024px;
                                position: absolute; top: 144px" Text='<%# Bind("2_COD_POSTAL", "{0}") %>'
                                Width="116px" AutoPostBack="True"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:DropDownList ID="Sociedad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                                SelectedValue='<%# Bind("SOCIEDAD", "{0}") %>' Style="left: 96px; position: absolute;
                                top: 40px; z-index: 111;" Width="250px" AppendDataBoundItems="True" OnTextChanged="Sociedad_TextChanged2" OnSelectedIndexChanged="Sociedad_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="Codigo" runat="server" Enabled="False" Style="z-index: 112; left: 408px;
                                position: absolute; top: 40px" Text='<%# Bind("CODIGO", "{0:0000}") %>'
                                Width="80px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Style="z-index: 113; left: 352px; position: absolute;
                                top: 40px" Text="Codigo :"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Style="z-index: 114; left: 24px; position: absolute;
                                top: 40px" Text="Sociedad :"></asp:Label>
                            <asp:DropDownList ID="TipoElemento" runat="server" DataSourceID="SqlDataSource2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_ELEMENTO" Style="left: 512px;
                                position: absolute; top: 40px; z-index: 115;" Width="248px" AutoPostBack="True" SelectedValue='<%# Bind("TIPO_ELEMENTO", "{0}") %>' AppendDataBoundItems="True" OnDataBinding="TipoElemento_DataBinding" OnSelectedIndexChanged="TipoElemento_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="Centro" runat="server" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION"
                                DataValueField="TIPO_CENTRO" Style="left: 768px; position: absolute; top: 40px; z-index: 116;"
                                Width="376px" AppendDataBoundItems="True" OnLoad="Centro_Load1" AutoPostBack="True" OnSelectedIndexChanged="Centro_SelectedIndexChanged" OnDataBinding="Centro_DataBinding">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X2_UBICACION" runat="server" Style="z-index: 117; left: 24px; position: absolute;
                                top: 144px" Text='<%# Bind("2_UBICACION", "{0}") %>' Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="X2_TIPO_PROVINCIA" runat="server" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA" Style="left: 512px;
                                position: absolute; top: 144px; z-index: 118;" Width="248px" AutoPostBack="True" AppendDataBoundItems="True" SelectedValue='<%# Bind("2_TIPO_PROVINCIA", "{0}") %>' OnSelectedIndexChanged="X2_TIPO_PROVINCIA_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X5_REF_CATASTRAL" runat="server" Style="z-index: 119; left: 24px; position: absolute;
                                top: 264px" Text='<%# Bind("5_REF_CATASTRAL", " {0}") %>' Width="464px"></asp:TextBox>
                            <asp:TextBox ID="X6_DESCRIPCION_LARGA" runat="server" Height="40px" Style="z-index: 120;
                                left: 512px; position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_LARGA", " {0}") %>'
                                TextMode="MultiLine" Width="628px" BorderColor="DarkBlue" BorderStyle="Inset" BorderWidth="1px"></asp:TextBox>
                        </InsertItemTemplate>
                        <HeaderTemplate>
                            <asp:Label ID="Label7" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                                ForeColor="#000040" Height="16px" Style="z-index: 100; left: 24px; position: absolute;
                                top: 24px" Width="472px">Identificador Elemento</asp:Label>
                            <asp:Label ID="Label21" runat="server" BackColor="LawnGreen" Font-Bold="True"
                                Font-Names="Arial" ForeColor="#000040" Height="16px" Style="z-index: 101; left: 512px;
                                position: absolute; top: 24px" Width="248px">Tipo Elemento</asp:Label>
                            <asp:Label ID="Label19" runat="server" BackColor="LawnGreen" Font-Bold="True"
                                Font-Names="Arial" ForeColor="#000040" Height="16px" Style="z-index: 102; left: 768px;
                                position: absolute; top: 24px" Width="376px">Centro</asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label22" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 103; left: 24px;
                                position: absolute; top: 128px" Width="472px">Ubicación</asp:Label><asp:Button ID="Button20" runat="server" Style="z-index: 124; left: 900px;
                                position: absolute; top: 320px" Text="Inmuebles Relacionados" Width="248px" OnClick="Button20_Click" />
                            <asp:Label ID="Label10" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 104; left: 512px; position: absolute;
                                top: 128px" Width="248px">Provincia</asp:Label>
                            <asp:Label ID="Label20" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 105; left: 768px; position: absolute;
                                top: 128px" Width="248px">Localidad</asp:Label>
                            <asp:Label ID="Label6" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 106; left: 1024px; position: absolute;
                                top: 128px" Width="120px">Cód. Postal</asp:Label>
                            <asp:Label ID="Label12" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 107; left: 632px;
                                position: absolute; top: 168px" Width="384px">Protocolo</asp:Label>
                            <asp:Label ID="Label9" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 108; left: 512px;
                                position: absolute; top: 168px" Width="108px">Fecha</asp:Label>
                            &nbsp;
                            <asp:Label ID="Label25" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 117; left: 436px;
                                position: absolute; top: 248px" Width="40px">IBI</asp:Label>
                            <asp:Label ID="Label11" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 110; left: 24px;
                                position: absolute; top: 168px" Width="248px">Tipo Propiedad</asp:Label>
                            <asp:Label ID="Label4" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 111; left: 512px; position: absolute;
                                top: 208px" Width="368px">Número de Finca</asp:Label>
                            <asp:Label ID="Label23" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 112; left: 892px; position: absolute;
                                top: 208px" Width="252px">Tipo de Certificación</asp:Label>
                            <asp:Label ID="Label14" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 113; left: 280px; position: absolute;
                                top: 208px" Width="216px">Provincia</asp:Label>
                            <asp:Label ID="Label13" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 114; left: 24px; position: absolute;
                                top: 208px" Width="248px">Tipo Registro</asp:Label>
                            <asp:Label ID="Label15" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                                ForeColor="#000040" Height="16px" Style="z-index: 115; left: 24px; position: absolute;
                                top: 64px" Width="472px">Descripcion Corta</asp:Label>
                            <asp:Label ID="Label16" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                                ForeColor="#000040" Height="16px" Style="z-index: 116; left: 512px; position: absolute;
                                top: 64px" Width="632px">Descripcion Ampliada</asp:Label>
                            <asp:Label ID="Label8" runat="server" BackColor="MidnightBlue" Font-Bold="True" Font-Names="Arial"
                                ForeColor="Gainsboro" Height="16px" Style="z-index: 117; left: 24px; position: absolute;
                                top: 248px" Width="404px">Referencia Catastral</asp:Label>
                            <asp:Label ID="Label17" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 118; left: 512px;
                                position: absolute; top: 248px" Width="632px">Observaciones</asp:Label>
                            <asp:Label ID="Label24" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 119; left: 280px;
                                position: absolute; top: 168px" Width="216px">Notario</asp:Label>
                            &nbsp;
                            <asp:Label ID="Label26" runat="server" BackColor="MidnightBlue" Font-Bold="True"
                                Font-Names="Arial" ForeColor="Gainsboro" Height="16px" Style="z-index: 117; left: 1024px;
                                position: absolute; top: 168px" Width="100px">Copia Titulo</asp:Label>
                        </HeaderTemplate>
                        <EditItemTemplate>
                            &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Style="z-index: 100; left: 512px; position: absolute;
                        top: 320px" Text="Cancelar Edición" Width="145px" OnClick="Cancelar" />
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="Sociedad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                                SelectedValue='<%# Bind("SOCIEDAD", "{0}") %>' Style="left: 96px; position: absolute;
                                top: 40px; z-index: 101;" Width="250px" OnDataBinding="Sociedad_DataBinding1" AppendDataBoundItems="True" OnTextChanged="Sociedad_TextChanged2" OnDataBound="Sociedad_DataBound" Enabled="False" OnInit="Sociedad_Init1" OnSelectedIndexChanged="Sociedad_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 24px; position: absolute;
                                top: 40px" Text="Sociedad :"></asp:Label>
                            <asp:TextBox ID="Codigo" runat="server" Enabled="False" Style="z-index: 103; left: 408px;
                                position: absolute; top: 40px" Text='<%# Bind("CODIGO", "{0:0000}") %>'
                                Width="80px" OnDataBinding="Codigo_DataBinding"></asp:TextBox>
                            <asp:CheckBox ID="X5_IBI" runat="server" Checked='<%# Bind("5_IBI", "{0}") %>' Style="z-index: 104;
                                left: 476px; position: absolute; top: 244px" Width="68px" /><asp:CheckBox ID="X3_COPIA_TITULO" runat="server" BackColor="Transparent"
                                Font-Bold="True" ForeColor="Gainsboro" Style="left: 1124px; position: absolute;
                                top: 164px; z-index: 105;" Width="164px" Checked='<%# Bind("3_COPIA_TITULO", "{0}") %>' />
                            <asp:Label ID="Label3" runat="server" Style="z-index: 106; left: 352px; position: absolute;
                                top: 40px" Text="Codigo :"></asp:Label>
                            <asp:DropDownList ID="TipoElemento" runat="server" DataSourceID="SqlDataSource2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_ELEMENTO" Style="left: 512px;
                                position: absolute; top: 40px; z-index: 107;" Width="248px" AutoPostBack="True" SelectedValue='<%# Bind("TIPO_ELEMENTO", "{0}") %>' AppendDataBoundItems="True" OnDataBinding="TipoElemento_DataBinding" OnSelectedIndexChanged="TipoElemento_SelectedIndexChanged">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="Centro" runat="server" DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION"
                                DataValueField="TIPO_CENTRO" Style="left: 768px; position: absolute; top: 40px; z-index: 108;"
                                Width="376px" AppendDataBoundItems="True" OnLoad="Centro_Load1" AutoPostBack="True" OnSelectedIndexChanged="Centro_SelectedIndexChanged" OnDataBinding="Centro_DataBinding" SelectedValue='<%# Bind("CENTRO", "{0}") %>'>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList ID="X4_TIPO_CERTIFICACION" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_CERTIFICACION"
                                SelectedValue='<%# Bind("4_TIPO_CERTIFICACION", "{0}") %>' Style="left: 892px; position: absolute;
                                top: 224px; z-index: 109;" Width="252px" AppendDataBoundItems="True">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="X4_TIPO_PROVINCIA" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA"
                                SelectedValue='<%# Bind("4_TIPO_PROVINCIA", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 224px; z-index: 110;" Width="216px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="OBSERVACIONES_GENERALES" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                                BorderWidth="1px" Height="40px" Style="z-index: 111; left: 512px; position: absolute;
                                top: 264px" Text='<%# Bind("OBSERVACIONES_GENERALES", " {0}") %>' TextMode="MultiLine"
                                Width="627px" Rows="5"></asp:TextBox>
                            <asp:TextBox ID="X4_NUM_FINCA" runat="server" Style="z-index: 112; left: 512px; position: absolute;
                                top: 224px" Text='<%# Bind("4_NUM_FINCA", " {0}") %>' Width="364px"></asp:TextBox>
                            <asp:DropDownList ID="X4_TIPO_REGISTRO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_REGISTRO"
                                SelectedValue='<%# Bind("4_TIPO_REGISTRO", "{0}") %>' Style="left: 24px; position: absolute;
                                top: 224px; z-index: 113;" Width="250px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X6_DESCRIPCION_LARGA" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                                BorderWidth="1px" Height="40px" Style="z-index: 114; left: 512px; position: absolute;
                                top: 80px" Text='<%# Bind("6_DESCRIPCION_LARGA", " {0}") %>' TextMode="MultiLine"
                                Width="628px" EnableTheming="True" Rows="5" OnTextChanged="X6_DESCRIPCION_LARGA_TextChanged"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Style="z-index: 115; left: 348px; position: absolute;
                        top: 320px" Text="Actualiza Datos" Width="145px" OnClick="Actualizar" />
                            &nbsp;
                            <asp:TextBox ID="X3_PROTOCOLO" runat="server" Style="z-index: 116; left: 632px; position: absolute;
                                top: 184px" Text='<%# Bind("3_PROTOCOLO", " {0}") %>' Width="376px"></asp:TextBox>
                            <asp:DropDownList ID="X3_NOTARIO" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7"
                                DataTextField="NOMBRE_COMPLETO" DataValueField="CODIGO_RESPONSABLE"
                                SelectedValue='<%# Bind("3_CODIGO_NOTARIO", "{0}") %>' Style="left: 280px; position: absolute;
                                top: 184px; z-index: 117;" Width="216px" AppendDataBoundItems="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X3_FECHA" runat="server" Style="z-index: 118; left: 512px; position: absolute;
                                top: 184px" Text='<%# Bind("3_FECHA", " {0:d}") %>' Width="104px" OnDataBinding="X3_FECHA_DataBinding"></asp:TextBox>
                            <asp:TextBox ID="X3_TITULO_PROPIEDAD" runat="server" Style="z-index: 119; left: 24px;
                                position: absolute; top: 184px" Text='<%# Bind("3_TITULO_PROPIEDAD", "{0}") %>'
                                Width="244px"></asp:TextBox>
                            <asp:DropDownList ID="X2_TIPO_LOCALIDAD" runat="server" DataSourceID="SqlDataSource44"
                                DataTextField="Expr1" DataValueField="TIPO_LOCALIDAD" Style="left: 768px;
                                position: absolute; top: 144px; z-index: 120;" Width="248px" AutoPostBack="True" AppendDataBoundItems="True" EnableTheming="True">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="X2_COD_POSTAL" runat="server" AutoPostBack="True" Style="z-index: 121;
                                left: 1024px; position: absolute; top: 144px" Text='<%# Bind("2_COD_POSTAL", "{0}") %>'
                                Width="116px"></asp:TextBox>
                            <asp:TextBox ID="X2_UBICACION" runat="server" Style="z-index: 122; left: 24px; position: absolute;
                                top: 144px" Text='<%# Bind("2_UBICACION", "{0}") %>' Width="464px"></asp:TextBox>
                            <asp:DropDownList ID="X2_TIPO_PROVINCIA" runat="server" DataSourceID="SqlDataSource4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA" Style="left: 512px;
                                position: absolute; top: 144px; z-index: 123;" Width="248px" AutoPostBack="True" AppendDataBoundItems="True" SelectedValue='<%# Bind("2_TIPO_PROVINCIA", "{0}") %>' OnSelectedIndexChanged="X2_TIPO_PROVINCIA_SelectedIndexChanged" OnDataBound="X2_TIPO_PROVINCIA_DataBound1">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                            <asp:TextBox ID="X5_REF_CATASTRAL" runat="server" Style="z-index: 124; left: 24px;
                                position: absolute; top: 264px" Text='<%# Bind("5_REF_CATASTRAL", " {0}") %>'
                                Width="464px"></asp:TextBox>
                            <asp:TextBox ID="X6_DESCRIPCION_CORTA" runat="server" Style="z-index: 126; left: 23px;
                                position: absolute; top: 81px" Text='<%# Bind("6_DESCRIPCION_CORTA", " {0}") %>'
                                Width="465px" OnDataBinding="X6_DESCRIPCION_CORTA_DataBinding" OnTextChanged="X6_DESCRIPCION_CORTA_TextChanged"></asp:TextBox>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <asp:Label ID="VACIO" runat="server" Text="VACIO"></asp:Label>
                        </EmptyDataTemplate>
                    </asp:FormView>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server"
                        SelectCommand="SELECT * FROM [TIPO_REGISTRO]" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>"></asp:SqlDataSource>
                    &nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                        SelectCommand="SELECT * FROM [TIPO_CERTIFICACION]" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource44" runat="server" ConnectionString="<%$ ConnectionStrings:GESTOR_ACTIVOSConnectionString %>" SelectCommand="SELECT DISTINCT TIPO_LOCALIDAD, Expr1 FROM Seleccion_Provincia_Localidad WHERE (TIPO_PROVINCIA = @TIPO_PROVINCIA)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="" Name="TIPO_PROVINCIA" SessionField="X2_TIPO_PROVINCIA" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server"
                        SelectCommand="SELECT CODIGO_RESPONSABLE, APELLIDO_1 + ' ' + APELLIDO_2 + ' ,' + NOMBRE AS NOMBRE_COMPLETO FROM CODIGO_RESPONSABLE WHERE (TIPO_RESPONSABLE = @TIPO_RESPONSABLE)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="3" Name="TIPO_RESPONSABLE" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                    <asp:SqlDataSource ID="Borrar" runat="server" />
                    &nbsp;
                </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                    Height="92px" Style="z-index: 102; left: 24px; position: absolute;
                    top: 570px" Width="1208px">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 100; left: 16px; position: absolute;
                top: 8px" Width="1168px">Datos Secundarios Elemento</asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Style="z-index: 103; left: 36px; position: absolute;
                        top: 44px" Text="Datos Económicos" Width="145px" />
            <asp:Button ID="Button3" runat="server" Style="z-index: 103; left: 196px; position: absolute;
                        top: 44px" Text="Datos Uso" Width="145px" />
            <asp:Button ID="Button4" runat="server" Style="z-index: 103; left: 360px; position: absolute;
                        top: 44px" Text="Datos Tipología" Width="145px" />
            <asp:Button ID="Button6" runat="server" Style="z-index: 103; left: 524px; position: absolute;
                        top: 44px" Text="Datos Uso Urbanístico" Width="145px" />
            <asp:Button ID="Button7" runat="server" Style="z-index: 103; left: 684px; position: absolute;
                        top: 44px" Text="Datos Estado" Width="145px" />
            <asp:Button ID="Button8" runat="server" Style="z-index: 103; left: 848px; position: absolute;
                        top: 44px" Text="Datos Responsables" Width="145px" />
            <asp:Button ID="Button9" runat="server" Style="z-index: 103; left: 1012px; position: absolute;
                        top: 44px" Text="Datos Documentación" Width="145px" />
        </asp:Panel>
        <asp:Label ID="Estatus" runat="server" BackColor="White" Font-Bold="True" Font-Names="Arial"
            Font-Size="Medium" ForeColor="Lime" Height="16px" Style="z-index: 108; left: 873px;
            position: absolute; top: 92px; width: 155px;" Text="Visualización"></asp:Label>
    
    </div>
                <img id="I_3_Inmuebles" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1253px;
                    width: 160px; position: absolute; top: 5px; height: 84px" /></form>
        &nbsp;&nbsp;
</body>
</html>
