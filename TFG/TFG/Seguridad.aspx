<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Seguridad.aspx.vb" Inherits="GESTACTIV.Seguridad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-SEGURIDAD</title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="Seguridad" runat="server">
    <div title="GESTACTIV - SEGURIDAD">
        <img id="I_1_Seguridad" alt="" src="logotipo-gestactiv.png" style="z-index: 108; left: 24px; width: 118px;
            position: absolute; top: 8px; height: 87px; background-color: #FFFFFF; right: 857px;" />
        <img id="I_2_Seguridad" alt="" src="man-2546224_960_720.png" style="z-index: 107; left: 148px;
            width: 179px; position: absolute; top: 8px; height: 88px" />
        &nbsp;&nbsp;
        <asp:Label ID="T_1_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
            Font-Size="XX-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 109;
            left: 344px; position: absolute; top: 8px" Text="GESTACTIV - Gestión Integrada"
            Width="520px"></asp:Label>
        &nbsp;<asp:Label ID="T_2_Seguridad" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
            Font-Size="Large" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103; left: 344px;
            position: absolute; top: 72px" Text="Sistema de Información Inmobiliaria (SII)"
            Width="464px"></asp:Label>
        <asp:Panel ID="P_MensajeError" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="32px" HorizontalAlign="Left" ScrollBars="Vertical" Style="z-index: 102;
            left: 16px; position: relative; top: 88px; width: 1386px;">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                ForeColor="Red" Height="18px" Style="z-index: 105; left: 18px; position: absolute;
                top: 8px; width: 1350px;"></asp:Label>
        </asp:Panel>
        <asp:Button ID="B_1_Seguridad" runat="server" Style="left: 1257px; position: absolute;
            top: 94px" Text="Página Anterior" Width="168px" />
        <img id="I_3_Agrupaciones" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1256px;
            width: 166px; position: absolute; top: 5px; height: 84px" /><asp:Panel ID="P_1_Seguridad" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="500px" Style="z-index: 102; left: 16px; position: relative; top: 88px"
            Width="1200px">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;


            <asp:Label ID="Busca_Seguridad" runat="server" Font-Bold="True" Style="left: 48px;
                position: absolute; top: 56px" Text="Buscar :" Width="56px"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="CAMPO" runat="server" Enabled="False" Font-Bold="False" Font-Italic="False"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 56px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            <asp:DataGrid ID="Datos_Usuarios" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Names="Arial"
                Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False"
                ForeColor="Black" GridLines="Vertical" Height="112px" ShowFooter="True" Style="z-index: 110;
                left: 48px; position: absolute; top: 80px" Width="728px" PageSize="5">
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
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="CODIGO_RESPONSABLE" HeaderText="CODIGO" SortExpression="CODIGO_RESPONSABLE">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_1" HeaderText="APELLIDO_1" SortExpression="APELLIDO_1">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_2" HeaderText="APELLIDO_2" SortExpression="APELLIDO_2">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CLAVE" HeaderText="CLAVE" SortExpression="CLAVE"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO" SortExpression="TIPO_RESPONSABLE">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Sql2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>'
                                Style="position: relative" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Sql2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" Enabled="False"
                                Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>'
                                Style="position: relative" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>
            <asp:TextBox ID="Buscar_Usuario" runat="server" Font-Bold="False" Font-Italic="False" Height="16px"
                Style="left: 336px; position: absolute; top: 56px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;
            <asp:DataGrid ID="Datos_Usuarios_Grupo" runat="server"
                AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False"
                Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small"
                Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Vertical"
                Height="1px" PageSize="2" ShowFooter="True" Style="z-index: 110; left: 48px;
                position: absolute; top: 352px" Width="360px" AutoGenerateColumns="False">
                <FooterStyle BackColor="#CCCCCC" />
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
                        <HeaderStyle Width="1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                        <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="GRUPO">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql1" DataTextField="DESCRIPCION" DataValueField="TIPO_GRUPO_SOCIEDAD"
                                Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_GRUPO_SOCIEDAD") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small" Width="152px">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql1" DataTextField="DESCRIPCION" DataValueField="TIPO_GRUPO_SOCIEDAD"
                                Enabled="False" Font-Names="Arial" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_GRUPO_SOCIEDAD") %>'
                                Style="left: -6px; position: relative; top: 0px" OnTextChanged="DropDownList1_TextChanged" Font-Size="X-Small" Width="152px">
                            </asp:DropDownList>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                    Font-Underline="False" Wrap="False" />
            </asp:DataGrid>
            <asp:Button ID="Insertar_Usuario" runat="server" Font-Names="Arial" Style="z-index: 108;
                left: 704px; position: absolute; top: 56px" Text="Insertar" Width="72px" />
            <asp:Button ID="Button1" runat="server" Font-Names="Arial" Style="z-index: 109; left: 632px;
                position: absolute; top: 56px" Text="Buscar" Width="72px" />
            &nbsp;
            <asp:Label ID="Label6" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: absolute;
                top: 16px" Width="728px">Seguridad-Grupos-Sociedades-Centros</asp:Label>
            &nbsp;
            <asp:Button ID="Insertar_Grupo" runat="server" Style="left: 264px; position: absolute;
                top: 328px" Text="Insertar Grupo" Width="146px" />
            <asp:Button ID="Insertar_Sociedad" runat="server" Style="left: 632px; position: absolute;
                top: 328px" Text="Insertar Sociedad" Width="146px" />
            <asp:Button ID="Insertar_Centro" runat="server" Style="left: 1000px; position: absolute;
                top: 328px" Text="Insertar Centro" Width="146px" /><asp:DataGrid ID="Datos_Usuarios_Sociedades" runat="server"
                AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False"
                Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small"
                Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Vertical"
                Height="1px" PageSize="2" ShowFooter="True" Style="z-index: 110; left: 416px;
                position: absolute; top: 352px" Width="360px" AutoGenerateColumns="False">
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
                            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                            <HeaderStyle Width="1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="SOCIEDAD">
                            <EditItemTemplate>
                                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql3" DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql3" DataTextField="DESCRIPCION_EMPRESA" DataValueField="SOCIEDAD"
                                Enabled="False" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"SOCIEDAD") %>'
                                Style="left: -6px; position: relative; top: 0px" OnTextChanged="DropDownList1_TextChanged" Font-Size="X-Small">
                                </asp:DropDownList>&nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid><asp:DataGrid ID="Datos_Usuarios_Centro" runat="server"
                AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableTheming="False" Font-Bold="False"
                Font-Italic="False" Font-Names="Arial" Font-Overline="False" Font-Size="X-Small"
                Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Vertical"
                Height="1px" PageSize="2" ShowFooter="True" Style="z-index: 110; left: 784px;
                position: absolute; top: 352px" Width="360px" AutoGenerateColumns="False">
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
                            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                            <HeaderStyle Width="1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" Wrap="False" />
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" Wrap="False" />
                        </asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="CENTRO">
                            <EditItemTemplate>
                                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql4" DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CENTRO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                DataSourceID="Sql4" DataTextField="DESCRIPCION" DataValueField="TIPO_CENTRO"
                                Enabled="False" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"CENTRO") %>'
                                Style="left: -6px; position: relative; top: 0px" Font-Size="X-Small">
                                </asp:DropDownList>&nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                </asp:DataGrid>
                            <asp:SqlDataSource ID="Sql1" runat="server"
                                SelectCommand="SELECT TIPO_GRUPO_SOCIEDAD, DESCRIPCION FROM TIPO_GRUPO_SOCIEDAD">
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql2" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_RESPONSABLE]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="Sql3" runat="server"
                                SelectCommand="SELECT SOCIEDAD, DESCRIPCION_EMPRESA FROM SOCIEDADES"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="Sql4" runat="server"
                                SelectCommand="SELECT TIPO_CENTRO, DESCRIPCION FROM TIPO_CENTRO" CacheExpirationPolicy="Sliding"></asp:SqlDataSource>
        </asp:Panel>
        &nbsp;

        <asp:Label ID="T_3_Seguridad" runat="server" BackColor="Transparent" Font-Bold="False" Font-Names="Arial"
            Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
            left: 856px; position: absolute; top: -470px" Text="Seguridad" Width="168px"></asp:Label>

        <img alt="" src="logopiedra.jpg" style="z-index: 106; left: 1048px; width: 166px;
            position: absolute; top: -710px; height: 82px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="T3_Seguridad" runat="server" BackColor="Transparent" Font-Bold="False"
            Font-Names="Arial" Font-Size="Large" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108;
            left: 872px; position: absolute; top: 72px" Text="Seguridad" Width="168px"></asp:Label>
        </div>
    </form>
        &nbsp;
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: -4px; width: 1439px;
            position: absolute; top: -3px; height: 723px; margin-right: 0px; margin-bottom: 0px;" />
</body>
</html>
