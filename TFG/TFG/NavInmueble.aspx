<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NavInmueble.aspx.vb" Inherits="GESTACTIV.NavInmueble" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-NAVEGACION INMUEBLES RELACIONADOS</title>
    <link href='Response.Redirect("/Inmuebles.aspx")' rel="stylesheet" type="text/css" />
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div title="GESTACTIV - NAVEGACION INMUEBLES RELACIONADOS">
        <div>
            <div>
                <div>
                    <div>
                        <img id="I_1_Inmuebles" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 25px;
                            width: 118px; position: absolute; top: 12px; height: 87px; background-color: #FFFFFF;" />
                        <img id="I_2_Inmuebles" alt="" src="man-2546224_960_720.png" style="z-index: 107; left: 150px;
                            width: 179px; position: absolute; top: 13px; height: 85px" />
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
                            left: 344px; position: absolute; top: 72px; right: 191px;" Text="Sistema de Información Inmobiliaria (SII)"
                            Width="464px"></asp:Label>
                        <asp:Label ID="T_1_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True"
                            Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                            left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
                            Width="520px"></asp:Label>
                        <img id="I_3_Inmuebles" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1250px;
                            width: 166px; position: absolute; top: 7px; height: 88px" />
                        <asp:Button ID="B_1_Inmuebles" runat="server" Style="left: 1249px; position: absolute;
                            top: 97px; width: 170px;" Text="Datos Principales Inm." />
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
                            left: 24px; position: absolute; top: 120px; width: 1391px;">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                                BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                                ForeColor="Red" Height="18px" Style="z-index: 105; left: 16px; position: absolute;
                                top: 8px; width: 1344px;"></asp:Label>
                        </asp:Panel>
                        &nbsp;
                    </div>
                </div>
                <asp:Label ID="T3Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
                    Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                    left: 800px; position: absolute; top: 72px" Text="Navegacion Inmuebles"
                    Width="240px"></asp:Label>
                &nbsp; &nbsp; &nbsp;
                <asp:Panel ID="P_1_Seguridad" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                    Height="152px" Style="z-index: 102; left: 24px; position: absolute; top: 164px"
                    Width="1208px">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                        ForeColor="Gainsboro" Style="z-index: 100; left: 16px; position: absolute;
                        top: 8px; height: 24px; width: 1168px;">Datos Principales Elemento</asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;
                    <asp:FormView ID="FElemento_Cabecera" runat="server" BackColor="Transparent" BorderColor="Black"
                        DataKeyNames="SOCIEDAD,CODIGO" DataSourceID="SqlDataSource0" Height="108px" Style="z-index: 101;
                        left: 8px; position: absolute; top: 24px" Width="1200px">
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
                                TextMode="MultiLine" Width="628px"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:DropDownList ID="Sociedad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD" Enabled="False"
                                SelectedValue='<%# Bind("SOCIEDAD", "{0}") %>' Style="z-index: 111; left: 96px;
                                position: absolute; top: 40px" Width="250px">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="Codigo" runat="server" Enabled="False" Style="z-index: 112; left: 408px;
                                position: absolute; top: 40px" Text='<%# Bind("CODIGO", "{0:0000}") %>' Width="80px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Style="z-index: 113; left: 352px; position: absolute;
                                top: 40px" Text="Codigo :"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Style="z-index: 114; left: 24px; position: absolute;
                                top: 40px" Text="Sociedad :"></asp:Label>
                            <asp:DropDownList ID="TipoElemento" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_ELEMENTO" Enabled="False" SelectedValue='<%# Bind("TIPO_ELEMENTO", "{0}") %>'
                                Style="z-index: 115; left: 512px; position: absolute; top: 40px" Width="248px">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Style="z-index: 105; left: 24px;
                                position: absolute; top: 80px" Text='<%# Bind("6_DESCRIPCION_CORTA", " {0}") %>'
                                Width="464px"></asp:TextBox>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:DropDownList ID="Centrox" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO" Enabled="False" SelectedValue='<%# Bind("CENTRO", "{0}") %>'
                                Style="z-index: 115; left: 768px; position: absolute; top: 40px" Width="376px">
                                <asp:ListItem></asp:ListItem>
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
                &nbsp; &nbsp; &nbsp;
                <asp:Panel ID="Panel1" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                    Height="60px" Style="z-index: 102; left: 24px; position: absolute; top: 328px"
                    Width="1208px">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Cabecera" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                        ForeColor="Gainsboro" Height="24px" Style="z-index: 100; left: 16px; position: absolute;
                        top: 8px" Width="1168px">Histórico de Navegación</asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="left: 44px; position: absolute;
                        top: 36px" Text="Buscar :" Width="56px"></asp:Label>
                    <asp:TextBox ID="CAMPO" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                        ForeColor="#000040" Style="left: 116px; position: absolute; top: 36px" Width="250px"
                        Wrap="False" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                    <asp:TextBox ID="Buscar" runat="server" Font-Bold="False" Font-Italic="False" Height="16px"
                        Style="left: 380px; position: absolute; top: 36px" Width="250px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                    <asp:Button ID="Boton_Buscar" runat="server" Font-Names="Arial" Style="z-index: 109;
                        left: 648px; position: absolute; top: 36px" Text="Buscar por Campo" Width="148px" />
                    <asp:Button ID="Inserta_Registro" runat="server" Font-Names="Arial" Style="z-index: 109;
                        left: 880px; position: absolute; top: 36px" Text="Insertar Registro" Width="148px" />
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
                &nbsp; &nbsp; &nbsp;
                <asp:SqlDataSource ID="SqlDataSource0" runat="server" SelectCommand="SELECT SOCIEDAD, CODIGO, TIPO_ELEMENTO, CENTRO, [2_UBICACION], [2_COD_POSTAL], [2_TIPO_LOCALIDAD], [2_TIPO_PROVINCIA], [3_TITULO_PROPIEDAD], [3_FECHA], [3_PROTOCOLO], [3_COPIA_TITULO], [4_TIPO_REGISTRO], [4_TIPO_PROVINCIA], [4_NUM_FINCA], [4_TIPO_CERTIFICACION], [5_REF_CATASTRAL], [5_IBI], [6_DESCRIPCION_CORTA], [6_DESCRIPCION_LARGA], OBSERVACIONES_GENERALES, [3_CODIGO_NOTARIO] FROM ELEMENTOS WHERE (SOCIEDAD = @SOCIEDAD) AND (CODIGO = @CODIGO)">
                    <SelectParameters>
                        <asp:SessionParameter Name="SOCIEDAD" SessionField="BSOCIEDAD" />
                        <asp:SessionParameter Name="CODIGO" SessionField="BCODIGO" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT [DESCRIPCION_EMPRESA], [SOCIEDAD] FROM [SOCIEDADES]">
                </asp:SqlDataSource>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" SelectCommand="SELECT * FROM  TIPO_ELEMENTO">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" SelectCommand="SELECT TIPO_CENTRO, DESCRIPCION FROM TIPO_CENTRO">
                </asp:SqlDataSource>
                &nbsp;
                <asp:Panel ID="P_Datos_Inmuebles_Relacionados" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                    BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                    Height="264px" ScrollBars="Horizontal" Style="z-index: 102; left: 24px; position: absolute;
                    top: 400px" Width="1208px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:DataGrid ID="Datos_Inmuebles_Relacionados" runat="server" AllowPaging="True"
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False"
                        Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                        Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="5"
                        ShowFooter="True" Style="z-index: 110; left: 32px; position: absolute; top: 24px"
                        Width="1120px">
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
                            <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                            </asp:EditCommandColumn>
                            <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli"></asp:ButtonColumn>
                            <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                            </asp:BoundColumn>
                            <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="SOCIEDAD_RELACION">
                                <EditItemTemplate>
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4"
                                        DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD" OnDataBound="DropDownList1_DataBound2"
                                        SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD_RELACION") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged6">
                                        <asp:ListItem Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4"
                                        DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD" Enabled="False" OnDataBound="DropDownList1_DataBound2"
                                        SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD_RELACION") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged5">
                                        <asp:ListItem Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="CODIGO_RELACION">
                                <EditItemTemplate>
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5"
                                        DataTextField="DESCRIPCION" DataValueField="CODIGO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_RELACION") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small" OnDataBound="DropDownList2_DataBound">
                                        <asp:ListItem Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    &nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5"
                                        DataTextField="DESCRIPCION" DataValueField="CODIGO" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_RELACION") %>' AppendDataBoundItems="True" AutoPostBack="True" Font-Names="Arial" Font-Size="X-Small" Enabled="False" OnDataBound="DropDownList2_DataBound">
                                        <asp:ListItem Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                        <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                    </asp:DataGrid>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
                </asp:Panel>
                &nbsp; &nbsp;
            <img alt="" src="fondo-03-02.png" style="z-index: -1; left: -5px; width: 1439px;
            position: absolute; top: -3px; height: 723px; margin-right: 0px; margin-bottom: 0px;" /></div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" SelectCommand="SELECT SOCIEDAD , DESCRIPCION_EMPRESA  FROM dbo.SOCIEDADES">
        </asp:SqlDataSource>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server" SelectCommand="SELECT CODIGO , [6_DESCRIPCION_CORTA] AS DESCRIPCION FROM dbo.ELEMENTOS&#13;&#10;WHERE SOCIEDAD=@SOCIEDAD">
            <SelectParameters>
                <asp:SessionParameter Name="SOCIEDAD" SessionField="SOCI" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
        &nbsp;
</body>
</html>
