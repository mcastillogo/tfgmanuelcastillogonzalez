Public Partial Class Agrupaciones
    Inherits System.Web.UI.Page
    Public conexion As New SqlClient.SqlConnection
    Public Cadena As String
    Public Tabla As String
    Public Campos(10), Valores(10) As String
    Public XDataSet(6) As DataSet


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Sql1.ConnectionString = Session("XConexionString")
        Sql2.ConnectionString = Session("XConexionString")
        Sql3.ConnectionString = Session("XConexionString")
        Sql4.ConnectionString = Session("XConexionString")
        Sql5.ConnectionString = Session("XConexionString")
        Sql6.ConnectionString = Session("XConexionString")
        Sql7.ConnectionString = Session("XConexionString")
        conexion = Session("XConexion")
        If Not Page.IsPostBack Then

            Session("Status") = ""

            Select Case Session("XPanel")
                Case 1 : P_1_Agrupaciones.Visible = True
                    Datos_Sociedades.SelectedIndex = 0
                    Actualiza_DataSet()
                    Buscar_Sociedad.Text = ""
                Case 2 : P_2_Agrupaciones.Visible = True
                    Datos_Grupo.SelectedIndex = 0
                    Actualiza_DataSet()
                    Buscar_Grupo.Text = ""
                Case 3 : P_3_Agrupaciones.Visible = True
                    Datos_Grupo_Interno.SelectedIndex = 0
                    Actualiza_DataSet()
                    Buscar_Grupo_Interno.Text = ""
                Case 4 : P_4_Agrupaciones.Visible = True
                    Datos_Provincia.SelectedIndex = 0
                    Actualiza_DataSet()
                    Buscar_Provincia.Text = ""
            End Select
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        MensajeError.Text = ""
        Datos_Sociedades.CurrentPageIndex = 0
        sender.FindControl("Datos_Sociedades").currentpageindex = 0
        Actualiza_DataSet()
    End Sub

    Sub Actualiza_DataSet_1(ByVal Sociedad As String)
        Dim dsx2 As New DataSet()


        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.SOCIEDADES_CENTROS WHERE SOCIEDAD = " & "'" & Sociedad & "'"
        dsx2.Clear()
        Dim dax2 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax2.Fill(dsx2, "dbo.SOCIEDADES_CENTROS")
        Datos_Centros.DataSource = dsx2
        Datos_Centros.DataKeyField = dsx2.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(1) = dsx2
        Datos_Centros.DataBind()
    End Sub

    Sub Actualiza_DataSet_2(ByVal Sociedad As String)
        Dim dsx3 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.ASOCIAR_SOCIEDAD_RESPONSABLE WHERE SOCIEDAD = " & "'" & Sociedad & "'"
        dsx3.Clear()
        Dim dax3 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax3.Fill(dsx3, "dbo.ASOCIAR_SOCIEDAD_RESPONSABLE")
        Datos_Responsables.DataSource = dsx3
        Datos_Responsables.DataKeyField = dsx3.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(2) = dsx3
        Datos_Responsables.DataBind()
    End Sub

    Sub Actualiza_DataSet_3(ByVal Asociar_Grupo_Sociedad As Integer)
        Dim dsx3 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.ASOCIAR_GRUPO_SOCIEDAD WHERE GRUPO_SOCIEDAD = " & "'" & Asociar_Grupo_Sociedad & "'"
        dsx3.Clear()
        Dim dax3 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax3.Fill(dsx3, "dbo.ASOCIAR_GRUPO_SOCIEDAD")
        Datos_Grupo_Sociedades.DataSource = dsx3
        Datos_Grupo_Sociedades.DataKeyField = dsx3.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(3) = dsx3
        Datos_Grupo_Sociedades.DataBind()
    End Sub

    Sub Actualiza_DataSet_4(ByVal Asociar_Grupo_Interno As String)
        Dim dsx4 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.ASOCIAR_GRUPO_INTERNO_INMUEBLE WHERE TIPO_GRUPO_INTERNO = " & "'" & Asociar_Grupo_Interno & "'"
        dsx4.Clear()
        Dim dax4 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax4.Fill(dsx4, "dbo.ASOCIAR_GRUPO_INTERNO_INMUEBLE")
        Datos_Elemento.DataSource = dsx4
        Datos_Elemento.DataKeyField = dsx4.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(4) = dsx4
        Datos_Elemento.DataBind()
    End Sub

    Sub Actualiza_DataSet_5(ByVal Asociar_Datos_Responsable As Integer)
        Dim dsx5 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.ASOCIAR_DATOS_RESPONSABLE WHERE CODIGO_RESPONSABLE = " & "'" & Asociar_Datos_Responsable & "'"
        dsx5.Clear()
        Dim dax5 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax5.Fill(dsx5, "dbo.ASOCIAR_DATOS_RESPONSABLE")
        Datos_TipoDato.DataSource = dsx5
        Datos_TipoDato.DataKeyField = dsx5.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(5) = dsx5
        Datos_TipoDato.DataBind()
    End Sub

    Sub Actualiza_DataSet_6(ByVal Asociar_Provincia_Localidad As Integer)
        Dim dsx6 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.ASOCIAR_PROVINCIA_LOCALIDAD WHERE TIPO_PROVINCIA = " & "'" & Asociar_Provincia_Localidad & "'"
        dsx6.Clear()
        Dim dax6 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax6.Fill(dsx6, "dbo.ASOCIAR_PROVINCIA_LOCALIDAD")
        Datos_Localidad.DataSource = dsx6
        Datos_Localidad.DataKeyField = dsx6.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(6) = dsx6
        Datos_Localidad.DataBind()
    End Sub

    'PROCEDIMIENTOS *******************************************************************'
    Private Sub Update(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs, ByVal Indice As Integer)
        Dim I As Integer
        Dim CajaTexto As TextBox
        Dim Array_Nuevos(e.Item.Cells.Count - 1) As String
        'Se quitan 2 de los 2 botones iniciales
        Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
        ReDim Array_Nuevos(e.Item.Cells.Count - 1)



        If source.id = "Datos_Centros" Then
            For I = 2 To e.Item.Cells.Count - 2
                CajaTexto = e.Item.Cells(I).Controls(0)
                Array_Nuevos(I - 2) = CajaTexto.Text
            Next
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
        End If

        If source.id = "Datos_Grupo_Sociedades" Then
            Array_Nuevos(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
        End If

        If source.id = "Datos_Responsables" Then
            Array_Nuevos(0) = CType(e.Item.Cells(3).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(4).FindControl("DropDownlist1"), DropDownList).Text
            Array_Nuevos(2) = CType(e.Item.Cells(5).FindControl("D1"), DropDownList).Text
        End If

        If source.id = "Datos_Grupo" Then
            Array_Nuevos(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
        End If

        If source.id = "Datos_Elemento" Then
            Array_Nuevos(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("D1"), DropDownList).Text
            Array_Nuevos(2) = CType(e.Item.Cells(4).FindControl("D2"), DropDownList).Text
        End If

        If source.id = "Datos_TipoDato" Then
            Array_Nuevos(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("D1"), DropDownList).Text
            Array_Nuevos(2) = CType(e.Item.Cells(4).Controls(0), TextBox).Text
        End If

        If source.id = "Datos_Localidad" Then
            Array_Nuevos(0) = CType(e.Item.Cells(2).Controls(0), TextBox).Text
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("DropDownList1"), DropDownList).Text
        End If

        ReDim Campos(10), Valores(10)
        Try
            If Session("Status") = "Editar" Then
                Campos(0) = source.DataKeyField
                Valores(0) = Array_Nuevos(0)
                Select Case Indice
                    Case 1
                        Campos(1) = "CENTRO"
                        Valores(1) = Array_Nuevos(1)
                    Case 2
                        Campos(1) = "CODIGO_RESPONSABLE"
                        Valores(1) = Array_Nuevos(1)
                        Campos(2) = "TIPO_ESTADO"
                        Valores(2) = Array_Nuevos(2)
                    Case 3
                        Campos(1) = "SOCIEDAD"
                        Valores(1) = Array_Nuevos(1)
                    Case 4
                        Campos(1) = "SOCIEDAD"
                        Valores(1) = Array_Nuevos(1)
                        Campos(2) = "CODIGO"
                        Valores(2) = Array_Nuevos(2)
                    Case 5
                        Campos(1) = "TIPO_DATO"
                        Valores(1) = Array_Nuevos(1)
                        Campos(2) = "VALOR_DATO"
                        Valores(2) = Array_Nuevos(2)
                    Case 6
                        Campos(1) = "TIPO_LOCALIDAD"
                        Valores(1) = Array_Nuevos(1)
                End Select
            End If

            Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
            Graba(Session("Status"), Array_Nuevos, Campos, Valores, Indice)
        Catch ex As Exception
            If Session("Status") = "Editar" Then
                MensajeError.Text = "Error al Actualizar Registro " & Valores(0) & Trim(Valores(1)) & " en la Tabla " & Session("Xdsx")(Indice).Tables(0).TableName & " - Mensaje de Error : " & ex.Message
            Else
                MensajeError.Text = "Error al Insertar en la Tabla " & Session("Xdsx")(Indice).Tables(0).TableName & " - Mensaje de Error : " & ex.Message
            End If
        Finally

            source.EditItemIndex = -1
            If Session("Status") = "Insertar" And MensajeError.Text <> "" Then
                If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                    source.CurrentPageIndex = source.CurrentPageIndex - 1
                End If
            End If
            Actualiza_DataSet()
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
                Dim ComandoInsert As New Data.SqlClient.SqlCommand(Cadena, conexion)
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
                Dim Comando As New Data.SqlClient.SqlCommand(Cadena, conexion)
                For I = 0 To Session("Xdsx")(Indice).Tables(0).Columns.Count - 1
                    Nombre_Campo = Session("Xdsx")(Indice).Tables(0).Columns(I).ColumnName
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


    Sub Cancelar(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        source.EditItemIndex = -1
        Session("Status") = ""
        If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
            source.CurrentPageIndex = source.CurrentPageIndex - 1
        End If
        Actualiza_DataSet()
    End Sub
    Sub Pinchar_Cabecera(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
        If e.CommandArgument <> "" Then
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO.Text = e.CommandArgument
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO1.Text = e.CommandArgument
            If Len(Trim(e.CommandArgument)) > 2 Then CAMPO2.Text = e.CommandArgument
            If Len(Trim(e.CommandArgument)) > 2 Then Campo3.Text = e.CommandArgument
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
            source.EditItemIndex = e.Item.ItemIndex
            Actualiza_DataSet()
        End If
    End Sub





    Sub Actualiza_DataSet()
        Dim dsx1 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena As String
        Session("Xdsx") = XDataSet

        If Session("XPanel") = 1 Then
            Cadena = "SELECT * FROM " & "dbo.Sociedades"
            If Trim(Buscar_Sociedad.Text) <> "" Then Cadena = Cadena & " WHERE " & CAMPO.Text & " LIKE '%" & Buscar_Sociedad.Text & "%'"
            dsx1.Clear()
            Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
            dax1.Fill(dsx1, "dbo.Sociedades")
            Datos_Sociedades.DataSource = dsx1
            Datos_Sociedades.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName
            Session("Xdax") = dax1
            Session("Xdsx")(0) = dsx1
            Datos_Sociedades.DataBind()
            Try
                Actualiza_DataSet_1(Datos_Sociedades.Items(Datos_Sociedades.SelectedIndex).Cells(1).Text)
            Catch
                Actualiza_DataSet_1(-1)
            End Try
            Try
                Actualiza_DataSet_2(Datos_Sociedades.Items(Datos_Sociedades.SelectedIndex).Cells(1).Text)
            Catch
                Actualiza_DataSet_2(-1)
            End Try
            Datos_Responsables.SelectedIndex = 0
            Try
                Actualiza_DataSet_5(CType(Datos_Responsables.Items(Datos_Responsables.SelectedIndex).Cells(4).Controls(1), DropDownList).Text)
            Catch
                Actualiza_DataSet_5(-1)
            End Try
            If Trim(CAMPO.Text) = "" Then CAMPO.Text = dsx1.Tables(0).Columns(0).ColumnName
        End If
        If Session("XPanel") = 2 Then
            Cadena = "SELECT * FROM " & "dbo.Tipo_Grupo_Sociedad"
            If Trim(Buscar_Grupo.Text) <> "" Then Cadena = Cadena & " WHERE " & CAMPO1.Text & " LIKE '%" & Buscar_Grupo.Text & "%'"
            dsx1.Clear()
            Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
            dax1.Fill(dsx1, "dbo.Tipo_Grupo_Sociedad")
            Datos_Grupo.DataSource = dsx1
            Datos_Grupo.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName
            Session("Xdax") = dax1
            Session("Xdsx")(0) = dsx1
            Datos_Grupo.DataBind()
            Try
                Actualiza_DataSet_3(Datos_Grupo.Items(Datos_Grupo.SelectedIndex).Cells(1).Text)
            Catch
                Actualiza_DataSet_3(-1)
            End Try
            If Trim(CAMPO1.Text) = "" Then CAMPO1.Text = dsx1.Tables(0).Columns(0).ColumnName
        End If
        If Session("XPanel") = 3 Then
            Cadena = "SELECT * FROM " & "dbo.Tipo_Grupo_Interno"
            If Trim(Buscar_Grupo_Interno.Text) <> "" Then Cadena = Cadena & " WHERE " & CAMPO2.Text & " LIKE '%" & Buscar_Grupo_Interno.Text & "%'"
            dsx1.Clear()
            Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
            dax1.Fill(dsx1, "dbo.Tipo_Grupo_Interno")
            Datos_Grupo_Interno.DataSource = dsx1
            Datos_Grupo_Interno.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName
            Session("Xdax") = dax1
            Session("Xdsx")(0) = dsx1
            Datos_Grupo_Interno.DataBind()
            Try
                Actualiza_DataSet_4(Datos_Grupo_Interno.Items(Datos_Grupo_Interno.SelectedIndex).Cells(1).Text)
            Catch
                Actualiza_DataSet_4(-1)
            End Try
            If Trim(CAMPO2.Text) = "" Then CAMPO2.Text = dsx1.Tables(0).Columns(0).ColumnName
        End If
        If Session("XPanel") = 4 Then
            Cadena = "SELECT * FROM " & "dbo.Tipo_Provincia"
            If Trim(Buscar_Provincia.Text) <> "" Then Cadena = Cadena & " WHERE " & Campo3.Text & " LIKE '%" & Buscar_Provincia.Text & "%'"
            dsx1.Clear()
            Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
            dax1.Fill(dsx1, "dbo.Tipo_Provincia")
            Datos_Provincia.DataSource = dsx1
            Datos_Provincia.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName
            Session("Xdax") = dax1
            Session("Xdsx")(0) = dsx1
            Datos_Provincia.DataBind()
            Try
                Actualiza_DataSet_6(Datos_Provincia.Items(Datos_Provincia.SelectedIndex).Cells(1).Text)
            Catch
                Actualiza_DataSet_6(-1)
            End Try
            If Trim(Campo3.Text) = "" Then Campo3.Text = dsx1.Tables(0).Columns(0).ColumnName
        End If
    End Sub

    Protected Sub Datos_Sociedades_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)

    End Sub

    Protected Sub Datos_Sociedades_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)

    End Sub

    Protected Sub Datos_Sociedades_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Sociedades.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Sociedades_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Sociedades.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Centros.CurrentPageIndex = 0
            Datos_Responsables.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_1(source.Datakeys(e.Item.ItemIndex))
            Actualiza_DataSet_2(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub

    Protected Sub Insertar_Dato_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Dato.Click
        Dim Registros As Integer
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
            Dr = Session("Xdsx")(1).Tables(0).NewRow
            Dr.Item("SOCIEDAD") = Datos_Sociedades.Items(Datos_Sociedades.SelectedIndex).Cells(1).Text
            Session("Xdsx")(1).Tables(0).Rows.Add(Dr)
            Dr.Item("CENTRO") = "TODOS     "

            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(1).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Centros.PageCount * 2) = 0 Then
                Datos_Centros.CurrentPageIndex = Datos_Centros.PageCount
            Else
                Datos_Centros.CurrentPageIndex = Datos_Centros.PageCount - 1
            End If

            Datos_Centros.DataSource = Session("Xdsx")(1)
            If Registros - ((Datos_Centros.PageCount * 2)) < 0 Then
                Datos_Centros.EditItemIndex = Registros - ((Datos_Centros.PageCount - 1) * 2)
            Else
                Datos_Centros.EditItemIndex = Registros - ((Datos_Centros.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'

            Datos_Centros.DataBind()
        End If
    End Sub

    Protected Sub Datos_Centros_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Centros.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Centros_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Centros.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "CENTRO"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 1)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Centros_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Centros.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Centros_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Centros.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Centros_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Centros.UpdateCommand
        Update(source, e, 1)
    End Sub

    Protected Sub Datos_Centros_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Centros.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(3).Enabled = True
        Else
            e.Item.Cells(3).Enabled = False
        End If
    End Sub

    Protected Sub Datos_Centros_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Centros.SelectedIndexChanged

    End Sub



    Protected Sub B_1_Agrupaciones_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Agrupaciones.Click
        Response.Redirect("/Menu.aspx")
    End Sub

    Protected Sub Insertar_Responsable_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Responsable.Click
        Dim Registros As Integer
        MensajeError.Text = ""
        If Session("Status") = "Editar" Then
            MensajeError.Text = "Antes de Insertar cancele el MODO EDICION"
        End If
        If Session("Status") = "Insertar" Then
            MensajeError.Text = "Ya esta en MODO INSERCION"
        End If
        If MensajeError.Text = "" Then
            Session("Status") = "Insertar"
            Actualiza_DataSet()
            Dim Dr As DataRow
            Dr = Session("Xdsx")(2).Tables(0).NewRow
            Dr.Item("SOCIEDAD") = Datos_Sociedades.Items(Datos_Sociedades.SelectedIndex).Cells(1).Text
            Session("Xdsx")(2).Tables(0).Rows.Add(Dr)
            Dr.Item("CODIGO_RESPONSABLE") = 1
            Dr.Item("TIPO_ESTADO") = 1

            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(2).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Responsables.PageCount * 2) = 0 Then
                Datos_Responsables.CurrentPageIndex = Datos_Responsables.PageCount
            Else
                Datos_Responsables.CurrentPageIndex = Datos_Responsables.PageCount - 1
            End If

            Datos_Responsables.DataSource = Session("Xdsx")(2)
            If Registros - ((Datos_Responsables.PageCount * 2)) < 0 Then
                Datos_Responsables.EditItemIndex = Registros - ((Datos_Responsables.PageCount - 1) * 2)
            Else
                Datos_Responsables.EditItemIndex = Registros - ((Datos_Responsables.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'

            Datos_Responsables.DataBind()
        End If
    End Sub

    Protected Sub Datos_Responsables_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsables.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Responsables_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsables.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(3).Text()
            Campos(1) = "CODIGO_RESPONSABLE"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 2)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Responsables_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsables.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Responsables_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Responsables.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Responsables_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsables.UpdateCommand
        Update(source, e, 2)
    End Sub

    Protected Sub Datos_Responsables_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Responsables.ItemDataBound
        e.Item.Cells(3).Width = 1
        e.Item.Cells(3).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(4).Enabled = True
            e.Item.Cells(5).Enabled = True
        Else
            e.Item.Cells(4).Enabled = False
            e.Item.Cells(5).Enabled = False
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Registros As Integer
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
            Dr = Session("Xdsx")(3).Tables(0).NewRow
            Dr.Item("GRUPO_SOCIEDAD") = Datos_Grupo.Items(Datos_Grupo.SelectedIndex).Cells(1).Text
            Session("Xdsx")(3).Tables(0).Rows.Add(Dr)
            Dr.Item("SOCIEDAD") = "TODAS     "
            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(3).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Grupo_Sociedades.PageCount * 2) = 0 Then
                Datos_Grupo_Sociedades.CurrentPageIndex = Datos_Grupo_Sociedades.PageCount
            Else
                Datos_Grupo_Sociedades.CurrentPageIndex = Datos_Grupo_Sociedades.PageCount - 1
            End If
            Datos_Grupo_Sociedades.DataSource = Session("Xdsx")(3)
            If Registros - ((Datos_Grupo_Sociedades.PageCount * 2)) < 0 Then
                Datos_Grupo_Sociedades.EditItemIndex = Registros - ((Datos_Grupo_Sociedades.PageCount - 1) * 2)
            Else
                Datos_Grupo_Sociedades.EditItemIndex = Registros - ((Datos_Grupo_Sociedades.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Datos_Grupo_Sociedades.DataBind()
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        MensajeError.Text = ""
        Datos_Grupo.CurrentPageIndex = 0
        sender.FindControl("Datos_Grupo").currentpageindex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Grupo_Sociedades.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_3(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub

    Protected Sub Datos_Grupo_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Grupo.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_Sociedades_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Sociedades.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Grupo_Sociedades_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Sociedades.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "SOCIEDAD"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 3)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Grupo_Sociedades_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Sociedades.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Grupo_Sociedades_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Grupo_Sociedades.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_Sociedades_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Sociedades.UpdateCommand
        Update(source, e, 3)
    End Sub

    Protected Sub Datos_Grupo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Grupo_Sociedades_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Grupo_Sociedades.ItemDataBound
        e.Item.Cells(2).Width = 10
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then e.Item.Cells(3).Enabled = True Else e.Item.Cells(3).Enabled = False
    End Sub

    Protected Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        MensajeError.Text = ""
        Datos_Grupo_Interno.CurrentPageIndex = 0
        sender.FindControl("Datos_Grupo_Interno").currentpageindex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_Interno_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Interno.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Elemento.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_4(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub

    Protected Sub Datos_Grupo_Interno_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Grupo_Interno.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim Registros As Integer
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
            Dr = Session("Xdsx")(4).Tables(0).NewRow
            Dr.Item("TIPO_GRUPO_INTERNO") = Datos_Grupo_Interno.Items(Datos_Grupo_Interno.SelectedIndex).Cells(1).Text
            Session("Xdsx")(4).Tables(0).Rows.Add(Dr)
            Session("XSociedad") = ""
            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(4).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Elemento.PageCount * 2) = 0 Then
                Datos_Elemento.CurrentPageIndex = Datos_Elemento.PageCount
            Else
                Datos_Elemento.CurrentPageIndex = Datos_Elemento.PageCount - 1
            End If
            Datos_Elemento.DataSource = Session("Xdsx")(4)
            If Registros - ((Datos_Elemento.PageCount * 2)) < 0 Then
                Datos_Elemento.EditItemIndex = Registros - ((Datos_Elemento.PageCount - 1) * 2)
            Else
                Datos_Elemento.EditItemIndex = Registros - ((Datos_Elemento.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Datos_Elemento.DataBind()
        End If
    End Sub

    Protected Sub Datos_Elemento_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Elemento.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Elemento_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Elemento.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "SOCIEDAD"
            Valores(1) = CType(e.Item.Cells(4).FindControl("D1"), DropDownList).Text
            Campos(2) = "CODIGO"
            Valores(2) = CType(e.Item.Cells(4).FindControl("D2"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & " " & Campos(1) & " " & Campos(2) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " " & Trim(Valores(2)), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 4)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " " & Campos(1) & " " & Campos(2) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " " & Trim(Valores(2)) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Elemento_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Elemento.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Grupo_Sociedades_PageIndexChanged1(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs)
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Elemento_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Elemento.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Elemento_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Elemento.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(3).Enabled = True
            e.Item.Cells(4).Enabled = True
        Else
            e.Item.Cells(3).Enabled = False
            e.Item.Cells(4).Enabled = False
        End If
    End Sub

    Protected Sub Datos_Elemento_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs)
    End Sub

    Protected Sub Datos_Grupo_Sociedades_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Grupo_Sociedades.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Grupo_Sociedades.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_4(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub









    Protected Sub Datos_Elemento_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Elemento.UpdateCommand
        Update(source, e, 4)
    End Sub


    Protected Sub D1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XSociedadX") = sender.text
        CType(sender.FindControl("D2"), DropDownList).DataBind()
    End Sub





    Protected Sub D2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        If Trim(sender.text) = "" Then
            sender.items.clear()
            sender.items.add("")
        End If

    End Sub


    Protected Sub Datos_Elemento_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Elemento.DataBinding
    End Sub

    Protected Sub T1_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Buscar_Usuario_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Responsables_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Responsables.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_TipoDato.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_5(CInt(CType(e.Item.Cells(4).Controls(1), DropDownList).Text))
        End If
    End Sub

    Protected Sub Datos_Responsables_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Responsables_SelectedIndexChanged1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Responsables_SelectedIndexChanged2(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Responsables.SelectedIndexChanged

    End Sub

    Protected Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Dim Registros As Integer
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
            Dr = Session("Xdsx")(5).Tables(0).NewRow
            Dr.Item("CODIGO_RESPONSABLE") = CType(Datos_Responsables.Items(Datos_Responsables.SelectedIndex).Cells(4).Controls(1), DropDownList).Text
            Session("Xdsx")(5).Tables(0).Rows.Add(Dr)
            Dr.Item("TIPO_DATO") = 1


            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(5).Tables(0).Rows.Count() - 1
            If Registros - (Datos_TipoDato.PageCount * 2) = 0 Then
                Datos_TipoDato.CurrentPageIndex = Datos_TipoDato.PageCount
            Else
                Datos_TipoDato.CurrentPageIndex = Datos_TipoDato.PageCount - 1
            End If

            Datos_TipoDato.DataSource = Session("Xdsx")(5)
            If Registros - ((Datos_TipoDato.PageCount * 2)) < 0 Then
                Datos_TipoDato.EditItemIndex = Registros - ((Datos_TipoDato.PageCount - 1) * 2)
            Else
                Datos_TipoDato.EditItemIndex = Registros - ((Datos_TipoDato.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Datos_TipoDato.DataBind()
        End If
    End Sub

    Protected Sub Datos_TipoDato_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_TipoDato.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_TipoDato_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_TipoDato.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "TIPO_DATO"
            Valores(1) = CType(e.Item.Cells(4).FindControl("D1"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 5)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_TipoDato_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_TipoDato.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_TipoDato_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_TipoDato.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_TipoDato_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_TipoDato.UpdateCommand
        Update(source, e, 5)
    End Sub

    Protected Sub Datos_TipoDato_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_TipoDato.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(3).Enabled = True
            e.Item.Cells(4).Enabled = True
        Else
            e.Item.Cells(3).Enabled = False
            e.Item.Cells(4).Enabled = False
        End If
    End Sub

    Protected Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        MensajeError.Text = ""
        Datos_Provincia.CurrentPageIndex = 0
        sender.FindControl("Datos_Provincia").currentpageindex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        Dim Registros As Integer
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
            Dr = Session("Xdsx")(6).Tables(0).NewRow
            Dr.Item("TIPO_PROVINCIA") = Datos_Provincia.Items(Datos_Provincia.SelectedIndex).Cells(1).Text
            Session("Xdsx")(6).Tables(0).Rows.Add(Dr)
            Dr.Item("TIPO_LOCALIDAD") = 1

            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(6).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Localidad.PageCount * 2) = 0 Then
                Datos_Localidad.CurrentPageIndex = Datos_Localidad.PageCount
            Else
                Datos_Localidad.CurrentPageIndex = Datos_Localidad.PageCount - 1
            End If

            Datos_Localidad.DataSource = Session("Xdsx")(6)
            If Registros - ((Datos_Localidad.PageCount * 2)) < 0 Then
                Datos_Localidad.EditItemIndex = Registros - ((Datos_Localidad.PageCount - 1) * 2)
            Else
                Datos_Localidad.EditItemIndex = Registros - ((Datos_Localidad.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'

            Datos_Localidad.DataBind()
        End If
    End Sub

    Protected Sub Datos_Localidad_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Localidad.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Localidad_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Localidad.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "TIPO_LOCALIDAD"
            Valores(1) = CType(e.Item.Cells(2).FindControl("DropDownList1"), DropDownList).Text
            If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
                Borra(Campos, Valores, 6)
            End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " " & Campos(1) & "=" & Trim(Valores(0)) & " " & Trim(Valores(1)) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Localidad_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Localidad.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Localidad_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Localidad.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Localidad_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Localidad.UpdateCommand
        Update(source, e, 6)
    End Sub

    Protected Sub Datos_Localidad_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Localidad.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then
            e.Item.Cells(3).Enabled = True
        Else
            e.Item.Cells(3).Enabled = False
        End If
    End Sub

    Protected Sub Datos_Provincia_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Provincia.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Localidad.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_6(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub

    Protected Sub Datos_Provincia_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Provincia.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Grupo_Interno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Grupo_Interno.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Localidad_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Localidad.Init
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Centros_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Centros.Init
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Grupo_Sociedades_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Grupo_Sociedades.Init
        'sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Elemento_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Elemento.Init
        'sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Ajusta_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Provincia.PreRender, Datos_Localidad.PreRender, Datos_Sociedades.PreRender, Datos_Centros.PreRender, Datos_Grupo.PreRender, Datos_Grupo_Interno.PreRender, Datos_Responsables.PreRender, Datos_TipoDato.PreRender, Datos_Elemento.PreRender, Datos_Grupo_Sociedades.PreRender
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

    Protected Sub Datos_Responsables_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Responsables.Load
        sender.Columns.Item(3).Visible = False
    End Sub

    Protected Sub Datos_TipoDato_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_TipoDato.Load
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub D2_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D2_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D2_DataBound1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D2_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D2_DataBound2(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Elemento_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Datos_Grupo_Sociedades_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub D1_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XSociedadX") = sender.text
        CType(sender.FindControl("D2"), DropDownList).DataBind()
    End Sub

    Protected Sub Datos_Elemento_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Elemento.Load
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Grupo_Sociedades_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Grupo_Sociedades.Load
        sender.Columns.Item(2).Visible = False
    End Sub
End Class