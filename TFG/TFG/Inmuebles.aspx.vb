
Partial Public Class Inmuebles
    Inherits System.Web.UI.Page
    Public conexion As New SqlClient.SqlConnection
    Public Cadena As String
    Public Tabla As String
    Public Campos(10), Valores(10), Filtro(4) As String
    Public XDataSet(6) As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conexion = Session("XConexion")
        If Not Page.IsPostBack Then
            Session("Status") = ""
            Buscar_Grupo.Text = ""

            Session("Filtro_GrupoSociedad") = ""
            Session("Filtro_Sociedad") = ""
            Session("Filtro") = Filtro
            Session("Filtro")(0) = ""
            Session("Filtro")(1) = ""
            Actualiza_DataSet()

        End If
    End Sub

    Protected Sub B_1_Inmuebles_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Inmuebles.Click
        Response.Redirect("/Menu.aspx")
    End Sub

    Sub Actualiza_DataSet()
        Actualiza_DataSet_0()
        Actualiza_DataSet_1(Session("Filtro")(0))
        Actualiza_DataSet_2(Session("Filtro")(1))
        Actualiza_DataSet_3()
        Actualiza_DataSet_4(Session("Filtro"))
    End Sub


    Sub Actualiza_DataSet_0()
        Dim dsx0 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena, Texto As String
        Session("Xdsx") = XDataSet

        Cadena = "SELECT * FROM " & "dbo.Seleccion_Grupo"
        Texto = " WHERE "
        If Session("TGrupos") = 0 Then
            Cadena = Cadena & Texto & " USUARIO = " & "'" & Session("EntUsuario") & "'"
            Texto = " AND "
        End If
        If Trim(Buscar_Grupo.Text) <> "" Then
            Cadena = Cadena & Texto & CAMPO0.Text & " LIKE '%" & Buscar_Grupo.Text & "%'"
            Texto = " AND "
        End If
        dsx0.Clear()
        Dim dax0 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax0.Fill(dsx0, "dbo.Seleccion_Grupo")
        Datos_Grupo.DataSource = dsx0
        Datos_Grupo.DataKeyField = dsx0.Tables(0).Columns(0).ColumnName
        Session("Xdax") = dax0
        Session("Xdsx")(0) = dsx0
        Datos_Grupo.DataBind()
        If Trim(CAMPO0.Text) = "" Then CAMPO0.Text = dsx0.Tables(0).Columns(0).ColumnName
    End Sub

    Sub Actualiza_DataSet_1(ByVal Grupo_Sociedad)
        Dim dsx1 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena, Texto As String
        Session("Xdsx") = XDataSet


        Cadena = "SELECT DISTINCT SOCIEDAD,DESCRIPCION_EMPRESA,CIF,TIPO_LOCALIDAD,TIPO_PROVINCIA,TIPO_PAIS,CPOSTAL FROM " & "dbo.Seleccion_Sociedad"
        Texto = " WHERE "
        If Session("TSociedades") = 0 Then
            Cadena = Cadena & Texto & " USUARIO = " & "'" & Session("EntUsuario") & "'"
            Texto = " AND "
        End If
        If Trim(Buscar_Sociedad.Text) <> "" Then
            Cadena = Cadena & Texto & CAMPO1.Text & " LIKE '%" & Buscar_Sociedad.Text & "%'"
            Texto = " AND "
        End If
        If Trim(Grupo_Sociedad) <> "" Then
            Cadena = Cadena & Texto & " GRUPO_SOCIEDAD = " & Grupo_Sociedad
            Texto = " AND "
        End If

        dsx1.Clear()
        Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax1.Fill(dsx1, "dbo.Seleccion_Sociedad")
        Datos_Sociedades.DataSource = dsx1
        Datos_Sociedades.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName


        Session("Xdax") = dax1
        Session("Xdsx")(1) = dsx1
        Datos_Sociedades.DataBind()

        'Cargar esto con la sociedad----------------------------------------------------------'
        If (Session("Filtro")(0) <> "") Then
            If Datos_Sociedades.Items.Count <> 0 Then
                Session("Filtro")(1) = Datos_Sociedades.Items(0).Cells(1).Text()
            Else
                Session("Filtro")(1) = "xxx"
            End If
        End If

        '-------------------------------------------------------------------------------------'
        If Trim(CAMPO1.Text) = "" Then CAMPO1.Text = dsx1.Tables(0).Columns(0).ColumnName
    End Sub

    Sub Actualiza_DataSet_2(ByVal Sociedad)
        Dim dsx2 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena, Texto As String
        Session("Xdsx") = XDataSet

        Cadena = "SELECT DISTINCT TIPO_CENTRO,DESCRIPCION FROM " & "dbo.Seleccion_Centros"
        Texto = " WHERE "
        If Session("TCentros") = 0 Then
            Cadena = Cadena & Texto & " USUARIO = " & "'" & Session("EntUsuario") & "'"
            Texto = " AND "
        End If
        If Trim(Buscar_Centro.Text) <> "" Then
            Cadena = Cadena & Texto & CAMPO2.Text & " LIKE '%" & Buscar_Centro.Text & "%'"
            Texto = " AND "
        End If
        If Trim(Sociedad) <> "" Then
            Cadena = Cadena & Texto & " SOCIEDAD = '" & Sociedad & "'"
            Texto = " AND "
        End If

        dsx2.Clear()
        Dim dax2 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax2.Fill(dsx2, "dbo.Seleccion_Centros")
        Datos_Centro.DataSource = dsx2
        Datos_Centro.DataKeyField = dsx2.Tables(0).Columns(0).ColumnName
        Session("Xdax") = dax2
        Session("Xdsx")(2) = dsx2
        Datos_Centro.DataBind()
        If Trim(CAMPO2.Text) = "" Then CAMPO2.Text = dsx2.Tables(0).Columns(0).ColumnName
    End Sub
    Sub Actualiza_DataSet_3()
        Dim dsx3 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena, Texto As String
        Session("Xdsx") = XDataSet


        Cadena = " SELECT * FROM " & "dbo.Tipo_Grupo_Interno "
        Texto = " WHERE "
        If Trim(Buscar_Grupo_Interno.Text) <> "" Then
            Cadena = Cadena & Texto & CAMPO3.Text & " LIKE '%" & Buscar_Grupo_Interno.Text & "%'"
            Texto = " AND "
        End If

        dsx3.Clear()
        Dim dax3 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax3.Fill(dsx3, "dbo.Tipo_Grupo_Interno")
        Datos_Grupo_Interno.DataSource = dsx3
        Datos_Grupo_Interno.DataKeyField = dsx3.Tables(0).Columns(0).ColumnName
        Session("Xdax") = dax3
        Session("Xdsx")(3) = dsx3
        Datos_Grupo_Interno.DataBind()
        If Trim(CAMPO3.Text) = "" Then CAMPO3.Text = dsx3.Tables(0).Columns(0).ColumnName
    End Sub

    Sub Actualiza_DataSet_4(ByVal XFiltro() As String)
        Dim dsx4 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena, Texto As String
        Session("Xdsx") = XDataSet


        Cadena = "SELECT DISTINCT SOCIEDAD,CODIGO,TIPO_ELEMENTO,CENTRO,DESCRIPCION_CORTA [6_DESCRIPCION_CORTA],UBICACION [2_UBICACION],TIPO_PROVINCIA [2_TIPO_PROVINCIA] FROM " & "dbo.Seleccion_Elementos_New"
        Texto = " WHERE "
        ''''Cadena = Cadena & " WHERE USUARIO = " & "'" & Session("EntUsuario") & "'"
        If Trim(Buscar_Inmuebles.Text) <> "" Then
            Cadena = Cadena & Texto & " [" & CAMPO4.Text & "] LIKE '%" & Buscar_Inmuebles.Text & "%'"
            Texto = " AND "
        End If
        If Trim(XFiltro(0)) <> "" Then
            Cadena = Cadena & Texto & " TIPO_GRUPO_SOCIEDAD = '" & XFiltro(0) & "'"
            Texto = " AND "
        End If
        If Trim(XFiltro(1)) <> "" Then
            Cadena = Cadena & Texto & " SOCIEDAD = '" & XFiltro(1) & "'"
            Texto = " AND "
        End If
        If Trim(XFiltro(2)) <> "" Then
            Cadena = Cadena & Texto & " CENTRO = '" & XFiltro(2) & "'"
            Texto = " AND "
        End If
        If Trim(XFiltro(3)) <> "" Then
            Cadena = Cadena & Texto & " TIPO_GRUPO_INTERNO = '" & XFiltro(3) & "'"
            Texto = " AND "
        End If
        dsx4.Clear()

        Dim dax4 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax4.Fill(dsx4, "dbo.Seleccion_Elementos_New")
        Datos_Inmuebles.DataSource = dsx4
        Datos_Inmuebles.DataKeyField = dsx4.Tables(0).Columns(0).ColumnName
        Session("Xdax") = dax4
        Session("Xdsx")(4) = dsx4
        Datos_Inmuebles.DataBind()
        If Trim(CAMPO4.Text) = "" Then CAMPO4.Text = dsx4.Tables(0).Columns(1).ColumnName
    End Sub




    Protected Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        MensajeError.Text = ""
        Datos_Sociedades.CurrentPageIndex = 0
        Datos_Centro.CurrentPageIndex = 0
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Sub Pinchar_Cabecera(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        If e.CommandArgument <> "" Then
            If Len(Trim(e.CommandArgument)) > 2 Then
                Select Case source.id
                    Case "Datos_Grupo"
                        CAMPO0.Text = e.CommandArgument
                    Case "Datos_Sociedades"
                        CAMPO1.Text = e.CommandArgument
                    Case "Datos_Centro"
                        CAMPO2.Text = e.CommandArgument
                    Case "Datos_Grupo_Interno"
                        CAMPO3.Text = e.CommandArgument
                    Case "Datos_Inmuebles"
                        CAMPO4.Text = e.CommandArgument
                End Select
            End If
        End If
        MensajeError.Text = ""
    End Sub
    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        MensajeError.Text = ""
        Datos_Grupo.CurrentPageIndex = 0
        Datos_Sociedades.CurrentPageIndex = 0
        Datos_Centro.CurrentPageIndex = 0
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        MensajeError.Text = ""
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo.ItemCommand
        Pinchar_Cabecera(source, e)
        Try
            If (source.selectedindex = e.Item.ItemIndex) Or (Trim(source.Datakeys(e.Item.ItemIndex)) = 0) Then
                source.selectedindex = -1
                Session("Filtro")(0) = ""
                Actualiza_DataSet_1("")

                'Prueba--------------------------------------------------------------------------------
                Session("Filtro")(1) = ""

                Datos_Sociedades.SelectedIndex = -1
                Datos_Centro.SelectedIndex = -1
                If Datos_Sociedades.Items.Count <> 0 Then
                    Actualiza_DataSet_2(Session("Filtro")(1))
                End If
                Session("Filtro")(2) = ""
                '--------------------------------------------------------------------------------------
            Else
                source.selectedindex = e.Item.ItemIndex
                If e.Item.ItemIndex <> -1 Then
                    Session("Filtro")(0) = source.Datakeys(e.Item.ItemIndex)

                    Actualiza_DataSet_1(source.Datakeys(e.Item.ItemIndex))
      

                    'Prueba--------------------------------------------------------------------------------
                    Datos_Sociedades.SelectedIndex = 0
                    If Datos_Sociedades.Items.Count <> 0 Then
                        Actualiza_DataSet_2(Session("Filtro")(1))
                    Else
                        Actualiza_DataSet_2("xxx")
                    End If
                    '--------------------------------------------------------------------------------------
                End If
            End If
        Catch
            source.selectedindex = -1
            Actualiza_DataSet_1("")
            Session("Filtro")(0) = ""
            'Prueba--------------------------------------------------------------------------------
            Session("Filtro")(1) = ""
            Datos_Sociedades.SelectedIndex = -1
            If Datos_Sociedades.Items.Count <> 0 Then
                Actualiza_DataSet_2(Session("Filtro")(1))
            Else
                Actualiza_DataSet_2("xxx")
            End If
            '--------------------------------------------------------------------------------------
        End Try



        Actualiza_DataSet_4(Session("Filtro"))
        Session("XStatus") = ""

    End Sub

    Protected Sub Datos_Sociedades_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.ItemCommand
        Pinchar_Cabecera(source, e)
        Try
            If (source.selectedindex = e.Item.ItemIndex) Or (Trim(source.Datakeys(e.Item.ItemIndex)) = "TODAS") Then
                source.selectedindex = -1
                Datos_Centro.SelectedIndex = -1
                Session("Filtro")(0) = ""
                Session("Filtro")(1) = ""
                Session("Filtro")(2) = ""
                Actualiza_DataSet_2("")
            Else
                source.selectedindex = e.Item.ItemIndex
                If e.Item.ItemIndex <> -1 Then
                    Session("Filtro")(1) = source.Datakeys(e.Item.ItemIndex)
                    Actualiza_DataSet_2(source.Datakeys(e.Item.ItemIndex))
                End If
            End If
        Catch
            Session("Filtro")(0) = ""
            source.selectedindex = -1
            Actualiza_DataSet_2("")
        End Try
        Actualiza_DataSet_4(Session("Filtro"))
        Session("XStatus") = ""
    End Sub

    Protected Sub Datos_Grupo_Interno_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Interno.ItemCommand
        Pinchar_Cabecera(source, e)
        Try
            If source.selectedindex = e.Item.ItemIndex Then
                source.selectedindex = -1
                Session("Filtro")(3) = ""
            Else
                source.selectedindex = e.Item.ItemIndex
                Session("Filtro")(3) = source.Datakeys(e.Item.ItemIndex)
            End If
        Catch
            source.selectedindex = -1
            Session("Filtro")(3) = ""
        End Try
        Session("XStatus") = ""
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet_4(Session("Filtro"))

        'Actualiza_DataSet_1(source.Datakeys(e.Item.ItemIndex))
    End Sub

    Protected Sub Datos_Inmuebles_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Session("XStatus") = ""
            Session("BSOCIEDAD") = source.Items(e.Item.ItemIndex).Cells(1).Text()
            Session("BCODIGO") = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Session("BPROVINCIA") = source.Items(e.Item.ItemIndex).Cells(7).Text()
            Session("X2_TIPO_PROVINCIA") = source.Items(e.Item.ItemIndex).Cells(7).Text()
            Session("XPanel") = 0
            Response.Redirect("/FichaInmueble.aspx")
        End If
    End Sub

    Protected Sub Datos_Grupo_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Grupo.PageIndexChanged
        source.selectedindex = -1

        Session("Filtro")(0) = ""
        Session("Filtro")(1) = ""
        Datos_Sociedades.SelectedIndex = -1
        Datos_Sociedades.CurrentPageIndex = 0
        Datos_Centro.CurrentPageIndex = 0
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Sociedades_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Sociedades.PageIndexChanged
        source.selectedindex = -1
        source.CurrentPageIndex() = e.NewPageIndex()
        Datos_Centro.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_Interno_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Grupo_Interno.PageIndexChanged
        source.selectedindex = -1
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Inmuebles_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Inmuebles.PageIndexChanged
        source.SelectedIndex = -1
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub DataGrid1_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)

    End Sub

    Protected Sub Datos_Centro_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Centro.ItemCommand
        Pinchar_Cabecera(source, e)
        Try
            If (source.selectedindex = e.Item.ItemIndex) Or (Trim(source.Datakeys(e.Item.ItemIndex)) = "TODOS") Then
                source.selectedindex = -1
                Session("Filtro")(2) = ""
            Else
                source.selectedindex = e.Item.ItemIndex
                Session("Filtro")(2) = source.Datakeys(e.Item.ItemIndex)
            End If
        Catch
            source.selectedindex = -1
            Session("Filtro")(2) = ""
        End Try
        Session("XStatus") = ""
        Actualiza_DataSet_4(Session("Filtro"))
    End Sub

    Protected Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        MensajeError.Text = ""
        Datos_Centro.CurrentPageIndex = 0
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        MensajeError.Text = ""
        Datos_Grupo_Interno.CurrentPageIndex = 0
        Datos_Inmuebles.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Centro_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Centro.PageIndexChanged
        source.selectedindex = -1
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Sociedades_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Sociedades.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Inmuebles_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Inmuebles.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Grupo_Interno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Grupo_Interno.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Sociedades_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_Sociedades_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Sociedades_SortCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs)

    End Sub

    Protected Sub Datos_Sociedades_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Grupo_ItemCreated(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_Sociedades_ItemCreated(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_Grupo_ItemCreated1(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_Inmuebles_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Inmuebles.DataBinding

    End Sub

    Protected Sub Ajusta_todos(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim i As Integer
        If sender.EditItemIndex <> -1 Then
            For i = 0 To sender.Items(sender.EditItemIndex).Cells.Count - 1
                Try
                    Dim mitextbox As TextBox = sender.Items(sender.EditItemIndex).Cells(i).Controls(0)
                    mitextbox.Font.Size = 8
                Catch ex As Exception
                    Try
                        Dim midropdown As DropDownList = sender.Items(sender.EditItemIndex).Cells(i).Controls(1)
                        midropdown.Font.Size = 8
                    Catch ex2 As Exception
                    End Try
                End Try
            Next
        End If
    End Sub
End Class