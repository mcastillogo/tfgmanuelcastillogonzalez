
Partial Public Class DetalleFicha

    Inherits System.Web.UI.Page
    Public Conexion As New SqlClient.SqlConnection
    Public Cadena As String
    Public Tabla As String
    Public Campos(10), Valores(10) As String
    Public XDataSet(8) As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource0.ConnectionString = Session("XConexionString")
        SqlDataSource1.ConnectionString = Session("XConexionString")
        SqlDataSource2.ConnectionString = Session("XConexionString")
        SqlDataSource3.ConnectionString = Session("XConexionString")
        SqlDataSource4.ConnectionString = Session("XConexionString")
        SqlDataSource5.ConnectionString = Session("XConexionString")
        SqlDataSource6.ConnectionString = Session("XConexionString")
        Sql7.ConnectionString = Session("XConexionString")
        Sql8.ConnectionString = Session("XConexionString")
        Sql9.ConnectionString = Session("XConexionString")
        Sql10.ConnectionString = Session("XConexionString")
        Sql11.ConnectionString = Session("XConexionString")
        Sql12.ConnectionString = Session("XConexionString")
        Sql13.ConnectionString = Session("XConexionString")
        Sql14.ConnectionString = Session("XConexionString")
        Sql15.ConnectionString = Session("XConexionString")
        Conexion = Session("XConexion")
        If Not Page.IsPostBack Then
            Session("Xdsx") = XDataSet
            Select Case Session("XDetalle")
                Case 1
                    P_Datos_Economicos.Visible = True
                    Cabecera.Text = "Datos Económicos"
                Case 2
                    P_Datos_Uso.Visible = True
                    Cabecera.Text = "Datos Uso"
                Case 3
                    P_Datos_Tipologia.Visible = True
                    Cabecera.Text = "Datos Tipología"
                Case 4
                    P_Datos_Uso_Urbanistico.Visible = True
                    Cabecera.Text = "Datos Uso Urbanístico"
                Case 5
                    P_Datos_Estado.Visible = True
                    Cabecera.Text = "Datos Estado"
                Case 6
                    P_Datos_Responsable.Visible = True
                    Cabecera.Text = "Información Responsables"
                Case 7
                    P_Datos_Documentacion.Visible = True
                    Cabecera.Text = "Datos Documentación"
            End Select
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
        End If

    End Sub

    Sub Actualiza_DataSet(ByVal Indice As Integer, ByVal Sociedad As String, ByVal Codigo As Integer)
        Select Case Indice
            Case 1 : Actualiza_DataSet_1(Sociedad, Codigo)
            Case 2 : Actualiza_DataSet_2(Sociedad, Codigo)
            Case 3 : Actualiza_DataSet_3(Sociedad, Codigo)
            Case 4 : Actualiza_DataSet_4(Sociedad, Codigo)
            Case 5 : Actualiza_DataSet_5(Sociedad, Codigo)
            Case 6
                Actualiza_DataSet_6(Sociedad)
                Try
                    Actualiza_DataSet_66(Sociedad, Datos_Responsables.Items(0).Cells(2).Text())
                Catch
                    Actualiza_DataSet_66(Sociedad, 99999)
                End Try
            Case 7 : Actualiza_DataSet_7(Sociedad, Codigo)
        End Select
    End Sub

    Sub Actualiza_DataSet_1(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx1 As New DataSet()


        Session("XTabla") = "dbo.ELEMENTOS_DATOS_ECONOMICOS"
        Cadena = " SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & "  AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx1.Clear()


        Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)

        dax1.Fill(dsx1, Session("XTabla"))
        Datos_Economicos.DataSource = dsx1
        Datos_Economicos.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName



        Session("Xdsx")(1) = dsx1
        Datos_Economicos.DataBind()
    End Sub

    Sub Actualiza_DataSet_2(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx2 As New DataSet()

        Session("XTabla") = "dbo.ELEMENTOS_DATOS_USO"
        Cadena = "SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & " AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx2.Clear()


        Dim dax2 As New SqlClient.SqlDataAdapter(Cadena, Conexion)

        dax2.Fill(dsx2, Session("XTabla"))
        Datos_Uso.DataSource = dsx2
        Datos_Uso.DataKeyField = dsx2.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(2) = dsx2
        Datos_Uso.DataBind()
    End Sub

    Sub Actualiza_DataSet_3(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx3 As New DataSet()


        Session("XTabla") = "dbo.ELEMENTOS_TIPOLOGIA"
        Cadena = "SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & " AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx3.Clear()

        Dim dax3 As New SqlClient.SqlDataAdapter(Cadena, Conexion)

        dax3.Fill(dsx3, Session("XTabla"))
        Datos_Tipologia.DataSource = dsx3
        Datos_Tipologia.DataKeyField = dsx3.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(3) = dsx3
        Datos_Tipologia.DataBind()
    End Sub

    Sub Actualiza_DataSet_4(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx4 As New DataSet()

        Session("XTabla") = "dbo.ELEMENTOS_USO_URBANISTICO"
        Cadena = "SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & " AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx4.Clear()


        Dim dax4 As New SqlClient.SqlDataAdapter(Cadena, Conexion)

        dax4.Fill(dsx4, Session("XTabla"))
        Datos_Uso_Urbanistico.DataSource = dsx4
        Datos_Uso_Urbanistico.DataKeyField = dsx4.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(4) = dsx4
        Datos_Uso_Urbanistico.DataBind()
    End Sub

    Sub Actualiza_DataSet_5(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx5 As New DataSet()


        Session("XTabla") = "dbo.ELEMENTOS_ESTADO"
        Cadena = "SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & " AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx5.Clear()


        Dim dax5 As New SqlClient.SqlDataAdapter(Cadena, conexion)

        dax5.Fill(dsx5, Session("XTabla"))
        Datos_Estado.DataSource = dsx5
        Datos_Estado.DataKeyField = dsx5.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(5) = dsx5
        Datos_Estado.DataBind()
    End Sub



    Sub Actualiza_DataSet_6(ByVal Sociedad As String)
        Dim dsx6 As New DataSet()


        Cadena = "SELECT DISTINCT SOCIEDAD,CODIGO_RESPONSABLE,APELLIDO_1,APELLIDO_2,NOMBRE,TIPO_ESTADO,TIPO_RESPONSABLE FROM dbo.Seleccion_Sociedad_Responsable_Datos WHERE SOCIEDAD = " & "'" & Sociedad & "'"
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx6.Clear()


        Dim dax6 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax6.Fill(dsx6, "dbo.Seleccion_Sociedad_Responsable_Datos")
        Datos_Responsables.DataSource = dsx6
        Datos_Responsables.DataKeyField = dsx6.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(6) = dsx6
        Datos_Responsables.SelectedIndex = 0
        Datos_Responsables.DataBind()
    End Sub
    Sub Actualiza_DataSet_66(ByVal Sociedad As String, ByVal Codigo_Responsable As String)
        Dim dsx66 As New DataSet()


        Cadena = "SELECT DISTINCT DESCRIPCION,VALOR_DATO FROM dbo.Seleccion_Sociedad_Responsable_Datos WHERE SOCIEDAD = " & "'" & Sociedad & "' AND CODIGO_RESPONSABLE = " & Codigo_Responsable
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx66.Clear()
        Dim dax66 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax66.Fill(dsx66, "dbo.Seleccion_Sociedad_Responsable_Datos")
        Datos_Responsables_Detalle.DataSource = dsx66
        Datos_Responsables_Detalle.DataKeyField = dsx66.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(0) = dsx66
        Datos_Responsables_Detalle.DataBind()
    End Sub
    Sub Actualiza_DataSet_7(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx7 As New DataSet()


        Session("XTabla") = "dbo.ELEMENTOS_DOCUMENTACION"
        Cadena = "SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & " AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx7.Clear()
        Dim dax7 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax7.Fill(dsx7, Session("XTabla"))
        Datos_Documentacion.DataSource = dsx7
        Datos_Documentacion.DataKeyField = dsx7.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(7) = dsx7
        Datos_Documentacion.DataBind()
    End Sub


    Protected Sub B_1_Inmuebles_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Inmuebles.Click
        Response.Redirect("/FichaInmueble.aspx")
    End Sub

    Protected Sub Inserta_Registro_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Inserta_Registro.Click
        Dim Registros, Numero_Lineas As Integer
        MensajeError.Text = ""
        If Session("Status") = "Editar" Then
            MensajeError.Text = "Antes de Insertar cancele el MODO EDICION"
        End If
        If Session("Status") = "Insertar" Then
            MensajeError.Text = "Ya esta en MODO INSERCION"
        End If
        If MensajeError.Text = "" Then
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
            Session("Status") = "Insertar"
            Dim Dr As DataRow

            Dr = Session("Xdsx")(Session("XDetalle")).Tables(0).NewRow
            Dr.Item("SOCIEDAD") = Session("BSociedad")
            Dr.Item("CODIGO") = Session("BCodigo")
            'Inicio Generar Autonumérico-------------------------------------------------------------'
            Dim Comando As New SqlClient.SqlCommand
            Comando.Connection = conexion
            Cadena = "SELECT MAX(ID) FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Session("BSociedad") & "'"


            Dim Total As Integer
            Comando.CommandText = Cadena
            If IsDBNull(Comando.ExecuteScalar()) Then Total = 0 Else Total = Comando.ExecuteScalar()

            Dr.Item("ID") = Total + 1
            'Fin Generar Autonumérico---------------------------------------------------------------'

            Session("Xdsx")(Session("XDetalle")).Tables(0).Rows.Add(Dr)

            'Posicionamiento------------------------------------------------------------------------'
            Dim Grid As DataGrid
            Select Case Session("XDetalle")
                Case 1
                    Grid = sender.FindControl("Datos_Economicos")
                    Dr.Item("TIPO_CARGA") = 0
                    Dr.Item("TIPO_ENTIDAD_TASADORA") = 0
                Case 2 : Grid = sender.FindControl("Datos_Uso")
                    Dr.Item("CONTRATO") = False
                Case 3 : Grid = sender.FindControl("Datos_Tipologia")
                    Dr.Item("EDIFICACION_LEGALIZADA") = False
                Case 4 : Grid = sender.FindControl("Datos_Uso_Urbanistico")
                Case 5 : Grid = sender.FindControl("Datos_Estado")
                Case 6 : Grid = sender.FindControl("Datos_Responsable")
                Case 7
                    Grid = sender.FindControl("Datos_Documentacion")
                    AR.Enabled = True
                    CFichero.Enabled = True
                    Session("Path") = ""
            End Select

            Numero_Lineas = 5
            Registros = Session("Xdsx")(Session("XDetalle")).Tables(0).Rows.Count() - 1
            If Registros - (Grid.PageCount * Numero_Lineas) = 0 Then
                Grid.CurrentPageIndex = Grid.PageCount
            Else
                Grid.CurrentPageIndex = Grid.PageCount - 1
            End If
            Grid.DataSource = Session("Xdsx")(Session("XDetalle"))
            If Registros - ((Grid.PageCount * Numero_Lineas)) < 0 Then
                Grid.EditItemIndex = Registros - ((Grid.PageCount - 1) * Numero_Lineas)
            Else
                Grid.EditItemIndex = Registros - ((Grid.PageCount * Numero_Lineas))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Grid.DataBind()
        End If
    End Sub

    Protected Sub FElemento_PageIndexChanging(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FElemento_Cabecera.PageIndexChanging

    End Sub

    Protected Sub Boton_Buscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Boton_Buscar.Click
        MensajeError.Text = ""
        Select Case Session("XDetalle")
            Case 1 : sender.FindControl("Datos_Economicos").currentpageindex = 0
            Case 2 : sender.FindControl("Datos_Uso").currentpageindex = 0
            Case 3 : sender.FindControl("Datos_Tipologia").currentpageindex = 0
            Case 4 : sender.FindControl("Datos_Uso_Urbanistico").currentpageindex = 0
            Case 5 : sender.FindControl("Datos_Estado").currentpageindex = 0
            Case 6
                Datos_Responsables_Detalle.CurrentPageIndex = 0
                sender.FindControl("Datos_Responsables").currentpageindex = 0
            Case 7 : sender.FindControl("Datos_Documentacion").currentpageindex = 0
        End Select
        Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub P_Datos_Economicos_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
        sender.CurrentPageIndex() = sender.NewPageIndex()
        sender.SelectedIndex = 0
        Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub
    'MCG



    Protected Sub ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Economicos.ItemCommand, Datos_Economicos.ItemCommand, Datos_Uso.ItemCommand, Datos_Uso_Urbanistico.ItemCommand, Datos_Tipologia.ItemCommand, Datos_Estado.ItemCommand, Datos_Responsables.ItemCommand, Datos_Documentacion.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            'source.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
            If source.id = "Datos_Responsables" Then
                Actualiza_DataSet_66(Session("BSociedad"), source.Items(e.Item.ItemIndex).Cells(2).Text())
            End If
            If (source.id = "Datos_Documentacion") And (Session("Status") <> "Editar") And (Session("Status") <> "Insertar") Then

                Dim Texto As String
                Texto = source.Items(e.Item.ItemIndex).Cells(9).Text()
                If Texto <> "" Then

                    Dim path As String = Server.MapPath("~\Documentacion\")
                    Dim camino As String = path & Texto

                    Try
                        System.Diagnostics.Process.Start("IExplore", camino)
                    Catch ex As Exception
                        Console.WriteLine(ex.Message)
                        MensajeError.Text = "No se encuentra el fichero o este no se puede abrir con el navegador"
                    End Try
                Else
                    MensajeError.Text = " No se ha recuperado la información del fichero"
                End If
            End If
        End If
    End Sub




    Public Sub Execute(ByVal exeName As String)
        CreateProcess(exeName, "", 0, 0, 0, 0, 0, 0, 0, 0)
    End Sub

    Private Function CreateProcess(
    ByVal imageName As String,
    ByVal cmdLine As String,
    ByVal lpProcessAttributes As Integer,
    ByVal lpThreadAttributes As Integer,
    ByVal boolInheritHandles As Int32,
    ByVal dwCreationFlags As Int32,
    ByVal lpEnvironment As Integer,
    ByVal lpszCurrentDir As Integer,
    ByVal si As Integer,
    ByVal pi As Integer) As Integer
    End Function



    Sub Pinchar_Cabecera(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        If e.CommandArgument <> "" Then
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO.Text = e.CommandArgument
        End If
        MensajeError.Text = ""
    End Sub

    Protected Sub CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Economicos.CancelCommand, Datos_Uso.CancelCommand, Datos_Uso_Urbanistico.CancelCommand, Datos_Tipologia.CancelCommand, Datos_Estado.CancelCommand, Datos_Responsables.CancelCommand, Datos_Documentacion.CancelCommand
        Cancelar(source, e)
        If source.id = "Datos_Documentacion" Then
            AR.Enabled = False
            CFichero.Enabled = False
            Session("Path") = ""
        End If
    End Sub
    Sub Cancelar(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        source.EditItemIndex = -1
        Session("Status") = ""
        If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
            source.CurrentPageIndex = source.CurrentPageIndex - 1
        End If
        Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Economicos.DeleteCommand, Datos_Uso.DeleteCommand, Datos_Uso_Urbanistico.DeleteCommand, Datos_Tipologia.DeleteCommand, Datos_Estado.DeleteCommand, Datos_Responsables.DeleteCommand, Datos_Documentacion.DeleteCommand
        Dim i As Integer
        Dim TextoCampo, TextoValor As String
        TextoCampo = ""
        TextoValor = ""
        Try
            For i = 0 To 2
                Campos(i) = Session("Xdsx")(Session("XDetalle")).Tables(0).Columns(i).ColumnName
                TextoCampo = TextoCampo & " " & Session("Xdsx")(Session("XDetalle")).Tables(0).Columns(i).ColumnName
                Valores(i) = source.Items(e.Item.ItemIndex).Cells(i + 2).Text()
                TextoValor = TextoValor & " " & source.Items(e.Item.ItemIndex).Cells(i + 2).Text()
            Next
            'Se quita msgbox ya que desde el servidor no va, no se despliega el mensaje en el cliente
            'el problema es que tiene que haber aceptación con lo que un alert tampoco valdría.
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & TextoCampo & "=" & TextoValor, MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, Session("XDetalle"))
            If source.id = "Datos_Documentacion" Then
                Dim Texto As String
                Texto = source.Items(e.Item.ItemIndex).Cells(9).Text()
                If Texto <> "" Then
                    Dim path As String = Server.MapPath("~\Documentacion\")
                    Dim camino As String = path & Texto
                    My.Computer.FileSystem.DeleteFile(camino)
                End If
            End If
            'End If


        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & TextoCampo & "=" & TextoValor & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
        End Try
    End Sub

    Sub Borra(ByVal Campos() As String, ByVal Valores() As String, ByVal Indice As Integer)
        Dim I As Integer
        Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
        Dim Ejecutar As New Data.SqlClient.SqlDataAdapter()

        Cadena = "DELETE FROM " & Session("Xdsx")(Indice).Tables(0).TableName
        Cadena = Cadena & " WHERE "
        For I = 0 To Campos.Length - 1
            If (I <> 0) And (Trim(Valores(I)) <> "") Then Cadena = Cadena & " AND "
            If (Trim(Valores(I)) <> "") Then Cadena = Cadena & Campos(I) & " = " & "'" & Trim(Valores(I)) & "'"
        Next
        Dim ComandoDelete As New Data.SqlClient.SqlCommand(Cadena, conexion)
        Ejecutar.DeleteCommand = ComandoDelete

        Ejecutar.DeleteCommand.ExecuteNonQuery()
    End Sub

    Protected Sub EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Economicos.EditCommand, Datos_Uso.EditCommand, Datos_Uso_Urbanistico.EditCommand, Datos_Tipologia.EditCommand, Datos_Estado.EditCommand, Datos_Responsables.EditCommand, Datos_Documentacion.EditCommand
        If source.id = "Datos_Documentacion" Then
            AR.Enabled = True
            CFichero.Enabled = True
            Session("Path") = NombreFichero
        End If
        Editar(source, e)
    End Sub

    Sub Editar(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)

        MensajeError.Text = ""
        If Session("Status") = "Insertar" Then
            MensajeError.Text = "Antes de Editar cancele el MODO INSERCION"
            Session("Status") = ""
            Session("XArray_Antiguos") = ""
        Else
            Session("Status") = "Editar"
            source.EditItemIndex = e.Item.ItemIndex
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
        End If
    End Sub

    Protected Sub PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Economicos.PageIndexChanged, Datos_Uso.PageIndexChanged, Datos_Uso_Urbanistico.PageIndexChanged, Datos_Tipologia.PageIndexChanged, Datos_Estado.PageIndexChanged, Datos_Responsables.PageIndexChanged, Datos_Documentacion.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Economicos.UpdateCommand, Datos_Uso.UpdateCommand, Datos_Uso_Urbanistico.UpdateCommand, Datos_Tipologia.UpdateCommand, Datos_Estado.UpdateCommand, Datos_Responsables.UpdateCommand, Datos_Documentacion.UpdateCommand
        Update(source, e, Session("XDetalle"))
        If source.id = "Datos_Documentacion" Then
            AR.Enabled = False
            CFichero.Enabled = False
            Session("Path") = ""
        End If
    End Sub


    Private Sub Update(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs, ByVal Indice As Integer)
        Dim I As Integer
        Dim Array_Nuevos(e.Item.Cells.Count - 1), TextoCampo, TextoValor As String
        ReDim Campos(10), Valores(10)

        Try
            'Se quitan 2 de los 2 botones iniciales
            Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False



            ReDim Array_Nuevos(e.Item.Cells.Count - 1)
            TextoCampo = ""
            TextoValor = ""

            Dim Final As Integer
            Final = 3
            If source.id = "Datos_Documentacion" Then
                'Para evitar la edición del botón del final
                Final = 4
            End If

            For I = 0 To e.Item.Cells.Count - Final
                If Session("Xdsx")(Indice).Tables(0).Columns(0).DataType.ToString() = "System.String" Then
                    Try

                        Array_Nuevos(I) = Trim(CType(e.Item.Cells(I + 2).Controls(0), TextBox).Text)
                        TextoValor = TextoValor & " " & CType(e.Item.Cells(I + 2).Controls(0), TextBox).Text

                    Catch
                        Try
                            Array_Nuevos(I) = Trim(CType(e.Item.Cells(I + 2).Controls(1), DropDownList).Text)
                            TextoValor = TextoValor & " " & CType(e.Item.Cells(I + 2).Controls(1), DropDownList).Text
                        Catch
                            Array_Nuevos(I) = CType(e.Item.Cells(I + 2).Controls(1), CheckBox).Checked
                            TextoValor = TextoValor & " " & CType(e.Item.Cells(I + 2).Controls(1), CheckBox).Checked
                        End Try
                    End Try
                    '3 porque es el número de campos clave'
                    If I <= 3 Then Valores(I) = Array_Nuevos(I)
                    'CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
                    TextoCampo = TextoCampo & " " & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                End If


                If Session("Status") = "Editar" Then
                    If I <= 3 Then Campos(I) = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    'Solucionar
                    If Session("Xdsx")(Indice).Tables(0).Columns(I).DataType.ToString() = "System.Double" Then
                        Array_Nuevos(I) = Array_Nuevos(I).Replace(",", ".")
                    End If
                    'Fin Solucionar'
                End If
            Next



            Graba(Session("Status"), Array_Nuevos, Campos, Valores, Indice)
        Catch ex As Exception
            If Session("Status") = "Editar" Then
                MensajeError.Text = "Error al Actualizar los campos " & TextoCampo & "con los valores " & TextoValor & " en la Tabla " & Session("Xdsx")(Indice).Tables(0).TableName & " - Mensaje de Error : " & ex.Message
            Else
                MensajeError.Text = "Error al Insertar los campos " & TextoCampo & "con los valores " & TextoValor & " en la Tabla " & Session("Xdsx")(Indice).Tables(0).TableName & " - Mensaje de Error : " & ex.Message
            End If
        Finally

            source.EditItemIndex = -1
            If Session("Status") = "Insertar" And MensajeError.Text <> "" Then
                If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                    source.CurrentPageIndex = source.CurrentPageIndex - 1
                End If
            End If
            Actualiza_DataSet(Session("XDetalle"), Session("BSociedad"), Session("BCodigo"))
            Session("Status") = ""
        End Try
    End Sub

    Sub Graba(ByVal Tipo_Grabacion As String, ByVal Array_Nuevos() As String, ByVal Campos() As String, ByVal Valores() As String, ByVal Indice As Integer)
        Dim I As Integer
        Dim Ejecutar As New Data.SqlClient.SqlDataAdapter()
        Dim Nombre_Parametro, Nombre_Campo As String


        Select Case Tipo_Grabacion
            Case "Insertar"
                Cadena = "INSERT INTO " & Session("Xdsx")(Indice).Tables(0).TableName & " ( "
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Cadena = Cadena & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    If I <> Session("Xdsx")(Indice).Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    Else
                        Cadena = Cadena & " ) "
                    End If
                Next
                Cadena = Cadena & " VALUES ( "
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    Cadena = Cadena & "@" & Nombre_Campo
                    If I <> Session("Xdsx")(Indice).Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    End If
                Next
                Cadena = Cadena & " ) "
                Dim ComandoInsert As New Data.SqlClient.SqlCommand(Cadena, Conexion)
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    ComandoInsert.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)
                    If (Nombre_Campo = "PATH") And (Session("NombreFichero") <> "") Then
                        ComandoInsert.Parameters("@" & Nombre_Campo).Value = Session("NombreFichero")
                    Else
                        ComandoInsert.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                    End If
                Next
                Ejecutar.InsertCommand = ComandoInsert

                Ejecutar.InsertCommand.ExecuteNonQuery()

            Case "Editar"



                Cadena = "UPDATE " & Session("Xdsx")(Indice).Tables(0).TableName & " SET "
                'A 1 para que no coja en el set el primer campo que esta readonly y protegido
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Cadena = Cadena & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName & " =  (@" & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName & " )"
                    If I <> Session("Xdsx")(Indice).Tables(0).Columns.Count - 1 Then
                        Cadena = Cadena & " , "
                    End If
                    Nombre_Parametro = "@" & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                Next
                Dim Comando As New Data.SqlClient.SqlCommand(Cadena, Conexion)
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    Comando.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)
                    Comando.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I) 'Nuevos Parametros'
                Next
                Cadena = Cadena & " WHERE "
                For I = 0 To Campos.Length - 1
                    If (I <> 0) And (Trim(Valores(I)) <> "") Then Cadena = Cadena & " AND "
                    If (Trim(Valores(I)) <> "") Then Cadena = Cadena & Campos(I) & " = " & "'" & Trim(Valores(I)) & "'"
                Next


                Dim ComandoUpdate As New Data.SqlClient.SqlCommand(Cadena, Conexion)
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    ComandoUpdate.Parameters.Add("@" & Nombre_Campo, SqlDbType.NVarChar, 200, Nombre_Campo)

                    If (Nombre_Campo = "PATH") And (Session("NombreFichero") <> "") Then
                        ComandoUpdate.Parameters("@" & Nombre_Campo).Value = Session("NombreFichero")
                    Else
                        ComandoUpdate.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                    End If
                Next

                Ejecutar.UpdateCommand = ComandoUpdate

                Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
                Ejecutar.UpdateCommand.ExecuteNonQuery()
        End Select
    End Sub


    Protected Sub ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Economicos.ItemDataBound, Datos_Uso.ItemDataBound, Datos_Uso_Urbanistico.ItemDataBound, Datos_Tipologia.ItemDataBound, Datos_Estado.ItemDataBound, Datos_Responsables.ItemDataBound, Datos_Documentacion.ItemDataBound
        Dim i As Integer
        Dim a As TableCellCollection
        If sender.id <> "Datos_Responsables" Then
            e.Item.Cells(2).Width = 1
            e.Item.Cells(3).Width = 1
            e.Item.Cells(4).Width = 1
            e.Item.Cells(2).Enabled = False
            e.Item.Cells(3).Enabled = False
            e.Item.Cells(4).Enabled = False
        End If
        e.Item.Font.Name = "Arial"
        e.Item.Font.Size = 8
    End Sub

    Protected Sub D1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        CType(sender.FindControl("D2"), DropDownList).Enabled = False
        CType(sender.FindControl("D3"), DropDownList).Enabled = False
        Try
            If Trim(sender.SelectedValue) = -99 Then
                CType(sender.FindControl("D2"), DropDownList).Enabled = True
                CType(sender.FindControl("D3"), DropDownList).SelectedIndex = 0
            End If
            If Trim(sender.SelectedValue) = -98 Then
                CType(sender.FindControl("D3"), DropDownList).Enabled = True
                CType(sender.FindControl("D2"), DropDownList).SelectedIndex = 0
            End If
        Catch
            CType(sender.FindControl("D2"), DropDownList).Enabled = False
            CType(sender.FindControl("D3"), DropDownList).SelectedIndex = 0
            CType(sender.FindControl("D3"), DropDownList).Enabled = False
            CType(sender.FindControl("D2"), DropDownList).SelectedIndex = 0
        End Try
    End Sub

    Protected Sub Datos_Economicos_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Documentacion_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Documentacion.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Documentacion_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Documentacion.Load

    End Sub

    Protected Sub Inicializa_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Economicos.Init, Datos_Uso.Init, Datos_Uso_Urbanistico.Init, Datos_Tipologia.Init, Datos_Estado.Init, Datos_Responsables.Init, Datos_Documentacion.Init
        'Dim I As Integer
        sender.Columns.Item(2).Visible = False
        sender.Columns.Item(3).Visible = False
        sender.Columns.Item(4).Visible = False
        'For I = 5 To sender.Columns.count - 1
        'sender.Columns.item(I).Font.name = "Arial"
        'sender.Columns.item(I).Font.size = 8
        'Next


    End Sub

    Protected Sub Datos_Documentacion_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Documentacion.DataBinding

    End Sub


    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button1_Click1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Fichero_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub
    Public NombreFichero As String
    Protected Sub CFichero_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CFichero.Click
        Dim path As String = Server.MapPath("~\Documentacion\")
        'Dim path As String = "~\Documentacion\"
        Dim fileOK As Boolean = False

        If AR.HasFile Then
            Dim fileExtension As String
            fileExtension = System.IO.Path.
                GetExtension(AR.FileName).ToLower()
            Dim allowedExtensions As String() =
                {".jpg", ".jpeg", ".png", ".gif", ".pdf"}
            For i As Integer = 0 To allowedExtensions.Length - 1
                If fileExtension = allowedExtensions(i) Then
                    fileOK = True
                End If
            Next
            If fileOK Then
                NombreFichero = ""
                Try
                    Dim FechaRegistro As String
                    Dim Camino As String
                    FechaRegistro = Format(Date.Now, "yyyymmdd_HHmmss_fff_")
                    NombreFichero = FechaRegistro & AR.FileName
                    Camino = path & NombreFichero
                    AR.PostedFile.SaveAs(Camino)
                    MensajeError.Text = "Fichero cargado!"
                    Session("Path") = Camino
                    Session("NombreFichero") = NombreFichero

                    'Falta Actualizar registro con el Path del fichero guardado'
                Catch ex As Exception
                    MensajeError.Text = "Imposible cargar fichero"
                End Try
            Else
                MensajeError.Text = "No se aceptan ficheros de este tipo"
            End If
        End If
    End Sub



    Protected Sub Datos_Documentacion_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Uso_Urbanistico_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos_Uso_Urbanistico.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Tipologia_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Datos_Tipologia.SelectedIndexChanged

    End Sub

    Protected Sub Ajusta_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Documentacion.PreRender, Datos_Responsables.PreRender, Datos_Estado.PreRender, Datos_Tipologia.PreRender, Datos_Uso_Urbanistico.PreRender, Datos_Uso.PreRender, Datos_Economicos.PreRender
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


    Private Sub Datos_Uso_Urbanistico_Load(sender As Object, e As EventArgs) Handles Datos_Uso_Urbanistico.Load

    End Sub
End Class
