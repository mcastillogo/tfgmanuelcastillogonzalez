Public Partial Class NavInmueble
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
        Conexion = Session("XConexion")
        If Not Page.IsPostBack Then
            Session("Xdsx") = XDataSet
            Select Case Session("NvXDetalle")
                Case 1
                    Datos_Inmuebles_Relacionados.Visible = True
                    Cabecera.Text = "Inmuebles Relacionados"
                    Session("SOCI") = ""
            End Select
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
        End If
    End Sub

    Sub Actualiza_DataSet(ByVal Indice As Integer, ByVal Sociedad As String, ByVal Codigo As Integer)
        Select Case Indice
            Case 1 : Actualiza_DataSet_1(Sociedad, Codigo)
        End Select
    End Sub

    Sub Actualiza_DataSet_1(ByVal Sociedad As String, ByVal Codigo As Integer)
        Dim dsx1 As New DataSet()
        Session("XTabla") = "dbo.ELEMENTOS_RELACIONADOS"
        Cadena = " SELECT * FROM " & Session("XTabla") & " WHERE SOCIEDAD = " & "'" & Sociedad & "'" & "  AND CODIGO = " & Codigo
        If Trim(Buscar.Text) <> "" Then Cadena = Cadena & " AND " & CAMPO.Text & " LIKE '%" & Buscar.Text & "%'"
        dsx1.Clear()
        Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, Conexion)
        dax1.Fill(dsx1, Session("XTabla"))
        Datos_Inmuebles_Relacionados.DataSource = dsx1
        Datos_Inmuebles_Relacionados.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(1) = dsx1
        Datos_Inmuebles_Relacionados.DataBind()
    End Sub

    Protected Sub B_1_Inmuebles_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Inmuebles.Click
        Response.Redirect("/FichaInmueble.aspx")
    End Sub

    Protected Sub Boton_Buscar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Boton_Buscar.Click
        MensajeError.Text = ""
        Select Case Session("NvXDetalle")
            Case 1 : sender.FindControl("Datos_Inmuebles_Relacionados").currentpageindex = 0
        End Select
        Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub Datos_Inmuebles_Relacionados_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
        sender.CurrentPageIndex() = sender.NewPageIndex()
        sender.SelectedIndex = 0
        Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles_Relacionados.ItemCommand
        Pinchar_Cabecera(source, e)

        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            'source.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
        End If
    End Sub

    Sub Pinchar_Cabecera(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        If e.CommandArgument <> "" Then
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO.Text = e.CommandArgument
        End If
        MensajeError.Text = ""
    End Sub

    Protected Sub CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles_Relacionados.CancelCommand
        Cancelar(source, e)
    End Sub
    Sub Cancelar(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        source.EditItemIndex = -1
        Session("Status") = ""
        If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
            source.CurrentPageIndex = source.CurrentPageIndex - 1
        End If
        Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles_Relacionados.DeleteCommand
        Dim i As Integer
        Dim TextoCampo, TextoValor As String
        TextoCampo = ""
        Try
            For i = 0 To 3
                Campos(i) = Session("Xdsx")(Session("NvXDetalle")).Tables(0).Columns(i).ColumnName
                TextoCampo = TextoCampo & " " & Session("Xdsx")(Session("NvXDetalle")).Tables(0).Columns(i).ColumnName
                Valores(i) = source.Items(e.Item.ItemIndex).Cells(i + 2).Text()
                TextoValor = TextoValor & " " & source.Items(e.Item.ItemIndex).Cells(i + 2).Text()
            Next

            Dim zz As New DropDownList
            zz = e.Item.Cells(4).FindControl("DropDownlist1")
            Valores(2) = zz.Text
            TextoValor = TextoValor & " " & Valores(2)
            Dim zz2 As New DropDownList
            zz2 = e.Item.Cells(5).FindControl("DropDownlist2")
            Valores(3) = zz2.Text
            TextoValor = TextoValor & " " & Valores(3)



            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & TextoCampo & " = " & TextoValor, MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, Session("NvXDetalle"))
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & TextoCampo & "=" & TextoValor & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
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
        Dim ComandoDelete As New Data.SqlClient.SqlCommand(Cadena, Conexion)
        Ejecutar.DeleteCommand = ComandoDelete

        Ejecutar.DeleteCommand.ExecuteNonQuery()
    End Sub

    Protected Sub EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles_Relacionados.EditCommand
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
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
        End If
    End Sub

    Protected Sub PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Inmuebles_Relacionados.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
    End Sub

    Protected Sub UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Inmuebles_Relacionados.UpdateCommand
        Update(source, e, Session("NvXDetalle"))
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

            For I = 0 To e.Item.Cells.Count - 1 - 2
                If Session("Xdsx")(Indice).Tables(0).Columns(0).DataType.ToString() = "System.String" Then
                    Try
                        Array_Nuevos(I) = Trim(CType(e.Item.Cells(I + 2).Controls(0), TextBox).Text)
                        TextoValor = TextoValor & " " & CType(e.Item.Cells(I + 2).Controls(0), TextBox).Text
                    Catch
                        Array_Nuevos(I) = Trim(CType(e.Item.Cells(I + 2).Controls(1), DropDownList).Text)
                        TextoValor = TextoValor & " " & CType(e.Item.Cells(I + 2).Controls(1), DropDownList).Text
                    End Try
                    '3 porque es el número de campos clave'
                    If I <= 3 Then Valores(I) = Array_Nuevos(I)
                    'CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
                    Try
                        TextoCampo = TextoCampo & " " & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
                    Catch ex As Exception
                    End Try
                End If


                If Session("Status") = "Editar" Then
                    If I <= 5 Then Campos(I) = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
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
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
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
                    ComandoInsert.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                Next
                Ejecutar.InsertCommand = ComandoInsert

                Ejecutar.InsertCommand.ExecuteNonQuery()

            Case "Editar"
                Cadena = "UPDATE " & Session("Xdsx")(Indice).Tables(0).TableName & " SET "
                'A 1 para que no coja en el set el primer campo que esta readonly y protegido
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Cadena = Cadena & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName & " = @" & Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
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
                    ComandoUpdate.Parameters("@" & Nombre_Campo).Value = Array_Nuevos(I)
                Next
                Ejecutar.UpdateCommand = ComandoUpdate

                Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
                Ejecutar.UpdateCommand.ExecuteNonQuery()
        End Select
    End Sub


    Protected Sub ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Inmuebles_Relacionados.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        e.Item.Cells(3).Width = 1
        e.Item.Cells(3).Enabled = False
        e.Item.Cells(4).Enabled = False
        e.Item.Cells(5).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(4).Enabled = True
            e.Item.Cells(5).Enabled = True
        End If
    End Sub

    Protected Sub D1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        CType(sender.FindControl("D2"), DropDownList).Enabled = False
        CType(sender.FindControl("D3"), DropDownList).Enabled = False
        If Trim(sender.SelectedValue) = -99 Then
            CType(sender.FindControl("D2"), DropDownList).Enabled = True
            CType(sender.FindControl("D3"), DropDownList).SelectedIndex = 0
        End If
        If Trim(sender.SelectedValue) = -98 Then
            CType(sender.FindControl("D3"), DropDownList).Enabled = True
            CType(sender.FindControl("D2"), DropDownList).SelectedIndex = 0
        End If
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
            Actualiza_DataSet(Session("NvXDetalle"), Session("BSociedad"), Session("BCodigo"))
            Session("Status") = "Insertar"
            Dim Dr As DataRow
            Dr = Session("Xdsx")(Session("NvXDetalle")).Tables(0).NewRow
            Dr.Item("SOCIEDAD") = Session("BSociedad")
            Dr.Item("CODIGO") = Session("BCodigo")

            Session("Xdsx")(Session("NvXDetalle")).Tables(0).Rows.Add(Dr)

            'Posicionamiento------------------------------------------------------------------------'
            Dim Grid As DataGrid
            Select Case Session("NvXDetalle")
                Case 1
                    Grid = sender.FindControl("Datos_Inmuebles_Relacionados")
            End Select

            Numero_Lineas = 5
            Registros = Session("Xdsx")(Session("NvXDetalle")).Tables(0).Rows.Count() - 1
            If Registros - (Grid.PageCount * Numero_Lineas) = 0 Then
                Grid.CurrentPageIndex = Grid.PageCount
            Else
                Grid.CurrentPageIndex = Grid.PageCount - 1
            End If
            Grid.DataSource = Session("Xdsx")(Session("NvXDetalle"))
            If Registros - ((Grid.PageCount * Numero_Lineas)) < 0 Then
                Grid.EditItemIndex = Registros - ((Grid.PageCount - 1) * Numero_Lineas)
            Else
                Grid.EditItemIndex = Registros - ((Grid.PageCount * Numero_Lineas))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Grid.DataBind()
        End If
    End Sub

    Protected Sub SqlDataSource4_Selecting(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub SqlDataSource4_Selecting1(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub SqlDataSource5_Selecting(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource5.Selecting

    End Sub

    Protected Sub DropDownList1_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("SOCI") = sender.Text
    End Sub

    Protected Sub DropDownList1_DataBound1(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("SOCI") = sender.Text
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged2(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged3(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("SOCI") = sender.Text
    End Sub

    Protected Sub DropDownList1_TextChanged1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged4(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("SOCI") = sender.Text
    End Sub

    Protected Sub DropDownList1_TextChanged2(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("SOCI") = sender.Text
    End Sub

    Protected Sub DropDownList1_Init1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList1_DataBound2(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If sender.text <> "" Then
            Session("SOCI") = sender.Text
            CType(sender.FindControl("DropDownList2"), DropDownList).DataBind()
        End If

    End Sub

    Protected Sub DropDownList2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList2_Init1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub DropDownList2_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
        sender.items.clear()
        sender.items.add("")
    End Sub

    Protected Sub Datos_Inmuebles_Relacionados_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Inmuebles_Relacionados.Init
        sender.Columns.Item(2).Visible = False
        sender.Columns.Item(3).Visible = False

    End Sub

    Protected Sub Ajusta_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Inmuebles_Relacionados.PreRender
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

    Protected Sub DropDownList1_SelectedIndexChanged5(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If sender.text <> "" Then
            Session("SOCI") = sender.Text
            CType(sender.FindControl("DropDownList2"), DropDownList).DataBind()
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged6(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If sender.text <> "" Then
            Session("SOCI") = sender.Text
            CType(sender.FindControl("DropDownList2"), DropDownList).DataBind()
        End If
    End Sub

    Protected Sub Datos_Inmuebles_Relacionados_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Inmuebles_Relacionados.SelectedIndexChanged

    End Sub

    Protected Sub FElemento_Cabecera_PageIndexChanging(sender As Object, e As FormViewPageEventArgs) Handles FElemento_Cabecera.PageIndexChanging

    End Sub

    Protected Sub DropDownList2_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub
End Class