<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inmuebles.aspx.vb" Inherits="GESTACTIV.Inmuebles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA - SELECCION INMUEBLES</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div title="GESTACTIV - SELECCION INMUEBLES">
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: 0px; width: 1439px;
            position: absolute; top: 0px; height: 723px; margin-right: 0px; margin-bottom: 0px;" /><img alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1255px;
            position: absolute; top: 9px; width: 166px; height: 82px;" /><img id="I_1_Inmuebles" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 23px;
                width: 118px; position: absolute; top: 16px; height: 87px; background-color: #FFFFFF;" />
        <img id="foto1" alt="" src="man-2546224_960_720.png" style="z-index: 106; left: 144px; width: 179px;
            position: absolute; top: 16px; height: 88px" />
            &nbsp;&nbsp;
            <asp:Label ID="T_1_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True"
                Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                left: 328px; position: absolute; top: -62px" Text="ACS Construcciones y Servicios"
                Width="520px"></asp:Label>
            <img id="I_3_Seguridad" alt="" src="logopiedra.jpg" style="z-index: 105; left: 1032px;
                width: 166px; position: relative; top: -126px; height: 88px" />
            <asp:Label ID="T_2_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True"
                Font-Names="Arial" Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103;
                left: 184px; position: relative; top: -134px" Text="Sistema de Información Inmobiliaria (SII)"
                Width="464px"></asp:Label>
            <asp:Label ID="T_2_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
                Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103; left: 344px;
                position: absolute; top: 72px" Text="Sistema de Información Inmobiliaria (SII)"
                Width="464px"></asp:Label>
            <asp:Label ID="T_1_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
                Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
                left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
                Width="520px"></asp:Label>
            &nbsp;<asp:Button ID="B_1_Inmuebles" runat="server" Style="left: 1255px; position: absolute;
                top: 95px" Text="Página Anterior" Width="168px" />
            &nbsp;

            <asp:Label ID="T_3_Seguridad" runat="server" BackColor="Transparent" Font-Bold="False"
                Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                left: 848px; position: absolute; top: -662px" Text="Seguridad" Width="168px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Label ID="T_3_Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
                Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
                left: 384px; position: absolute; top: -30px" Text="Inmuebles" Width="168px"></asp:Label>
            <asp:Panel ID="P_MensajeError" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="32px" HorizontalAlign="Left" ScrollBars="Vertical" Style="z-index: 102;
                left: 24px; position: absolute; top: 120px; width: 1392px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                    BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                    ForeColor="Red" Style="z-index: 105; left: 16px; position: absolute;
                    top: 8px; height: 18px; width: 1354px;"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="P_1_Seguridad" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
                BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
                Height="485px" Style="z-index: 102; left: 16px; position: relative; top: 56px"
                Width="1208px" ScrollBars="Both">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 8px; position: absolute;
                    top: 8px" Width="280px">Grupo Sociedad</asp:Label>
                &nbsp;
                <asp:TextBox ID="CAMPO0" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                    ForeColor="#000040" Style="left: 8px; position: absolute; top: 40px" Width="130px"
                    Wrap="False" Font-Size="X-Small"></asp:TextBox>
                <asp:DataGrid ID="Datos_Grupo" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2" ShowFooter="True"
                    Style="z-index: 110; left: 8px; position: absolute; top: 64px" Width="280px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" Font-Size="X-Small" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" />
                    <Columns>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Sel" Text="Sel"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="TIPO_GRUPO_SOCIEDAD" HeaderText="TIPO_GRUPO_SOCIEDAD"
                            SortExpression="TIPO_GRUPO_SOCIEDAD">
                            <HeaderStyle Width="2cm" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                <asp:TextBox ID="Buscar_Grupo" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 152px; position: absolute; top: 40px" Width="130px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Font-Names="Arial" Style="z-index: 109; left: 208px;
                    position: absolute; top: 8px" Text="Buscar" Width="72px" />
                <asp:Label ID="Label1" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 296px; position: absolute;
                    top: 8px" Width="595px">Sociedad</asp:Label>
                &nbsp;
                <asp:TextBox ID="CAMPO1" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                    ForeColor="#000040" Style="left: 296px; position: absolute; top: 40px" Width="250px"
                    Wrap="False" Font-Size="X-Small"></asp:TextBox>
                <asp:TextBox ID="Buscar_Sociedad" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 560px; position: absolute; top: 40px" Width="250px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Font-Names="Arial" Style="z-index: 109; left: 808px;
                    position: absolute; top: 8px" Text="Buscar" Width="72px" />
                <asp:DataGrid ID="Datos_Sociedades" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2" ShowFooter="True"
                    Style="z-index: 110; left: 296px; position: absolute; top: 64px" Width="88px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" Font-Size="X-Small" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" />
                    <Columns>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Sel" Text="Sel"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DESCRIPCION_EMPRESA" HeaderText="DESCRIPCION_EMPRESA"
                            SortExpression="DESCRIPCION_EMPRESA"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CIF" HeaderText="CIF" SortExpression="CIF"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TIPO_LOCALIDAD" HeaderText="TIPO_LOCALIDAD" SortExpression="TIPO_LOCALIDAD">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="TIPO_PROVINCIA" HeaderText="TIPO_PROVINCIA" SortExpression="TIPO_PROVINCIA">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="TIPO_PAIS" HeaderText="TIPO_PAIS" SortExpression="TIPO_PAIS">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CPOSTAL" HeaderText="CPOSTAL" SortExpression="CPOSTAL"></asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                <asp:Label ID="Label6" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 8px; position: absolute;
                    top: 216px" Width="280px">Grupo Interno</asp:Label>
                &nbsp;
                <asp:TextBox ID="CAMPO3" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                    ForeColor="#000040" Style="left: 8px; position: absolute; top: 256px" Width="130px"
                    Wrap="False" Font-Size="X-Small"></asp:TextBox>
                <asp:DataGrid ID="Datos_Grupo_Interno" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2" ShowFooter="True"
                    Style="z-index: 110; left: 8px; position: absolute; top: 280px" Width="280px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" />
                    <Columns>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Sel" Text="Sel"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="TIPO_GRUPO_INTERNO" HeaderText="TIPO_GRUPO_INTERNO"
                            SortExpression="TIPO_GRUPO_INTERNO">
                            <HeaderStyle Width="2cm" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                <asp:TextBox ID="Buscar_Grupo_Interno" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 152px; position: absolute; top: 256px" Width="130px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Font-Names="Arial" Style="z-index: 109; left: 208px;
                    position: absolute; top: 216px" Text="Buscar" Width="72px" />
                <asp:Label ID="Label8" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 296px; position: absolute;
                    top: 216px" Width="888px">Inmuebles - Elementos</asp:Label>
                &nbsp;
                <asp:TextBox ID="CAMPO4" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                    ForeColor="#000040" Style="left: 296px; position: absolute; top: 256px" Width="250px"
                    Wrap="False" Font-Size="X-Small"></asp:TextBox>
                <asp:TextBox ID="Buscar_Inmuebles" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 560px; position: absolute; top: 256px" Width="250px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Font-Names="Arial" Style="z-index: 109; left: 1104px;
                    position: absolute; top: 216px" Text="Buscar" Width="72px" />
                <asp:DataGrid ID="Datos_Inmuebles" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2" ShowFooter="True"
                    Style="z-index: 110; left: 296px; position: absolute; top: 280px" Width="888px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" />
                    <Columns>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Mostrar Ficha" Text="Mostrar Ficha"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CODIGO" HeaderText="CODIGO"
                            SortExpression="CODIGO" DataFormatString="{0:0000}">
                            <HeaderStyle Width="2cm" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="TIPO_ELEMENTO" SortExpression="TIPO_ELEMENTO">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.TIPO_ELEMENTO") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.TIPO_ELEMENTO") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="CENTRO" HeaderText="CENTRO" SortExpression="CENTRO"></asp:BoundColumn>
                        <asp:BoundColumn DataField="6_DESCRIPCION_CORTA" HeaderText="6_DESCRIPCION_CORTA"
                            SortExpression="6_DESCRIPCION_CORTA"></asp:BoundColumn>
                        <asp:BoundColumn DataField="2_UBICACION" HeaderText="2_UBICACION" SortExpression="2_UBICACION">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="2_TIPO_PROVINCIA" HeaderText="2_TIPO_PROVINCIA" SortExpression="2_TIPO_PROVINCIA">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                <asp:Label ID="Label3" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                    ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 904px; position: absolute;
                    top: 8px" Width="280px">Centro</asp:Label>
                <asp:TextBox ID="CAMPO2" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                        ForeColor="#000040" Style="left: 904px; position: absolute; top: 40px" Width="130px"
                        Wrap="False" Font-Size="X-Small"></asp:TextBox>
                <asp:TextBox ID="Buscar_Centro" runat="server" Font-Bold="False" Font-Italic="False"
                    Height="16px" Style="left: 1048px; position: absolute; top: 40px" Width="130px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" Font-Names="Arial" Style="z-index: 109; left: 1104px;
                    position: absolute; top: 8px" Text="Buscar" Width="72px" />
                <asp:DataGrid ID="Datos_Centro" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                    BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                    Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2" ShowFooter="True"
                    Style="z-index: 110; left: 904px; position: absolute; top: 64px" Width="280px">
                    <FooterStyle BackColor="#CCCCCC" />
                    <EditItemStyle Font-Names="arial,x-small" />
                    <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        ForeColor="Black" />
                    <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                        Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                        PrevPageText="&amp;lt;P&#225;gina Anterior" />
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <ItemStyle Font-Names="arial,x-small" />
                    <Columns>
                        <asp:ButtonColumn ButtonType="PushButton" CommandName="Sel" Text="Sel"></asp:ButtonColumn>
                        <asp:BoundColumn DataField="TIPO_CENTRO" HeaderText="TIPO_CENTRO"
                            SortExpression="TIPO_CENTRO">
                            <HeaderStyle Width="2cm" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                        </asp:BoundColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid></asp:Panel>
        </div>
    
    </div>
        <asp:Label ID="T3Inmuebles" runat="server" BackColor="Transparent" Font-Bold="False"
            Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
            left: 872px; position: absolute; top: 72px" Text="Buscador Inmuebles" Width="168px"></asp:Label>
    </form>
        &nbsp;
</body>
</html>
