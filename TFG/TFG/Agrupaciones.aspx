<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Agrupaciones.aspx.vb" Inherits="GESTACTIV.Agrupaciones" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-AGRUPACIONES-DATOS</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div title="GESTACTIV - AGRUPACIONES-DATOS">
        <img id="I_1_Agrupaciones" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 24px;
            width: 118px; position: absolute; top: 8px; height: 87px; background-color: #FFFFFF;" />
        <img id="I_2_Agrupaciones" alt="" src="man-2546224_960_720.png" style="z-index: 107; left: 150px;
            width: 179px; position: absolute; top: 8px; height: 88px; margin-left: 0px;" />
        <asp:Label ID="T_1_Agrupaciones" runat="server" BackColor="Transparent" Font-Bold="True"
            Font-Names="Arial" Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
            left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
            Width="520px"></asp:Label>
        <asp:Label ID="T_2_Agrupaciones" runat="server" BackColor="Transparent" Font-Bold="True"
            Font-Names="Arial" Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103;
            left: 344px; position: absolute; top: 72px; right: 206px;" Text="Sistema de Información Inmobiliaria (SII)"
            Width="464px"></asp:Label>
        <img id="I_3_Agrupaciones" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1251px;
            width: 166px; position: absolute; top: 4px; height: 78px" />
        <asp:Button ID="B_1_Agrupaciones" runat="server" Style="left: 1252px; position: absolute;
            top: 85px" Text="Página Anterior" Width="168px" />
        <asp:Panel ID="P_MensajeError" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue" HorizontalAlign="Left" Style="z-index: 102; left: 24px; position: absolute;
            top: 112px; height: 32px; width: 1390px;" ScrollBars="Vertical">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed" BorderStyle="None"
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                ForeColor="Red" Height="18px" Style="z-index: 105; left: 16px; position: absolute;
                top: 8px; width: 1354px;"></asp:Label></asp:Panel>
        &nbsp;&nbsp;
            <asp:Label ID="T3_Agrupaciones" runat="server" BackColor="Transparent" Font-Bold="False"
            Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
            left: 872px; position: absolute; top: 72px" Text="Agrupaciones" Width="168px"></asp:Label>
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: -5px; width: 1439px;
            position: absolute; top: -3px; height: 723px; margin-right: 0px; margin-bottom: 0px;" /><asp:SqlDataSource ID="Sql1" runat="server"
                                SelectCommand="SELECT SOCIEDAD, DESCRIPCION_EMPRESA FROM SOCIEDADES">
                            </asp:SqlDataSource>
        <asp:SqlDataSource ID="Sql2" runat="server"
                                SelectCommand="SELECT CODIGO AS CODIGOX, [6_DESCRIPCION_CORTA] AS DESCRIPCIONX FROM ELEMENTOS WHERE (SOCIEDAD = @SOCIEDAD)" CancelSelectOnNullParameter="False">
                                <SelectParameters>
                                    <asp:SessionParameter Name="SOCIEDAD" SessionField="XSociedadx" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql3" runat="server"
                                SelectCommand="SELECT TIPO_CENTRO, DESCRIPCION FROM TIPO_CENTRO" CacheExpirationPolicy="Sliding">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql4" runat="server"
                                SelectCommand="SELECT CODIGO_RESPONSABLE, APELLIDO_1 + ' ' + APELLIDO_2 + ' , ' + NOMBRE AS NOMBRE_LARGO FROM CODIGO_RESPONSABLE">
                            </asp:SqlDataSource>
                        <asp:SqlDataSource ID="Sql5" runat="server"
                                SelectCommand="SELECT * FROM TIPO_ESTADO"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="Sql6" runat="server"
                                SelectCommand="SELECT TIPO_DATO, DESCRIPCION FROM TIPO_DATO"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="Sql7" runat="server"
                                SelectCommand="SELECT TIPO_LOCALIDAD, DESCRIPCION FROM TIPO_LOCALIDAD"></asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:Panel ID="P_3_Agrupaciones" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="485px" HorizontalAlign="Left" Style="z-index: 102; left: 25px; position: absolute;
            top: 162px" Width="1200px" Visible="False">
            <asp:Label ID="Label6" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: relative;
                top: 16px" Width="600px">GrupoInterno-Elemento</asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="left: 48px; position: absolute;
                top: 64px" Text="Buscar :" Width="56px"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="CAMPO2" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 64px" Width="200px" Wrap="False" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp;<asp:DataGrid ID="Datos_Grupo_Interno" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" ShowFooter="True" Style="z-index: 110;
                left: 48px; position: absolute; top: 88px" Width="600px" PageSize="5">
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
                    <asp:BoundColumn DataField="TIPO_GRUPO_INTERNO" HeaderText="TIPO_GRUPO_INTERNO"
                        SortExpression="TIPO_GRUPO_INTERNO">
                        <HeaderStyle Width="2cm" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>&nbsp;
            <asp:TextBox ID="Buscar_Grupo_Interno" runat="server" Font-Bold="False" Font-Italic="False" Height="16px"
                Style="left: 336px; position: absolute; top: 64px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Elemento" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 700px; position: absolute; top: 88px"
                Width="360px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="Yellow" Font-Bold="False" ForeColor="White" Font-Names="Arial" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="TIPO_GRUPO_INTERNO" HeaderText="TIPO" SortExpression="TIPO_GRUPO_INTERNO">
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="SOCIEDAD">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True"
                                DataSourceID="Sql1" DataTextField="SOCIEDAD" DataValueField="SOCIEDAD" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: 8px; position: relative; top: 0px" OnSelectedIndexChanged="D1_SelectedIndexChanged" AutoPostBack="True" Font-Size="X-Small">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True"
                                DataSourceID="Sql1" DataTextField="SOCIEDAD" DataValueField="SOCIEDAD" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: 0px; position: relative; top: 0px" OnSelectedIndexChanged="D1_SelectedIndexChanged" AutoPostBack="True" Font-Size="X-Small" Enabled="False" OnDataBound="D1_DataBound">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CODIGO" SortExpression="CODIGO">
                        <EditItemTemplate>
                              &nbsp;&nbsp;
                            <asp:DropDownList ID="D2" runat="server" AutoPostBack="True"
                                DataSourceID="Sql2" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO") %>'                                     
                                Style="left: -1px; position: relative; top: 0px" CausesValidation="True" DataTextField="DESCRIPCIONX" DataValueField="CODIGOX" AppendDataBoundItems="True" Font-Size="X-Small" OnDataBound="D2_DataBound1">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;<asp:DropDownList ID="D2" runat="server" AutoPostBack="True"
                                DataSourceID="Sql2" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO") %>'                                     
                                Style="left: -1px; position: relative; top: 0px" CausesValidation="True" DataTextField="DESCRIPCIONX" DataValueField="CODIGOX" Enabled="False" AppendDataBoundItems="True" Font-Size="X-Small" OnDataBound="D2_DataBound2">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp;
            <asp:Button ID="Button4" runat="server" Font-Names="Arial" Style="z-index: 109; left: 576px;
                position: absolute; top: 64px" Text="Buscar" Width="72px" />
            &nbsp; &nbsp;
            <asp:Button ID="Button5" runat="server" Style="left: 916px; position: absolute;
                top: 64px" Text="Insertar Elemento" Width="136px" />
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        </asp:Panel>
        <asp:Panel ID="P_2_Agrupaciones" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="485px" HorizontalAlign="Left" Style="z-index: 102; left: 27px; position: absolute;
            top: 162px" Width="1200px" Visible="False" ScrollBars="Auto">
            <asp:Label ID="Label2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: relative;
                top: 16px" Width="600px">GrupoSociedad-Sociedad</asp:Label>
            <asp:Label ID="Label3" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed" BorderStyle="None"
                Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                ForeColor="Red" Height="18px" Style="z-index: 105; left: 48px; position: relative;
                top: 504px" Width="728px"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="left: 48px; position: absolute;
                top: 64px" Text="Buscar :" Width="56px"></asp:Label>

            <asp:TextBox ID="CAMPO1" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 64px" Width="200px"
                Wrap="False" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp;<asp:DataGrid ID="Datos_Grupo" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" ShowFooter="True" Style="z-index: 110;
                left: 48px; position: absolute; top: 88px" Width="600px" PageSize="5">
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
                Height="16px" Style="left: 336px; position: absolute; top: 64px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Grupo_Sociedades" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 692px; position: absolute; top: 88px"
                Width="360px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="False" ForeColor="White" Font-Names="Arial" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="GRUPO_SOCIEDAD" HeaderText="GRUPO_SOCIEDAD" SortExpression="GRUPO_SOCIEDAD">
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="SOCIEDAD">
                        <EditItemTemplate>
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql1" DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: 4px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql1" DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                                Enabled="False" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: 7px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Font-Names="Arial" Style="z-index: 109; left: 576px;
                position: absolute; top: 64px" Text="Buscar" Width="72px" />
            &nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Style="left: 916px; position: absolute;
                top: 64px" Text="Insertar Sociedad" Width="136px" />
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        </asp:Panel>
        &nbsp;
        <asp:Panel ID="P_1_Agrupaciones" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="485px" HorizontalAlign="Left" Style="z-index: 102; left: 24px; position: absolute;
            top: 161px" Width="1200px" Visible="False">
            <asp:Label ID="Label1" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: relative;
                top: 16px" Width="600px">Sociedad-Centros-Responsables-TipoDato</asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Busca_Seguridad" runat="server" Font-Bold="True" Style="left: 48px;
                position: absolute; top: 64px" Text="Buscar :" Width="56px"></asp:Label>

            <asp:TextBox ID="CAMPO" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 64px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp;<asp:DataGrid ID="Datos_Sociedades" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" ShowFooter="True" Style="z-index: 110;
                left: 48px; position: absolute; top: 88px" Width="600px" PageSize="5">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="Yellow" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
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
                    <asp:BoundColumn DataField="SIGLAS" HeaderText="SIGLAS" SortExpression="SIGLAS"></asp:BoundColumn>
                    <asp:BoundColumn DataField="DOMICILIO" HeaderText="DOMICILIO" SortExpression="DOMICILIO">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO"></asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <asp:TextBox ID="Buscar_Sociedad" runat="server" Font-Bold="False" Font-Italic="False"
                Height="16px" Style="left: 336px; position: absolute; top: 64px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Centros" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 688px; position: absolute; top: 88px"
                Width="360px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD">
                        <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Width="1px" Wrap="False" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="CENTRO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql3" DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO"
                                Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CENTRO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql3" DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO"
                                Enabled="False" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CENTRO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp;
            <asp:Button ID="Button2" runat="server" Font-Names="Arial" Style="z-index: 109; left: 576px;
                position: absolute; top: 64px" Text="Buscar" Width="72px" />
            &nbsp; &nbsp;
            <asp:Button ID="Insertar_Dato" runat="server" Style="left: 912px; position: absolute;
                top: 64px" Text="Insertar Centro" Width="136px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Insertar_Responsable" runat="server" Style="left: 512px; position: absolute;
                top: 320px" Text="Insertar Responsable" Width="136px" />
            <asp:DataGrid ID="Datos_Responsables" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 48px; position: absolute; top: 344px"
                Width="600px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="LawnGreen" Font-Bold="False" ForeColor="Black" Font-Names="Arial" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Sel" Text="Sel"></asp:ButtonColumn>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD">
                        <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Width="1px" Wrap="False" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="RESPONSABLE">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql4" DataTextField="NOMBRE_LARGO" DataValueField="CODIGO_RESPONSABLE"
                                Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_RESPONSABLE") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql4" DataTextField="NOMBRE_LARGO" DataValueField="CODIGO_RESPONSABLE"
                                Enabled="False" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CODIGO_RESPONSABLE") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="TIPO_ESTADO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql5" DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO"
                                Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql5" DataTextField="DESCRIPCION" DataValueField="TIPO_ESTADO"
                                Enabled="False" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_ESTADO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid><asp:Button ID="Button6" runat="server" Style="left: 912px; position: absolute;
                top: 320px" Text="Insertar TipoDato" Width="136px" />
            <asp:DataGrid ID="Datos_TipoDato" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 688px; position: absolute; top: 344px"
                Width="360px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="CODIGO_RESPONSABLE">
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_DATO" SortExpression="TIPO_DATO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True"
                                DataSourceID="Sql6" DataTextField="DESCRIPCION" DataValueField="TIPO_DATO" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_DATO") %>'
                                Style="left: -2px; position: relative; top: 0px" OnSelectedIndexChanged="D1_SelectedIndexChanged" AutoPostBack="True" Font-Size="X-Small">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="D1" runat="server" AppendDataBoundItems="True"
                                DataSourceID="Sql6" DataTextField="DESCRIPCION" DataValueField="TIPO_DATO" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_DATO") %>'
                                Style="left: -10px; position: relative; top: 0px" OnSelectedIndexChanged="D1_SelectedIndexChanged" AutoPostBack="True" Enabled="False" Font-Size="X-Small">
                                <asp:ListItem Selected="True"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="VALOR_DATO" HeaderText="VALOR_DATO" SortExpression="VALOR_DATO">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
        </asp:Panel>
        &nbsp;
        <asp:Panel ID="P_4_Agrupaciones" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="485px" HorizontalAlign="Left" Style="z-index: 102; left: 25px; position: absolute;
            top: 161px" Width="1200px" Visible="False">
            <asp:Label ID="Label7" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: relative;
                top: 16px" Width="600px">Provincias-Localidades</asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Style="left: 48px; position: absolute;
                top: 64px" Text="Buscar :" Width="56px"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Campo3" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 64px" Width="200px"
                Wrap="False" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp;<asp:DataGrid ID="Datos_Provincia" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="1px" ShowFooter="True" Style="z-index: 110;
                left: 48px; position: absolute; top: 88px" Width="600px" PageSize="5">
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
                    <asp:BoundColumn DataField="TIPO_PROVINCIA" HeaderText="TIPO_PROVINCIA"
                        SortExpression="TIPO_PROVINCIA">
                        <HeaderStyle Width="2cm" />
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    </asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <asp:TextBox ID="Buscar_Provincia" runat="server" Font-Bold="False" Font-Italic="False"
                Height="16px" Style="left: 336px; position: absolute; top: 64px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Localidad" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False" Font-Italic="False"
                Font-Names="Arial" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False"
                Font-Underline="False" ForeColor="Black" GridLines="Vertical" Height="1px" PageSize="2"
                ShowFooter="True" Style="z-index: 110; left: 688px; position: absolute; top: 88px"
                Width="360px">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="False" ForeColor="White" Font-Names="Arial" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" Font-Bold="False" Font-Italic="False" Font-Names="arial,x-small"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"
                    Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom"
                    PrevPageText="&amp;lt;P&#225;gina Anterior" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="TIPO_PROVINCIA" HeaderText="TIPO_PROVINCIA" SortExpression="TIPO_PROVINCIA">
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_LOCALIDAD" SortExpression="TIPO_LOCALIDAD">
                        <EditItemTemplate>
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql7" DataTextField="DESCRIPCION" DataValueField="TIPO_LOCALIDAD" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_LOCALIDAD") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql7" DataTextField="DESCRIPCION" DataValueField="TIPO_LOCALIDAD" Font-Names="arial,x-small"
                                SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_LOCALIDAD") %>'
                                Style="left: -14px; position: relative; top: 0px" Enabled="False" Font-Size="X-Small">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            &nbsp;
            <asp:Button ID="Button7" runat="server" Font-Names="Arial" Style="z-index: 109; left: 576px;
                position: absolute; top: 64px" Text="Buscar" Width="72px" />
            &nbsp; &nbsp;
            <asp:Button ID="Button8" runat="server" Style="left: 912px; position: absolute;
                top: 64px" Text="Insertar Localidad" Width="136px" />
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
