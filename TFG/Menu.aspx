<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Menu.aspx.vb" Inherits="GESTACTIV._Default" Culture="es-ES" EnableSessionState="True" Explicit="true" UICulture="es-ES" %>
<http-equiv content="IE=EmulateIE7"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>GA-MENU PRINCIPAL </title>
    <link href="StyleSheet1.css"
        rel="stylesheet" type="text/css" />
    <style type="text/css">
        #form1 {
            height: 163px;
            width: 855px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body bottommargin="20" topmargin="20">
        &nbsp; &nbsp;&nbsp;&nbsp;
    <form id="form1" runat="server">
    <div title="GESTACTIV- MENU">
        &nbsp;&nbsp;
    
    </div>

        <img id="foto1" alt="" src="man-2546224_960_720.png" style="z-index: 106; left: 144px; width: 179px;
            position: absolute; top: 16px; height: 75px" />
        <asp:Menu ID="Menu2" runat="server" BackColor="Lavender" BorderColor="RoyalBlue" BorderStyle="Ridge"
            ForeColor="RoyalBlue" ItemWrap="True" Orientation="Horizontal" Style="z-index: 101;
            left: 16px; position: absolute; top: 144px; margin-bottom: 0px; height: 27px; width: 1402px;" Font-Bold="False" Font-Italic="True" DynamicPopOutImageTextFormatString="" Font-Size="13pt">
            <LevelSelectedStyles>
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
            </LevelSelectedStyles><StaticSelectedStyle ForeColor="RoyalBlue" BackColor="Lavender" BorderColor="RoyalBlue" />
            <LevelSubMenuStyles>
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
                <asp:SubMenuStyle Font-Underline="False" />
            </LevelSubMenuStyles>
            <LevelMenuItemStyles>
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
                <asp:MenuItemStyle Font-Underline="False" />
            </LevelMenuItemStyles>
            <DynamicMenuStyle BackColor="Lavender" BorderColor="RoyalBlue" />
            <DynamicSelectedStyle BackColor="#8080FF" />
            <DynamicMenuItemStyle BackColor="Lavender" BorderColor="RoyalBlue" BorderStyle="None" ForeColor="RoyalBlue" />
            <DataBindings>
                <asp:MenuItemBinding Text="aaaaa" Value="aaaaa" />
                <asp:MenuItemBinding />
                <asp:MenuItemBinding />
                <asp:MenuItemBinding />
            </DataBindings>
            <StaticHoverStyle BackColor="Lavender" BorderColor="RoyalBlue" ForeColor="RoyalBlue" />
            <Items>
                <asp:MenuItem Text="Inmuebles" Value="Inmuebles">
                    <asp:MenuItem Text="Alta Nuevos Elementos" Value="Alta Nuevos Elementos"></asp:MenuItem>
                    <asp:MenuItem Text="Buscar - Modificar Elementos" Value="Buscar - Modificar Elementos">
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Informes" Value="Informes">
                    <asp:MenuItem Text="Datos principales Inmuebles" Value="Inmuebles"></asp:MenuItem>
                    <asp:MenuItem Text="Anexos" Value="Anexos">
                        <asp:MenuItem Text="Datos Económicos" Value="Datos Económicos"></asp:MenuItem>
                        <asp:MenuItem Text="Datos de Uso" Value="Datos de Uso"></asp:MenuItem>
                        <asp:MenuItem Text="Datos Tipología" Value="Datos Tipología"></asp:MenuItem>
                        <asp:MenuItem Text="Datos Uso Urbanístico" Value="Datos Uso Urbanístico"></asp:MenuItem>
                        <asp:MenuItem Text="Datos Estado" Value="Datos Estado"></asp:MenuItem>
                        <asp:MenuItem Text="Datos Documentación" Value="Datos Documentación"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Inmuebles Relacionados" Value="Inmuebles Relacionados"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Mantenimientos" Value="Mantenimientos">
                    <asp:MenuItem Text="TipoLocalidad" Value="TipoLocalidad"></asp:MenuItem>
                    <asp:MenuItem Text="TipoProvincia" Value="TipoProvincia"></asp:MenuItem>
                    <asp:MenuItem Text="TipoPais" Value="TipoPais"></asp:MenuItem>
                    <asp:MenuItem Text="Sociedades" Value="Sociedades"></asp:MenuItem>
                    <asp:MenuItem Text="TipoCentro" Value="TipoCentro"></asp:MenuItem>
                    <asp:MenuItem Text="GrupoSociedades" Value="GrupoSociedades"></asp:MenuItem>
                    <asp:MenuItem Text="TipoCertificacion" Value="TipoCertificacion"></asp:MenuItem>
                    <asp:MenuItem Text="TipoRegistro" Value="TipoRegistro"></asp:MenuItem>
                    <asp:MenuItem Text="GrupoInterno" Value="GrupoInterno"></asp:MenuItem>
                    <asp:MenuItem Text="Responsables" Value="Responsables"></asp:MenuItem>
                    <asp:MenuItem Text="TipoEstado" Value="TipoEstado"></asp:MenuItem>
                    <asp:MenuItem Text="TipoResponsable" Value="TipoResponsable"></asp:MenuItem>
                    <asp:MenuItem Text="TipoDato" Value="TipoDato"></asp:MenuItem>
                    <asp:MenuItem Text="TipoExplotacion" Value="TipoExplotacion"></asp:MenuItem>
                    <asp:MenuItem Text="TipoUso" Value="TipoUso"></asp:MenuItem>
                    <asp:MenuItem Text="TipoArrendatario" Value="TipoArrendatario"></asp:MenuItem>
                    <asp:MenuItem Text="TipoTipologia" Value="TipoTipologia"></asp:MenuItem>
                    <asp:MenuItem Text="TipoUsoUrbanistico" Value="TipoUsoUrbanistico"></asp:MenuItem>
                    <asp:MenuItem Text="TipoEstadoElemento" Value="TipoEstadoElemento"></asp:MenuItem>
                    <asp:MenuItem Text="TipoCarga" Value="TipoCarga"></asp:MenuItem>
                    <asp:MenuItem Text="TipoEntidadTasadora" Value="TipoEntidadTasadora"></asp:MenuItem>
                    <asp:MenuItem Text="TipoDatoEconomico" Value="TipoDatoEconomico"></asp:MenuItem>
                    <asp:MenuItem Text="TipoElemento" Value="TipoElemento"></asp:MenuItem>
                    <asp:MenuItem Text="TipoDocumento" Value="TipoDocumento"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Agrupaciones" Value="TERCERO">
                    <asp:MenuItem Text="Sociedad-Centros-Responsables-TipoDato" Value="Sociedad-Centros-Responsables-TipoDato"></asp:MenuItem>
                    <asp:MenuItem Text="GrupoSociedad-Sociedad" Value="GrupoSociedad-Sociedad"></asp:MenuItem>
                    <asp:MenuItem Text="GrupoInterno-Elemento" Value="GrupoInterno-Elemento"></asp:MenuItem>
                    <asp:MenuItem Text="Provincia-Localidad" Value="Provincia-Localidad"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Seguridad" Value="Seguridad">
                    <asp:MenuItem Text="Usuarios" Value="Usuarios"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticMenuStyle BackColor="Lavender" BorderColor="RoyalBlue" />
            <StaticMenuItemStyle BackColor="Lavender" BorderColor="RoyalBlue" />
            <DynamicHoverStyle BackColor="White" BorderColor="White" />
        </asp:Menu>
        &nbsp;
        <img id="Img1" alt="" src="logotipo-gestactiv.png" style="z-index: 107; left: 16px; width: 118px;
            position: absolute; top: 16px; height: 74px; background-color: #FFFFFF;" />
        <asp:Label ID="Label1" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
            Font-Size="X-Large" ForeColor="RoyalBlue" Height="40px" Style="z-index: 102;
            left: 344px; position: absolute; top: 16px" Text="GESTACTIV - Gestión Integrada"
            Width="656px"></asp:Label>
        <asp:Label ID="Label2" runat="server" BackColor="Transparent" Font-Bold="True" Font-Names="Arial"
            Font-Size="Medium" ForeColor="RoyalBlue" Height="24px" Style="z-index: 103; left: 344px;
            position: absolute; top: 80px" Text="Sistema de Información Inmobiliaria (SII)"
            Width="464px"></asp:Label>
        <asp:Label ID="Label3" runat="server" BackColor="Transparent" Font-Bold="False" Font-Names="Arial"
            Font-Size="Medium" ForeColor="MidnightBlue" Height="24px" Style="z-index: 108; left: 919px;
            position: absolute; top: 78px" Text="Menu Principal" Width="168px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Panel ID="Panel_Mantenimientos" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="X-Small" ForeColor="RoyalBlue"
            Height="485px" Style="left: 16px; position: absolute; top: 176px" Visible="False"
            Width="1208px" ScrollBars="Auto" HorizontalAlign="Justify">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Etiqueta"
                    runat="server" Height="16px" Style="z-index: 106; left: -710px; position: relative;
                    top: 40px" Width="72px" Font-Bold="True" Font-Names="Arial" Font-Size="Small">Buscar en :</asp:Label>
            <asp:Label ID="Message2" runat="server" BackColor="#000040" Font-Bold="True" Font-Names="Arial"
                ForeColor="Gainsboro" Height="24px" Style="z-index: 105; left: 48px; position: absolute;
                top: 16px" Width="696px">GrupoInterno-Elemento</asp:Label>
            <asp:Button ID="Insertar"
                        runat="server" Style="z-index: 108; left: 672px; position: absolute; top: 56px"
                        Text="Insertar" Width="72px" Font-Names="Arial" /><asp:Button ID="Button1" runat="server" Style="z-index: 109;
                            left: 600px; position: absolute; top: 56px" Text="Buscar" Width="72px" Font-Names="Arial" />
            <asp:TextBox ID="Buscar" runat="server" Style="left: 336px; position: absolute;
                top: 56px" Font-Bold="False" Font-Italic="False" Width="200px" EnableTheming="True" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="CAMPO" runat="server" Enabled="False" Font-Bold="True" Font-Italic="True"
                ForeColor="#000040" Style="left: 120px; position: absolute; top: 56px" Width="200px" Font-Names="Arial" Font-Size="X-Small"></asp:TextBox>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" Style="left: -1022px;
                position: relative; top: 56px" Text="Buscar :"></asp:Label>
            <asp:DataGrid ID="Datos_Sociedades" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White"
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Names="Arial"
                Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" Style="z-index: 110;
                left: 50px; position: absolute; top: 83px" Width="700px" ShowFooter="True" Height="1px" AutoGenerateColumns="False" Visible="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                <FooterStyle BackColor="#CCCCCC" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="False" ForeColor="White" Font-Italic="False" Font-Names="arial,x-small" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" ForeColor="Black" Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom" PrevPageText="&amp;lt;P&#225;gina Anterior" Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                    <asp:BoundColumn DataField="SOCIEDAD" HeaderText="SOCIEDAD" SortExpression="SOCIEDAD"></asp:BoundColumn>
                    <asp:BoundColumn DataField="DESCRIPCION_EMPRESA" HeaderText="DESCRIPCION_EMPRESA" SortExpression="DESCRIPCION_EMPRESA"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CIF" HeaderText="CIF" SortExpression="CIF"></asp:BoundColumn>
                    <asp:BoundColumn DataField="SIGLAS" HeaderText="SIGLAS" SortExpression="SIGLAS"></asp:BoundColumn>
                    <asp:BoundColumn DataField="DOMICILIO" HeaderText="DOMICILIO" SortExpression="DOMICILIO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ESCALERA" HeaderText="ESCALERA" SortExpression="ESCALERA"></asp:BoundColumn>
                    <asp:BoundColumn DataField="PUERTA" HeaderText="PUERTA" SortExpression="PUERTA"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="LOCALIDAD" SortExpression="LOCALIDAD">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sql1"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_LOCALIDAD" Style="position: relative" AutoPostBack="True" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_LOCALIDAD") %>' Font-Names="Arial" Font-Size="X-Small">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sql1"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_LOCALIDAD" Style="position: relative" AutoPostBack="True" Enabled="False" Font-Names="Arial" OnDataBinding="DropDownList1_DataBinding2" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_LOCALIDAD") %>' Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                        </ItemTemplate>
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                            Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="PROVINCIA" SortExpression="PROVINCIA">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Sql2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA" Style="position: relative" AppendDataBoundItems="True" AutoPostBack="True" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_PROVINCIA") %>' Font-Names="Arial" Font-Size="X-Small">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Sql2"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PROVINCIA" Style="position: relative" AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="Arial" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_PROVINCIA") %>' Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="PAIS" SortExpression="PAIS">
                        <EditItemTemplate><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Sql3"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PAIS" Style="position: relative; left: -2px; top: 0px;" AppendDataBoundItems="True" AutoPostBack="True" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_PAIS") %>' Font-Size="X-Small">
                        </asp:DropDownList>&nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Sql3"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_PAIS" Style="position: relative; left: 0px; top: 0px;" AppendDataBoundItems="True" AutoPostBack="True" Enabled="False" Font-Names="arial,x-small" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_PAIS") %>' Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="CPOSTAL" HeaderText="CPOSTAL" SortExpression="CPOSTAL"></asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                <EditItemStyle Font-Names="arial,x-small" Font-Size="X-Small" />
                <ItemStyle Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="X-Small" Font-Strikeout="False" Font-Underline="False" />
            </asp:DataGrid>
            <asp:DataGrid ID="Datos_Responsable" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White"
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Names="Arial"
                Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" Style="z-index: 110;
                left: 52px; position: absolute; top: 84px" Width="700px" ShowFooter="True" Height="75px" AutoGenerateColumns="False" Visible="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                <FooterStyle BackColor="#CCCCCC" />
                <EditItemStyle Font-Names="arial,x-small" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="False" ForeColor="White" Font-Italic="False" Font-Names="arial,x-small" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" ForeColor="Black" Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom" PrevPageText="&amp;lt;P&#225;gina Anterior" Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
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
                    <asp:BoundColumn DataField="CODIGO_RESPONSABLE" HeaderText="CODIGO_RESPONSABLE" SortExpression="CODIGO_RESPONSABLE">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_1" HeaderText="APELLIDO_1" SortExpression="APELLIDO_1">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="APELLIDO_2" HeaderText="APELLIDO_2" SortExpression="APELLIDO_2">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE"></asp:BoundColumn>
                    <asp:BoundColumn DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CLAVE" HeaderText="CLAVE" SortExpression="CLAVE"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="TIPO_RESPONSABLE" SortExpression="TIPO_RESPONSABLE">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sql4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" Style="position: relative" AutoPostBack="True" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>' Font-Names="Arial" Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Sql4"
                                DataTextField="DESCRIPCION" DataValueField="TIPO_RESPONSABLE" Style="position: relative" AutoPostBack="True" Font-Names="Arial" Enabled="False" SelectedValue='<%# DataBinder.Eval(Container.DataItem,"TIPO_RESPONSABLE") %>' Font-Size="X-Small">
                            </asp:DropDownList>&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
            </asp:DataGrid>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DataGrid ID="Datos" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White"
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Names="Arial"
                Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" Style="z-index: 110;
                left: 52px; position: absolute; top: 82px" Width="700px" ShowFooter="True" Height="1px" EnableTheming="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                <FooterStyle BackColor="#CCCCCC" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="False" ForeColor="White" Font-Names="Arial" Font-Size="X-Small" />
                <PagerStyle BackColor="#999999" ForeColor="Black" Mode="NumericPages" NextPageText="&amp;gt;P&#225;gina Siguiente" Position="TopAndBottom" PrevPageText="&amp;lt;P&#225;gina Anterior" Font-Names="arial,x-small" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <AlternatingItemStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:EditCommandColumn ButtonType="PushButton" CancelText="Can" EditText="Edi" UpdateText="Act">
                        <HeaderStyle Width="1cm" />
                    </asp:EditCommandColumn>
                    <asp:ButtonColumn ButtonType="PushButton" CommandName="Delete" Text="Eli">
                        <HeaderStyle Width="1cm" />
                    </asp:ButtonColumn>
                </Columns>
                <HeaderStyle BackColor="Navy" Font-Bold="True" ForeColor="White" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                    Font-Strikeout="False" Font-Underline="False" Font-Size="X-Small" />
            </asp:DataGrid>&nbsp; &nbsp;
            <asp:Label ID="Busca_Seguridad" runat="server" Font-Bold="True" Style="left: 48px;
                position: absolute; top: 56px" Text="Buscar :" Width="56px"></asp:Label>
                            <asp:SqlDataSource ID="Sql4" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_RESPONSABLE]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql3" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_PAIS]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql2" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_PROVINCIA]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="Sql1" runat="server"
                                SelectCommand="SELECT * FROM [TIPO_LOCALIDAD]"></asp:SqlDataSource>
            </asp:Panel>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
        <br />
        <asp:Panel ID="P_MensajeError" runat="server" BackColor="#E0E0E0" BorderColor="RoyalBlue"
            BorderStyle="Inset" Font-Names="Arial" Font-Size="Small" ForeColor="RoyalBlue"
            Height="40px" HorizontalAlign="Left" ScrollBars="Vertical" Style="z-index: 102;
            left: 16px; position: absolute; top: 104px; width: 1395px;">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label5" runat="server"
                BackColor="#FFFFC0" BorderColor="DarkRed" BorderStyle="None" Font-Bold="True"
                Font-Names="Arial" Font-Overline="True" Font-Underline="False" ForeColor="Red"
                Height="18px" Style="z-index: 105; left: -158px; position: relative; top: 472px"
                Width="856px"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Label ID="MensajeError" runat="server" BackColor="#FFFFC0" BorderColor="DarkRed"
                BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Overline="True" Font-Underline="False"
                ForeColor="Red" Height="18px" Style="z-index: 105; left: 16px; position: absolute;
                top: 8px; right: 47px; width: 1358px;"></asp:Label>
        </asp:Panel>
        <br />
        <br />
        <img alt="" src="fondo-03-02.png" style="z-index: -1; left: -5px; width: 1439px;
            position: absolute; top: -3px; height: 723px; margin-right: 0px; margin-bottom: 0px;" />
        <img id="I_3_Agrupaciones" alt="" src="Master-Gestion-Inversiones-Patrimonios-Inmobiliarios-Online.jpg" style="z-index: 105; left: 1247px;
            width: 166px; position: absolute; top: 11px; height: 88px" />
                    <asp:Button ID="B_1_Menu" runat="server" Style="left: 1114px; position: absolute;
                        top: 74px; width: 127px;" Text="Cerrar App" />
    </form>
        </body>
</html>
