<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DetalleFicha.aspx.vb" Inherits="GESTACTIV.DetalleFicha" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-DETALLE INMUEBLE</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <img id="I_1_Inmuebles" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 24px;
                        width: 118px; position: absolute; top: 8px; height: 87px; background-color: #FFFFFF;" />
                    <img id="I_2_Inmuebles" alt="" src="man-2546224_960_720.png" style="z-index: 107; left: 147px;
                        width: 179px; position: absolute; top: 11px; height: 88px" />
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
                        left: 343px; position: absolute; top: 72px" Text="Sistema de Información Inmobiliaria (SII)"
                        Width="464px"></asp:Label>
                    <asp:Label ID="T_1_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True"
                        Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                        left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
                        Width="520px"></asp:Label>
                    <img id="I_3_Inmuebles" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1258px;
                        width: 166px; position: absolute; top: 3px; height: 88px" />
                    <asp:Button ID="B_1_Inmuebles" runat="server" Style="left: 1259px; position: absolute;
                        top: 96px" Text="Datos Principales Inm." Width="168px" />
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
                        left: 24px; position: absolute; top: 120px; width: 1395px;">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label5" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed" BorderStyle="None"
                            Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                            ForeColor="Red" Height="18px" Style="z-index: 105; left: -158px; position: relative;
                            top: 472px" Width="856px"></asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                            BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                            ForeColor="Red" Height="18px" Style="z-index: 105; left: 16px; position: absolute;
                            top: 8px; width: 1352px;"></asp:Label>
                    </asp:Panel>
                    &nbsp;
                </div>
            </div>
            <asp:Label ID="T3Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
                Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                left: 800px; position: absolute; top: 72px" Text="Datos Secundarios Elemento" Width="240px"></asp:Label>
            &nbsp; &nbsp; &nbsp;
            <asp:Panel ID="P_1_Seguridad" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="152px" Style="z-index: 102; left: 24px; position: absolute; top: 164px"
                Width="1208px">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 100; left: 16px; position: absolute;
                    top: 8px" Width="1168px">Datos Principales Elemento</asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; 
                <asp:FormView ID="FElemento_Cabecera" runat="server" BackColor="Transparent" BorderColor="Black"
                    DataKeyNames="SOCIEDAD,CODIGO" DataSourceID="SqlDataSource0"
                    Height="33px" Style="z-index: 101; left: 8px; position: absolute; top: 24px"
                    Width="231px" Font-Names="Arial" Font-Size="X-Small">
                    <EditItemTemplate>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp; &nbsp; &nbsp; 
                        <asp:TextBox ID="X6_DESCRIPCION_LARGA" runat="server" BorderColor="DarkBlue" BorderStyle="Inset"
                            BorderWidth="1px" Enabled="False" Height="40px" Style="z-index: 120; left: 512px;
                            position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_LARGA", " {0}") %>'
                            TextMode="MultiLine" Width="628px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:DropDownList ID="Sociedad" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                            Enabled="False" SelectedValue='<%# Bind("SOCIEDAD", "{0}") %>'
                            Style="z-index: 111; left: 96px; position: absolute; top: 40px" Width="250px" Font-Names="Arial" Font-Size="X-Small">
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="Codigo" runat="server" Enabled="False" Style="z-index: 112; left: 408px;
                            position: absolute; top: 40px" Text='<%# Bind("CODIGO", "{0:0000}") %>'
                            Width="80px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Style="z-index: 113; left: 352px; position: absolute;
                            top: 40px" Text="Codigo :"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Style="z-index: 114; left: 24px; position: absolute;
                            top: 40px" Text="Sociedad :"></asp:Label>
                        <asp:DropDownList ID="TipoElemento" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource2" DataTextField="DESCRIPCION" DataValueField="TIPO_ELEMENTO"
                            Enabled="False"
                            SelectedValue='<%# Bind("TIPO_ELEMENTO", "{0}") %>' Style="z-index: 115; left: 512px;
                            position: absolute; top: 40px" Width="248px" Font-Names="Arial" Font-Size="X-Small">
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Style="z-index: 105; left: 24px;
                            position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_CORTA", " {0}") %>'
                            Width="464px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID="Centrox" runat="server" AutoPostBack="True"
                            DataSourceID="SqlDataSource3" DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO"
                            Enabled="False"
                            SelectedValue='<%# Bind("CENTRO", "{0}") %>' Style="z-index: 115; left: 768px;
                            position: absolute; top: 40px" Width="376px" Font-Names="Arial" Font-Size="X-Small">
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                    </ItemTemplate>
                    <HeaderTemplate>
                        <asp:Label ID="Label7" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                            ForeColor="#000040" Height="16px" Style="z-index: 100; left: 24px; position: absolute;
                            top: 24px" Width="472px">Identificador Elemento</asp:Label>
                        <asp:Label ID="Label21" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                            ForeColor="#000040" Height="16px" Style="z-index: 101; left: 512px; position: absolute;
                            top: 24px" Width="248px">Tipo Elemento</asp:Label>
                        <asp:Label ID="Label19" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                            ForeColor="#000040" Height="16px" Style="z-index: 102; left: 768px; position: absolute;
                            top: 24px" Width="376px">Centro</asp:Label>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:Label ID="Label15" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                            ForeColor="#000040" Height="16px" Style="z-index: 116; left: 24px; position: absolute;
                            top: 64px" Width="472px">Descripcion Corta</asp:Label>
                        <asp:Label ID="Label16" runat="server" BackColor="LawnGreen" Font-Bold="True" Font-Names="Arial"
                            ForeColor="#000040" Height="16px" Style="z-index: 117; left: 512px; position: absolute;
                            top: 64px" Width="632px">Descripcion Ampliada</asp:Label>
                        &nbsp; &nbsp;
                    </HeaderTemplate>
                </asp:FormView>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;
            </asp:Panel>
            &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="60px" Style="z-index: 102; left: 24px; position: absolute; top: 328px"
                Width="1208px">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Cabecera" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 100; left: 16px; position: absolute;
                    top: 8px" Width="1168px">Localizar Información</asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="left: 44px; position: absolute;
                    top: 36px" Text="Buscar :" Width="56px"></asp:Label>
                <asp:TextBox ID="CAMPO" runat="server" Font-Bold="False" Font-Italic="False"
                    ForeColor="#000040" Style="left: 116px; position: absolute; top: 36px" Width="250px"
                    Wrap="False" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:TextBox ID="Buscar" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 380px; position: absolute; top: 36px" Width="250px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Boton_Buscar" runat="server" Font-Names="Arial" Style="z-index: 109; left: 648px;
                    position: absolute; top: 36px" Text="Buscar por Campo" Width="148px" />
                <asp:Button ID="Inserta_Registro" runat="server" Font-Names="Arial" Style="z-index: 109; left: 880px;
                    position: absolute; top: 36px" Text="Insertar Registro" Width="148px" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;
            </asp:Panel>
            &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource0" runat="server"
                SelectCommand="SELECT SOCIEDAD, CODIGO, TIPO_ELEMENTO, CENTRO, [2_UBICACION], [2_COD_POSTAL], [2_TIPO_LOCALIDAD], [2_TIPO_PROVINCIA], [3_TITULO_PROPIEDAD], [3_FECHA], [3_PROTOCOLO], [3_COPIA_TITULO], [4_TIPO_REGISTRO], [4_TIPO_PROVINCIA], [4_NUM_FINCA], [4_TIPO_CERTIFICACION], [5_REF_CATASTRAL], [5_IBI], [6_DESCRIPCION_CORTA], [6_DESCRIPCION_LARGA], OBSERVACIONES_GENERALES, [3_CODIGO_NOTARIO] FROM ELEMENTOS WHERE (SOCIEDAD = @SOCIEDAD) AND (CODIGO = @CODIGO)">
                <SelectParameters>
                    <asp:SessionParameter Name="SOCIEDAD" SessionField="BSOCIEDAD" />
                    <asp:SessionParameter Name="CODIGO" SessionField="BCODIGO" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                SelectCommand="SELECT [DESCRIPCION_EMPRESA], [SOCIEDAD] FROM [SOCIEDADES]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                SelectCommand="SELECT * FROM  TIPO_ELEMENTO"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                SelectCommand="SELECT TIPO_CENTRO, DESCRIPCION FROM TIPO_CENTRO"></asp:SqlDataSource>
            <asp:Panel ID="P_Datos_Economicos" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 24px; position: absolute; top: 404px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:DataGrid ID="Datos_Economicos" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                    Style="z-index: 110; left: 34px; position: absolute; top: 25px; width: 981px;">
                    <FooterStyle BackColor="#CCCCCC" Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <EditItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" Font-Size="X-Small" />
                    <AlternatingItemStyle BackColor="#CCCCCC" Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                    <Columns>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Width="1cm" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                        </asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Width="1cm" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                        </asp:ButtonColumn>
                        <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" Width="3cm" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                                Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID">
                            <HeaderStyle Width="1cm" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="TIPO_DATO_ECONOMICO" SortExpression="TIPO_DATO_ECONOMICO">
                            <EditItemTemplate>
                                <asp:DropDownList ID="D1" runat="server" DataSourceID="SqlDataSource4"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_DATO_ECONOMICO"
                                    SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_DATO_ECONOMICO") %>' AppendDataBoundItems="True" AutoPostBack="True" OnTextChanged="D1_TextChanged" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="D1" runat="server" DataSourceID="SqlDataSource4"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_DATO_ECONOMICO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_DATO_ECONOMICO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="VALOR" HeaderText="VALOR" SortExpression="VALOR" DataFormatString="{0:f}">
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Right" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="TIPO_CARGA" SortExpression="TIPO_CARGA">
                            <EditItemTemplate>
                                &nbsp;<asp:DropDownList ID="D2" runat="server" DataSourceID="SqlDataSource5"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_CARGA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_CARGA") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="D2" runat="server" DataSourceID="SqlDataSource5"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_CARGA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_CARGA") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="TIPO_ENTIDAD_TASADORA" SortExpression="TIPO_ENTIDAD_TASADORA">
                            <EditItemTemplate>
                                <asp:DropDownList ID="D3" runat="server" DataSourceID="SqlDataSource6"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ENTIDAD_TASADORA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ENTIDAD_TASADORA") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="D3" runat="server" DataSourceID="SqlDataSource6"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ENTIDAD_TASADORA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ENTIDAD_TASADORA") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem Value="0"></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                </asp:DataGrid>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;
            </asp:Panel>
            &nbsp;
            <asp:Panel ID="P_Datos_Uso" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 25px; position: absolute; top: 404px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DataGrid ID="Datos_Uso" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                    Style="z-index: 110; left: 20px; position: absolute; top: 29px" Width="1108px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" Font-Size="X-Small" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                    <Columns>
                        <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        </asp:EditCommandColumn>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="TIPO_USO">
                            <EditItemTemplate>
                                &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql13"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_USO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_USO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql13"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_USO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_USO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="TIPO_ARRENDATARIO">
                            <EditItemTemplate>
                                &nbsp;
                                <asp:DropDownList ID="D2" runat="server" DataSourceID="Sql14"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ARRENDATARIO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ARRENDATARIO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:DropDownList ID="D2" runat="server" DataSourceID="Sql14"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ARRENDATARIO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ARRENDATARIO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="RENTA_ANUAL" HeaderText="RENTA_ANUAL" SortExpression="RENTA_ANUAL" DataFormatString="{0:f}">
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Right" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="CONTRATO">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem,"CONTRATO") %>' />
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;
                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem,"CONTRATO") %>'
                                    Enabled="False" />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FECHA_INICIO_CONTRATO" HeaderText="FECHA_INICIO_CONTRATO"
                            SortExpression="FECHA_INICIO_CONTRATO" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="FECHA_FIN_CONTRATO" HeaderText="FECHA_FIN_CONTRATO" SortExpression="FECHA_FIN_CONTRATO" DataFormatString="{0:d}">
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="CODIGO_ARRENDATARIO">
                            <ItemTemplate>
                                <asp:DropDownList ID="D3" runat="server" DataSourceID="Sql15"
                                    DataTextField="NOMBREX" DataValueField="CODIGO_RESPONSABLEX" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_ARRENDATARIO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="D3" runat="server" DataSourceID="Sql15"
                                    DataTextField="NOMBREX" DataValueField="CODIGO_RESPONSABLEX" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_ARRENDATARIO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            </asp:Panel>
        </div>
    
    </div><asp:Panel ID="P_Datos_Uso_Urbanistico" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 23px; position: absolute; top: 404px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        <asp:DataGrid ID="Datos_Uso_Urbanistico" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
            BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
            Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
            ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
            Style="z-index: 110; left: 34px; position: absolute; top: 27px" Width="1106px">
            <FooterStyle BackColor="#CCCCCC" />
            <EditItemStyle Font-Names="arial,x-small" />
            <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                ForeColor="Black" Font-Size="X-Small" />
            <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                PrevPageText="&amp;lt;P&#225;gina Anterior" />
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <Columns>
                <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                    <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                </asp:EditCommandColumn>
                <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                    <FooterStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                </asp:ButtonColumn>
                <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundColumn>
                <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="TIPO_USO_URBANISTICO">
                    <EditItemTemplate>
                        &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql7"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_USO_URBANISTICO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_USO_URBANISTICO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql7"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_USO_URBANISTICO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_USO_URBANISTICO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                </asp:BoundColumn>
            </Columns>
            <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
    </asp:Panel>
        <asp:Panel ID="P_Datos_Tipologia" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 23px; position: absolute; top: 403px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Tipologia" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                Style="z-index: 110; left: 32px; position: absolute; top: 16px" Width="1112px" HorizontalAlign="Left">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    ForeColor="Black" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli"></asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_TIPOLOGIA">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql9"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_TIPOLOGIA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_TIPOLOGIA") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql9"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_TIPOLOGIA" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_TIPOLOGIA") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" />
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="SUPERFICIE" HeaderText="SUPERFICIE" SortExpression="SUPERFICIE" DataFormatString="{0:f}">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Right" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="SUPERFICIE_CONSTRUIDA" HeaderText="SUPERFICIE_CONSTRUIDA"
                        SortExpression="SUPERFICIE_CONSTRUIDA" DataFormatString="{0:F}">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Right" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="SUPERFICIE_REAL" HeaderText="SUPERFICIE_REAL" SortExpression="SUPERFICIE_REAL" DataFormatString="{0:F}">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Right" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="EDIFICABILIDAD_PARCELA" HeaderText="EDIFICABILIDAD_PARCELA"
                        SortExpression="EDIFICABILIDAD_PARCELA" DataFormatString="{0:F}">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Right" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="EDIFICABILIDAD_PARCELA_REAL" HeaderText="EDIFICABILIDAD_PARCELA_REAL"
                        SortExpression="EDIFICABILIDAD_PARCELA_REAL" DataFormatString="{0:F}">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Right" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="EDIFICACION_LEGALIZADA">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem,"EDIFICACION_LEGALIZADA") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem,"EDIFICACION_LEGALIZADA") %>'
                                Enabled="False" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
        </asp:Panel>
        <asp:Panel ID="P_Datos_Estado" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 23px; position: absolute; top: 403px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:DataGrid ID="Datos_Estado" runat="server" AllowCustomPaging="True" AllowPaging="True"
                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5"
                ShowFooter="True" Style="z-index: 110; left: 39px; position: absolute; top: 29px; width: 1005px;">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    ForeColor="Black" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli"></asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_ESTADO_ELEMENTO">
                        <EditItemTemplate>
                            &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql10"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO_ELEMENTO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO_ELEMENTO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;<asp:DropDownList ID="D1" runat="server" DataSourceID="Sql10"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO_ELEMENTO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO_ELEMENTO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp; &nbsp;
        </asp:Panel>
        <asp:Panel ID="P_Datos_Responsable" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="264px" Style="z-index: 102; left: 23px; position: absolute; top: 402px"
                Width="1208px" ScrollBars="Horizontal" Visible="False">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:DataGrid ID="Datos_Responsables" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                Style="z-index: 110; left: 34px; position: absolute; top: 30px" Width="668px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="Gold" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    ForeColor="Black" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
                <Columns>
                    <asp:ButtonColumn CommandName="Select" Text="Sel" ButtonType="PushButton"></asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CODIGO_RESPONSABLE" HeaderText="CODIGO_RESPONSABLE" SortExpression="CODIGO_RESPONSABLE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_1" HeaderText="APELLIDO_1" SortExpression="APELLIDO_1">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_2" HeaderText="APELLIDO_2" SortExpression="APELLIDO_2"></asp:BoundColumn>
                    <asp:BoundColumn DataField="NOMBRE" HeaderText="NOMBRE"
                        SortExpression="NOMBRE"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_ESTADO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql11"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql11"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="TIPO_RESPONSABLE">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D2" runat="server" DataSourceID="Sql12"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="D2" runat="server" DataSourceID="Sql12"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Responsables_Detalle" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                Style="z-index: 110; left: 705px; position: absolute; top: 17px" Width="440px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="Yellow" Font-Bold="True" Font-Italic="True" Font-Names="arial,x-small"
                    ForeColor="Black" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Names="arial,x-small" />
                <Columns>
                    <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="VALOR_DATO" HeaderText="VALOR_DATO" SortExpression="VALOR_DATO">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
        </asp:Panel>
        <asp:Panel ID="P_Datos_Documentacion" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="266px" Style="z-index: 102; left: 23px; position: absolute; top: 401px"
                Width="1209px" ScrollBars="Horizontal" Visible="False">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:DataGrid ID="Datos_Documentacion" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5" ShowFooter="True"
                Style="z-index: 100; left: 16px; position: absolute; top: 33px" Width="1120px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" Font-Size="X-Small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Transparent" />
                <SelectedItemStyle BackColor="Transparent" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    ForeColor="Black" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Names="Arial" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Font-Size="X-Small" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli"></asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FECHA_DOCUMENTO" HeaderText="FECHA_DOCUMENTO"
                        SortExpression="FECHA_DOCUMENTO" DataFormatString="{0:d}"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql8"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" DataSourceID="Sql8"
                                    DataTextField="DESCRIPCION" DataValueField="TIPO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO") %>' AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" Font-Size="X-Small">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="PATH" HeaderText="PATH" SortExpression="PATH"></asp:BoundColumn>
                    <asp:BoundColumn DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" />
                    </asp:BoundColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Select" Text="Visualizar"></asp:ButtonColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="AR" runat="server" Style="z-index: 101; left: 34px; position: absolute;
                top: 2px" Enabled="False" Font-Names="Arial" Font-Size="X-Small" Width="246px" />
            <asp:Button ID="CFichero" runat="server" Style="z-index: 102; left: 289px; position: absolute;
                top: 0px" Text="Subir Fichero" Width="107px" Enabled="False" />
        </asp:Panel>
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: 0px; width: 1439px;
            position: absolute; top: 0px; height: 723px; margin-right: 0px; margin-bottom: 0px;" /><asp:SqlDataSource ID="SqlDataSource4" runat="server"
                SelectCommand="SELECT TIPO_DATO_ECONOMICO, DESCRIPCION FROM TIPO_DATO_ECONOMICO">
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource5" runat="server"
                SelectCommand="SELECT TIPO_CARGA, DESCRIPCION FROM TIPO_CARGA"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                SelectCommand="SELECT TIPO_ENTIDAD_TASADORA, DESCRIPCION FROM TIPO_ENTIDAD_TASADORA">
        </asp:SqlDataSource><asp:SqlDataSource ID="Sql7" runat="server"
                SelectCommand="SELECT TIPO_USO_URBANISTICO,DESCRIPCION FROM TIPO_USO_URBANISTICO">
        </asp:SqlDataSource><asp:SqlDataSource ID="Sql8" runat="server"
                SelectCommand="SELECT TIPO_DOCUMENTO TIPO,DESCRIPCION FROM TIPO_DOCUMENTO">
        </asp:SqlDataSource><asp:SqlDataSource ID="Sql9" runat="server"
                SelectCommand="SELECT TIPO_TIPOLOGIA , DESCRIPCION FROM TIPO_TIPOLOGIA"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql10" runat="server"
                SelectCommand="SELECT TIPO_ESTADO_ELEMENTO  , DESCRIPCION FROM TIPO_ESTADO_ELEMENTO">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql11" runat="server"
                SelectCommand="SELECT TIPO_ESTADO  , DESCRIPCION FROM TIPO_ESTADO" CacheExpirationPolicy="Sliding">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql12" runat="server" CacheExpirationPolicy="Sliding" SelectCommand="SELECT * FROM [TIPO_RESPONSABLE]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql13" runat="server" CacheExpirationPolicy="Sliding"
            SelectCommand="SELECT * FROM TIPO_USO"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql14" runat="server" CacheExpirationPolicy="Sliding"
            SelectCommand="SELECT * FROM TIPO_ARRENDATARIO"></asp:SqlDataSource><asp:SqlDataSource ID="Sql15" runat="server" CacheExpirationPolicy="Sliding"
            SelectCommand="SELECT CODIGO_RESPONSABLE AS CODIGO_RESPONSABLEX, APELLIDO_1 + N' ' + APELLIDO_2 + N', ' + NOMBRE AS NOMBREX FROM CODIGO_RESPONSABLE">
            </asp:SqlDataSource>
        &nbsp; &nbsp;&nbsp;
    </form>
        &nbsp;&nbsp;&nbsp;
</body>
</html>
