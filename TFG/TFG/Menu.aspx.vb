Partial Public Class _Default
    Inherits System.Web.UI.Page
    Public conexion As New SqlClient.SqlConnection
    Public Cadena As String
    Public Tabla As String
    Public Campos(10), Valores(10) As String

    Protected Sub Page_Load2(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then


            If Not IsNothing(Panel_Mantenimientos) Then
                'Panel_Mantenimientos.Visible = False
            End If
        End If
    End Sub

    Protected Sub Menu2_MenuItemClick(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu2.MenuItemClick


        Panel_Mantenimientos.Visible = True

        Datos_Sociedades.Visible = False
        Datos_Sociedades.CurrentPageIndex = 0
        Datos_Sociedades.DataKeyField = ""

        Datos_Responsable.Visible = False
        Datos_Responsable.CurrentPageIndex = 0
        Datos_Responsable.DataKeyField = ""

        Datos.Visible = False
        Datos.CurrentPageIndex = 0
        Datos.DataKeyField = ""


        MensajeError.Text = ""

        Session("XPanel") = 0
        Session("Xdatos") = Datos
        Datos.Visible = True
        Message2.Text = Menu2.SelectedItem.Text

        If Menu2.SelectedItem.Text = "Mantenimientos" Then
            Panel_Mantenimientos.Visible = False
        End If


        Tabla = ""
        Session("XTabla") = ""
        Select Case Menu2.SelectedItem.Text
            Case "Datos principales Inmuebles"
                Response.Redirect("/Informe_1.aspx")
            Case "Datos Económicos"
                Response.Redirect("/Informe_2.aspx")
            Case "Datos de Uso"
                Response.Redirect("/Informe_3.aspx")
            Case "Datos Tipología"
                Response.Redirect("/Informe_4.aspx")
            Case "Datos Uso Urbanístico"
                Response.Redirect("/Informe_5.aspx")
            Case "Datos Estado"
                Response.Redirect("/Informe_6.aspx")
            Case "Datos Documentación"
                Response.Redirect("/Informe_7.aspx")
            Case "Inmuebles Relacionados"
                Response.Redirect("/Informe_8.aspx")
            Case "Alta Nuevos Elementos"
                Session("XPanel") = 1
                Response.Redirect("/FichaInmueble.aspx")
            Case "Buscar - Modificar Elementos"
                Session("XPanel") = 2
                Response.Redirect("/Inmuebles.aspx")
            Case "Sociedad-Centros-Responsables-TipoDato"
                Session("XPanel") = 1
                Response.Redirect("/Agrupaciones.aspx")
            Case "GrupoSociedad-Sociedad"
                Session("XPanel") = 2
                Response.Redirect("/Agrupaciones.aspx")
            Case "GrupoInterno-Elemento"
                Session("XPanel") = 3
                Response.Redirect("/Agrupaciones.aspx")
            Case "Provincia-Localidad"
                Session("XPanel") = 4
                Response.Redirect("/Agrupaciones.aspx")
            Case "Sociedades"
                Tabla = "dbo.Sociedades"
                Datos.Visible = False
                Datos_Sociedades.Visible = True
                Session("Xdatos") = Datos_Sociedades
            Case "TipoCentro"
                Tabla = "dbo.tipo_centro"
            Case "GrupoSociedades"
                Tabla = "dbo.tipo_grupo_sociedad"
            Case "TipoPais"
                Tabla = "dbo.tipo_pais"
            Case "TipoCertificacion"
                Tabla = "dbo.tipo_certificacion"
            Case "TipoRegistro"
                Tabla = "dbo.tipo_registro"
            Case "GrupoInterno"
                Tabla = "dbo.tipo_grupo_interno"
            Case "Responsables", "Usuarios"
                Tabla = "dbo.codigo_responsable"
                Datos.Visible = False
                Datos_Responsable.Visible = True
                Session("Xdatos") = Datos_Responsable
                If Menu2.SelectedItem.Text = "Usuarios" Then
                    Response.Redirect("/Seguridad.aspx")
                End If
            Case "TipoEstado"
                Tabla = "dbo.tipo_estado"
            Case "TipoResponsable"
                Tabla = "dbo.tipo_responsable"
            Case "TipoDato"
                Tabla = "dbo.tipo_dato"
            Case "TipoExplotacion"
                Tabla = "dbo.tipo_explotacion"
            Case "TipoUso"
                Tabla = "dbo.tipo_uso"
            Case "TipoArrendatario"
                Tabla = "dbo.tipo_arrendatario"
            Case "TipoProvincia"
                Tabla = "dbo.tipo_provincia"
            Case "TipoTipologia"
                Tabla = "dbo.tipo_tipologia"
            Case "TipoUsoUrbanistico"
                Tabla = "dbo.tipo_uso_urbanistico"
            Case "TipoEstadoElemento"
                Tabla = "dbo.tipo_estado_elemento"
            Case "TipoCarga"
                Tabla = "dbo.tipo_carga"
            Case "TipoEntidadTasadora"
                Tabla = "dbo.tipo_entidad_tasadora"
            Case "TipoLocalidad"
                Tabla = "dbo.tipo_localidad"
            Case "TipoDatoEconomico"
                Tabla = "dbo.tipo_dato_economico"
            Case "TipoElemento"
                Tabla = "dbo.tipo_elemento"
            Case "TipoDocumento"
                Tabla = "dbo.tipo_documento"
            Case Else
                'Panel_Mantenimientos.Visible = False
        End Select
        If Tabla <> "" Then
            '----------------------------------------------------------------`'
            'Para que en la primera selección no excluya con campos de anteriores ayudas
            Buscar.Text = ""
            Session("XTabla") = Tabla
            '----------------------------------------------------------------`'
            Actualiza_DataSet()
        End If
    End Sub
    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        MensajeError.Text = ""
        Datos.CurrentPageIndex = 0
        Datos_Sociedades.CurrentPageIndex = 0
        Datos_Responsable.CurrentPageIndex = 0
        Actualiza_DataSet()
    End Sub
    Private Sub Data_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub


    Protected Sub Datos_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos.SelectedIndexChanged

    End Sub




    Private Sub Datos_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos.EditCommand
        Editar(source, e)
    End Sub
    Private Sub Datos_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos.CancelCommand
        Cancelar(Datos)
    End Sub
    Private Sub Datos_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos.UpdateCommand
        Session("XDatos") = Datos
        Update(source, e)
    End Sub
    Private Sub Datos_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos.ItemCommand
        Pinchar_Cabecera(source, e)
    End Sub
    Private Sub Datos_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos.DeleteCommand
        Session("XDatos") = Datos
        Try
            Campos(0) = Session("XDatos").DataKeyField
            Valores(0) = Session("XDatos").Items(e.Item.ItemIndex).Cells(2).Text()
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "=" & Valores(0), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " = " & Valores(0) & " - Mensaje de Error : " & ex.Message
        Finally

            If (Session("XDatos").Items.Count = 1) And (Session("XDatos").CurrentPageIndex > 0) Then
                Session("XDatos").CurrentPageIndex = Session("XDatos").CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub






    Private Sub Datos_Sociedades_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.EditCommand
        Editar(source, e)
    End Sub
    Private Sub Datos_Sociedades_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.CancelCommand
        Cancelar(Datos_Sociedades)
    End Sub
    Private Sub Datos_Sociedades_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.UpdateCommand
        Session("XDatos") = Datos_Sociedades
        Update(source, e)
    End Sub
    Private Sub Datos_Sociedades_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.ItemCommand
        Pinchar_Cabecera(source, e)
    End Sub
    Private Sub Datos_Sociedades_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.DeleteCommand
        Session("XDatos") = Datos_Sociedades
        Try
            Campos(0) = Session("XDatos").DataKeyField
            Valores(0) = Session("XDatos").Items(e.Item.ItemIndex).Cells(2).Text()
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "=" & Valores(0), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " = " & Valores(0) & " - Mensaje de Error : " & ex.Message
        Finally

            If (Session("XDatos").Items.Count = 1) And (Session("XDatos").CurrentPageIndex > 0) Then
                Session("XDatos").CurrentPageIndex = Session("XDatos").CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Private Sub Datos_Responsable_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsable.EditCommand
        Editar(source, e)
    End Sub
    Private Sub Datos_Responsable_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsable.CancelCommand
        Cancelar(Datos_Responsable)
    End Sub
    Private Sub Datos_Responsable_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsable.UpdateCommand
        Session("XDatos") = Datos_Responsable
        Update(source, e)
    End Sub
    Private Sub Datos_Responsable_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsable.ItemCommand
        Pinchar_Cabecera(source, e)
    End Sub
    Private Sub Datos_Responsable_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsable.DeleteCommand
        Session("XDatos") = Datos_Responsable
        Try
            Campos(0) = Session("XDatos").DataKeyField
            Valores(0) = Session("XDatos").Items(e.Item.ItemIndex).Cells(3).Text()
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "=" & Valores(0), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " = " & Valores(0) & " - Mensaje de Error : " & ex.Message
        Finally

            If (Session("XDatos").Items.Count = 1) And (Session("XDatos").CurrentPageIndex > 0) Then
                Session("XDatos").CurrentPageIndex = Session("XDatos").CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub



    Sub Actualiza_DataSet()
        Sql1.ConnectionString = Session("XConexionString2")
        Sql2.ConnectionString = Session("XConexionString2")
        Sql3.ConnectionString = Session("XConexionString2")
        Sql4.ConnectionString = Session("XConexionString2")
        Dim dsx As New DataSet()

        Cadena = "SELECT * FROM " & Session("XTabla")
        If Trim(Buscar.Text) <> "" Then
            Cadena = Cadena & " WHERE " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        End If
        dsx.Clear()


        Dim dax As New SqlClient.SqlDataAdapter(Cadena, conexion)

        dax.Fill(dsx, Session("XTabla"))
        Session("Xdax") = dax
        Session("Xdsx") = dsx
        Select Case Session("XTabla")
            Case "dbo.Sociedades"
                Datos_Sociedades.DataSource = dsx
                Datos_Sociedades.DataBind()
                Datos_Sociedades.DataKeyField = dsx.Tables(0).Columns(0).ColumnName
            Case "dbo.codigo_responsable"
                Datos_Responsable.DataSource = dsx
                Datos_Responsable.DataBind()
                Datos_Responsable.DataKeyField = dsx.Tables(0).Columns(0).ColumnName
            Case Else
                Datos.DataSource = dsx
                Datos.DataBind()
                Datos.DataKeyField = dsx.Tables(0).Columns(0).ColumnName
        End Select
        CAMPO.Text = dsx.Tables(0).Columns(0).ColumnName


    End Sub






    Protected Sub Datos_Sociedades_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Sociedades.SelectedIndexChanged
    End Sub





    'PROCEDIMIENTOS *******************************************************************'
    Private Sub Update(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        Dim I As Integer
        Dim CajaTexto As TextBox
        Dim Array_Nuevos(e.Item.Cells.Count - 1) As String
        'Se quitan 2 de los 2 botones iniciales
        Session("Xdsx").Tables(0).Columns(0).ReadOnly = False

        If Session("XDatos").id = "Datos_Sociedades" Then
            For I = 2 To e.Item.Cells.Count - 1
                If I < 10 Then
                    CajaTexto = e.Item.Cells(I).Controls(0)
                    Array_Nuevos(I - 2) = CajaTexto.Text
                End If
            Next
            Dim zz As New DropDownList
            zz = e.Item.Cells(10).FindControl("DropDownlist1")
            Array_Nuevos(10 - 2) = zz.Text
            zz = e.Item.Cells(11).FindControl("DropDownlist2")
            Array_Nuevos(11 - 2) = zz.Text
            zz = e.Item.Cells(12).FindControl("DropDownlist3")
            Array_Nuevos(12 - 2) = zz.Text
            CajaTexto = e.Item.Cells(13).Controls(0)
            Array_Nuevos(13 - 2) = CajaTexto.Text
        End If

        If Session("XDatos").id = "Datos" Then
            For I = 2 To e.Item.Cells.Count - 1
                CajaTexto = e.Item.Cells(I).Controls(0)
                Array_Nuevos(I - 2) = CajaTexto.Text
            Next
        End If

        'Verificar mcg'
        If Session("XDatos").id = "Datos_Responsable" Then
            For I = 3 To e.Item.Cells.Count - 2
                CajaTexto = e.Item.Cells(I).Controls(0)
                Array_Nuevos(I - 3) = CajaTexto.Text
            Next
            Dim zz As New DropDownList
            zz = e.Item.Cells(9).FindControl("DropDownlist1")
            Array_Nuevos(9 - 3) = zz.Text
        End If



        ReDim Campos(10), Valores(10)
        Try
            If Session("Status") = "Editar" Then
                Campos(0) = Session("XDatos").DataKeyField
                Select Case Session("XTabla")
                    Case "dbo.Sociedades"
                        Valores(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
                    Case "dbo.codigo_responsable"
                        Valores(0) = CType(e.Item.Cells(3).Controls(0), TextBox).Text
                    Case Else
                        Valores(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
                End Select
            End If

            Session("Xdsx").Tables(0).Columns(0).ReadOnly = False
            Graba(Session("Status"), Array_Nuevos, Campos, Valores)
        Catch ex As Exception
            If Session("Status") = "Editar" Then
                MensajeError.Text = "Error al Actualizar Registro " & Valores(0) & Trim(Valores(1)) & " en la Tabla " & Session("XTabla") & " - Mensaje de Error : " & ex.Message
            Else
                MensajeError.Text = "Error al Insertar en la Tabla " & Session("XTabla") & " - Mensaje de Error : " & ex.Message
            End If
        Finally

            Select Case Session("XTabla")
                Case "dbo.Sociedades"
                    Datos_Sociedades.EditItemIndex = -1
                Case "dbo.codigo_responsable"
                    Datos_Responsable.EditItemIndex = -1
                Case Else
                    Datos.EditItemIndex = -1
            End Select
            Actualiza_DataSet()
            Session("Status") = ""
        End Try
    End Sub

    Sub Graba(ByVal Tipo_Grabacion As String, ByVal Array_Nuevos() As String, ByVal Campos() As String, ByVal Valores() As String)
        Dim I As Integer
        Dim Ejecutar As New Data.SqlClient.SqlDataAdapter()
        Dim Nombre_Parametro, Nombre_Campo As String


        Select Case Tipo_Grabacion
            Case "Insertar"
                Cadena = "INSERT INTO " & Session("XTabla") & " ( "
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Cadena = Cadena & Session("Xdsx").Tables(0).Columns(I).ColumnName
                    If I <> Session("Xdsx").Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    Else
                        Cadena = Cadena & " ) "
                    End If
                Next
                Cadena = Cadena & " VALUES ( "
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx").Tables(0).Columns(I).ColumnName
                    Cadena = Cadena & "@" & Nombre_Campo
                    If I <> Session("Xdsx").Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    End If
                Next
                Cadena = Cadena & " ) "
                Dim ComandoInsert As New Data.SqlClient.SqlCommand(Cadena, conexion)
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx").Tables(0).Columns(I).ColumnName
                    ComandoInsert.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)
                    ComandoInsert.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                Next
                Ejecutar.InsertCommand = ComandoInsert

                Ejecutar.InsertCommand.ExecuteNonQuery()

            Case "Editar"
                Cadena = "UPDATE " & Session("XTabla") & " SET "
                'A 1 para que no coja en el set el primer campo que esta readonly y protegido
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Cadena = Cadena & Session("Xdsx").Tables(0).Columns(I).ColumnName & " = @" & Session("Xdsx").Tables(0).Columns(I).ColumnName
                    If I <> Session("Xdsx").Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    End If
                    Nombre_Parametro = "@" & Session("Xdsx").Tables(0).Columns(I).ColumnName
                    Nombre_Campo = Session("Xdsx").Tables(0).Columns(I).ColumnName
                Next
                Dim Comando As New Data.SqlClient.SqlCommand(Cadena, conexion)
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx").Tables(0).Columns(I).ColumnName
                    Comando.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)
                    Comando.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I) 'Nuevos Parametros'
                Next

                'MCG'
                Cadena = Cadena & " WHERE "
                For I = 0 To Campos.Length - 1
                    If (I <> 0) And (Trim(Valores(I)) <> "") Then Cadena = Cadena & " AND "
                    If (Trim(Valores(I)) <> "") Then Cadena = Cadena & Campos(I) & " = " & "'" & Trim(Valores(I)) & "'"
                Next

                Dim ComandoUpdate As New Data.SqlClient.SqlCommand(Cadena, conexion)
                For I = 0 To Session("Xdsx").Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx").Tables(0).Columns(I).ColumnName
                    ComandoUpdate.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)
                    ComandoUpdate.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                Next
                Ejecutar.UpdateCommand = ComandoUpdate

                Session("Xdsx").Tables(0).Columns(0).ReadOnly = False
                Ejecutar.UpdateCommand.ExecuteNonQuery()
        End Select
    End Sub


    Sub Borra(ByVal Campos() As String, ByVal Valores() As String)
        Dim I As Integer
        Session("Xdsx").Tables(0).Columns(0).ReadOnly = False
        Dim Ejecutar As New Data.SqlClient.SqlDataAdapter()

        Cadena = "DELETE FROM " & Session("XTabla")
        Cadena = Cadena & " WHERE "
        For I = 0 To Campos.Length - 1
            If (I <> 0) And (Trim(Valores(I)) <> "") Then Cadena = Cadena & " AND "
            If (Trim(Valores(I)) <> "") Then Cadena = Cadena & Campos(I) & " = " & "'" & Trim(Valores(I)) & "'"
        Next
        Dim ComandoDelete As New Data.SqlClient.SqlCommand(Cadena, conexion)
        Ejecutar.DeleteCommand = ComandoDelete

        Ejecutar.DeleteCommand.ExecuteNonQuery()
    End Sub


    Sub Cancelar(ByVal nombre As DataGrid)
        Select Case Session("XTabla")
            Case "dbo.Sociedades"
                Datos_Sociedades.EditItemIndex = -1
                Session("Status") = ""
                If (Datos_Sociedades.Items.Count = 1) And (Datos_Sociedades.CurrentPageIndex > 0) Then
                    Datos_Sociedades.CurrentPageIndex = Datos_Sociedades.CurrentPageIndex - 1
                End If
            Case "dbo.codigo_responsable"
                Datos_Responsable.EditItemIndex = -1
                Session("Status") = ""
                If (Datos_Responsable.Items.Count = 1) And (Datos_Responsable.CurrentPageIndex > 0) Then
                    Datos_Responsable.CurrentPageIndex = Datos_Responsable.CurrentPageIndex - 1
                End If
            Case Else
                Datos.EditItemIndex = -1
                Session("Status") = ""
                If (Datos.Items.Count = 1) And (Datos.CurrentPageIndex > 0) Then
                    Datos.CurrentPageIndex = Datos.CurrentPageIndex - 1
                End If
        End Select

        Actualiza_DataSet()
    End Sub
    Sub Pinchar_Cabecera(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        If e.CommandArgument <> "" Then
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO.Text = e.CommandArgument
        End If
        MensajeError.Text = ""
    End Sub

    Sub Editar(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        MensajeError.Text = ""
        If Session("Status") = "Insertar" Then
            MensajeError.Text = "Antes de Editar cancele el MODO INSERCION"
            Session("Status") = ""
            Session("XArray_Antiguos") = ""
        Else
            Session("Status") = "Editar"
            Select Case Session("XTabla")
                Case "dbo.Sociedades"
                    Datos_Sociedades.EditItemIndex = e.Item.ItemIndex
                Case "dbo.codigo_responsable"
                    Datos_Responsable.EditItemIndex = e.Item.ItemIndex
                Case Else
                    Datos.EditItemIndex = e.Item.ItemIndex
            End Select
            Actualiza_DataSet()
        End If
    End Sub
    'MCG'
    Protected Sub Insertar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar.Click
        MensajeError.Text = ""
        If Session("Status") = "Editar" Then
            MensajeError.Text = "Antes de Insertar cancele el MODO EDICION"
        End If
        If Session("Status") = "Insertar" Then
            MensajeError.Text = "Ya esta en MODO INSERCION"
        End If
        If MensajeError.Text = "" Then
            Actualiza_DataSet()
            Session("Status") = "Insertar"
            Dim Dr As DataRow
            Dr = Session("Xdsx").Tables(0).NewRow
            Session("Xdsx").Tables(0).Rows.Add(Dr)
            If Session("Xdsx").Tables(0).Columns(0).DataType.ToString() = "System.Int16" Then
                Dim Comando As New SqlClient.SqlCommand
                Comando.Connection = conexion
                Cadena = "SELECT MAX( " & Session("Xdsx").Tables(0).Columns(0).ColumnName() & " )FROM " & Session("XTabla")

                Dim Total As Integer
                Comando.CommandText = Cadena
                If IsDBNull(Comando.ExecuteScalar()) Then Total = 0 Else Total = Comando.ExecuteScalar()

                Dr.Item(Session("Xdsx").Tables(0).Columns(0).ColumnName()) = Total + 1
            End If
            Select Case Session("XTabla")
                Case "dbo.Sociedades"
                    If (Session("Xdsx").Tables(0).Rows.Count()) - (Datos_Sociedades.PageCount * 10) = 1 Then
                        Datos_Sociedades.CurrentPageIndex = Datos_Sociedades.CurrentPageIndex + 1
                    Else
                        Datos_Sociedades.CurrentPageIndex = Datos_Sociedades.PageCount - 1
                    End If
                    Datos_Sociedades.DataSource = Session("Xdsx")
                    Datos_Sociedades.EditItemIndex = Session("Xdsx").Tables(0).Rows.Count - 1 - (Datos_Sociedades.CurrentPageIndex * 10)
                    Dr.Item("TIPO_LOCALIDAD") = 1
                    Dr.Item("TIPO_PROVINCIA") = 1
                    Dr.Item("TIPO_PAIS") = 1
                    Datos_Sociedades.DataBind()
                Case "dbo.codigo_responsable"
                    If (Session("Xdsx").Tables(0).Rows.Count()) - (Datos_Responsable.PageCount * 10) = 1 Then
                        Datos_Responsable.CurrentPageIndex = Datos_Responsable.CurrentPageIndex + 1
                    Else
                        Datos_Responsable.CurrentPageIndex = Datos_Responsable.PageCount - 1
                    End If
                    Datos_Responsable.DataSource = Session("Xdsx")
                    Datos_Responsable.EditItemIndex = Session("Xdsx").Tables(0).Rows.Count - 1 - (Datos_Responsable.CurrentPageIndex * 10)
                    Dr.Item("TIPO_RESPONSABLE") = 1
                    Datos_Responsable.DataBind()
                Case Else
                    If (Session("Xdsx").Tables(0).Rows.Count()) - (Datos.PageCount * 10) = 1 Then
                        Datos.CurrentPageIndex = Datos.CurrentPageIndex + 1
                    Else
                        Datos.CurrentPageIndex = Datos.PageCount - 1
                    End If
                    Datos.DataSource = Session("Xdsx")
                    Datos.EditItemIndex = Session("Xdsx").Tables(0).Rows.Count - 1 - (Datos.CurrentPageIndex * 10)
                    Datos.DataBind()
            End Select
            'CAMPO.Text = Session("Xdsx").Tables(0).Columns(0).ColumnName
        End If
    End Sub

    Protected Sub Datos_Responsable_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Responsable.SelectedIndexChanged

    End Sub


    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_DataBinding1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub SqlDataSource2_Inserting(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceCommandEventArgs)

    End Sub

    Protected Sub DropDownList1_DataBinding2(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub DropDownList3_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Responsable_ItemCreated(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_ItemCreated(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)

    End Sub

    Protected Sub Datos_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub Datos_ItemDataBound1(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos.ItemDataBound
        'Se permite cambiar el número propuesto si se desea
        'e.Item.Cells(2).Enabled = False
        e.Item.Cells(2).Width = 20
        If Session("Xdsx").Tables(0).Columns(0).DataType.ToString() = "System.String" Then
            If Session("Status") = "Insertar" Then
                e.Item.Cells(2).Enabled = True
            End If
        End If
        e.Item.Font.Name = "Arial"
        e.Item.Font.Size = 8
    End Sub

    Protected Sub Datos_ItemCreated1(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos.ItemCreated

    End Sub

    Protected Sub Datos_Responsable_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Responsable.ItemDataBound
        Dim Pos As Integer
        If Menu2.SelectedItem.Text = "Responsables" Then
            e.Item.Cells(0).Visible = False
            e.Item.Cells(7).Visible = False
            e.Item.Cells(8).Visible = False
        Else
            e.Item.Cells(0).Visible = True
            e.Item.Cells(7).Visible = True
            e.Item.Cells(8).Visible = True
        End If
        Pos = 3

        'e.Item.Cells(Pos).Enabled = False
        e.Item.Cells(Pos).Width = 20
        If Session("Xdsx").Tables(0).Columns(0).DataType.ToString() = "System.String" Then
            If Session("Status") = "Insertar" Then
                e.Item.Cells(Pos).Enabled = True
            End If
        End If
        e.Item.Font.Name = "Arial"
        e.Item.Font.Size = 8
    End Sub

    Protected Sub Datos_Sociedades_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Sociedades.ItemDataBound
        'e.Item.Cells(2).Enabled = False
        e.Item.Cells(2).Width = 20
        If Session("Xdsx").Tables(0).Columns(0).DataType.ToString() = "System.String" Then
            If Session("Status") = "Insertar" Then
                e.Item.Cells(2).Enabled = True
            End If
        End If
        e.Item.Font.Name = "Arial"
        e.Item.Font.Size = 8
    End Sub

    Protected Sub Datos_Sociedades_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Sociedades.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Responsable_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Responsable.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Menu2_Disposed(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub



    Protected Sub Ajusta_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos.PreRender, Datos_Sociedades.PreRender, Datos_Responsable.PreRender
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

    Protected Sub Message2_DataBinding(sender As Object, e As EventArgs) Handles Message2.DataBinding

    End Sub

    Protected Sub Datos_Sociedades_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Sociedades.Init



    End Sub

    Private Sub Menu2_MenuItemDataBound(sender As Object, e As MenuEventArgs) Handles Menu2.MenuItemDataBound

    End Sub

    Protected Sub B_1_Menu_Click(sender As Object, e As EventArgs) Handles B_1_Menu.Click
        Response.Write("<script language='javascript'>window.opener = self;window.close();</script>")
    End Sub

    Private Sub Menu2_Load(sender As Object, e As EventArgs) Handles Menu2.Load

        If Session("TResponsable") = -1 Then
            Menu2.Items(3).Enabled = True
            Menu2.Items(4).Enabled = True
        Else
            Menu2.Items(3).Enabled = False
            Menu2.Items(4).Enabled = False
        End If
    End Sub

    Protected Sub Menu2_MenuItemClick(sender As Object, e As EventArgs) Handles Menu2.DataBinding
        'Panel_Mantenimientos.Visible = False
    End Sub

    Private Sub Panel_Mantenimientos_Load(sender As Object, e As EventArgs) Handles Panel_Mantenimientos.Load
        'Panel_Mantenimientos.Visible = False
    End Sub
End Class