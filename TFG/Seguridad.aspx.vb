

Partial Public Class Seguridad
    Inherits System.Web.UI.Page
    Public conexion As New SqlClient.SqlConnection

    Public Cadena As String
    Public Tabla As String
    Public Campos(10), Valores(10) As String
    Public XDataSet(4) As DataSet
    




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Sql1.ConnectionString = Session("XConexionString")
        Sql2.ConnectionString = Session("XConexionString")
        Sql3.ConnectionString = Session("XConexionString")
        Sql4.ConnectionString = Session("XConexionString")
        conexion = Session("XConexion")
        If Not Page.IsPostBack Then
            Session("Status") = ""
            Datos_Usuarios.SelectedIndex = 0
            Actualiza_DataSet()
            Session("XTabla") = "dbo.codigo_responsable"
            Buscar_Usuario.Text = ""
        End If
        If Trim(MensajeError.Text) = "" Then P_MensajeError.Visible = True Else P_MensajeError.Visible = False
    End Sub

    Sub Actualiza_DataSet()
        Dim dsx1 As New DataSet()
        'Usuarios----------------------------------------------------------------------------'
        Dim Cadena As String
        Session("Xdsx") = XDataSet


        Session("XMas") = 0

        Cadena = "SELECT * FROM dbo.CODIGO_RESPONSABLE"
        If Trim(Buscar_Usuario.Text) <> "" Then
            Cadena = Cadena & " WHERE " & CAMPO.Text & " LIKE '%" & Buscar_Usuario.Text & "%'"
        End If
        dsx1.Clear()
        Dim dax1 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax1.Fill(dsx1, "dbo.CODIGO_RESPONSABLE")

        Datos_Usuarios.DataSource = dsx1
        Datos_Usuarios.DataKeyField = dsx1.Tables(0).Columns(0).ColumnName

        Session("Xdax") = dax1
        Session("Xdsx")(0) = dsx1

        Datos_Usuarios.DataBind()
        If Trim(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text) <> "" Then
            If dsx1.Tables(0).Rows.Count <> 0 Then
                Actualiza_DataSet_1(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text)
                Actualiza_DataSet_2(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text)
                Actualiza_DataSet_3(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text)
            Else
                Actualiza_DataSet_1(999999999)
                Actualiza_DataSet_2(999999999)
                Actualiza_DataSet_3(999999999)
            End If
        End If

        If Trim(CAMPO.Text) = "" Then CAMPO.Text = dsx1.Tables(0).Columns(0).ColumnName

    End Sub




    Sub Actualiza_DataSet_1(ByVal Codigo_Responsable As Integer)
        Dim dsx2 As New DataSet()

        'Usuarios-Grupo----------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.CODIGO_RESPONSABLE_GRUPO WHERE CODIGO_RESPONSABLE=" & CStr(Codigo_Responsable)
        dsx2.Clear()
        Dim dax2 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax2.Fill(dsx2, "dbo.CODIGO_RESPONSABLE_GRUPO")
        Datos_Usuarios_Grupo.DataSource = dsx2
        Datos_Usuarios_Grupo.DataKeyField = dsx2.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(1) = dsx2
        Datos_Usuarios_Grupo.DataBind()
    End Sub

    Sub Actualiza_DataSet_2(ByVal Codigo_Responsable As Integer)
        Dim dsx3 As New DataSet()

        'Usuarios-Sociedades-----------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.CODIGO_RESPONSABLE_SOCIEDAD WHERE CODIGO_RESPONSABLE=" & CStr(Codigo_Responsable)
        dsx3.Clear()
        Dim dax3 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax3.Fill(dsx3, "dbo.CODIGO_RESPONSABLE_SOCIEDAD")
        Datos_Usuarios_Sociedades.DataSource = dsx3
        Datos_Usuarios_Sociedades.DataKeyField = dsx3.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(2) = dsx3
        Datos_Usuarios_Sociedades.DataBind()
    End Sub

    Sub Actualiza_DataSet_3(ByVal Codigo_Responsable As Integer)
        Dim dsx4 As New DataSet()

        'Usuarios-Centros--------------------------------------------------------------------'
        Cadena = "SELECT * FROM dbo.CODIGO_RESPONSABLE_CENTRO WHERE CODIGO_RESPONSABLE=" & CStr(Codigo_Responsable)
        dsx4.Clear()
        Dim dax4 As New SqlClient.SqlDataAdapter(Cadena, conexion)
        dax4.Fill(dsx4, "dbo.CODIGO_RESPONSABLE_CENTRO")
        Datos_Usuarios_Centro.DataSource = dsx4
        Datos_Usuarios_Centro.DataKeyField = dsx4.Tables(0).Columns(0).ColumnName
        Session("Xdsx")(3) = dsx4
        Datos_Usuarios_Centro.DataBind()
    End Sub

    Private Sub InitializeComponent()

    End Sub

    Private Sub Datos_Usuarios_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios.EditCommand
        Editar(source, e)
    End Sub
    Private Sub Datos_Usuarios_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios.CancelCommand
        Cancelar(source, e)
    End Sub
    Private Sub Datos_Usuarios_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios.UpdateCommand
        Update(source, e, 0)
    End Sub
    Private Sub Datos_Usuarios_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios.ItemCommand
        Pinchar_Cabecera(source, e)
        If e.Item.ItemIndex <> -1 Then
            source.selectedindex = e.Item.ItemIndex
            Datos_Usuarios_Grupo.CurrentPageIndex = 0
            Datos_Usuarios_Sociedades.CurrentPageIndex = 0
            Datos_Usuarios_Centro.CurrentPageIndex = 0
            Session("XStatus") = ""
            Actualiza_DataSet_1(source.Datakeys(e.Item.ItemIndex))
            Actualiza_DataSet_2(source.Datakeys(e.Item.ItemIndex))
            Actualiza_DataSet_3(source.Datakeys(e.Item.ItemIndex))
        End If
    End Sub
    Private Sub Datos_Usuarios_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(3).Text()
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, 0)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & " = " & Valores(0) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub
    'PROCEDIMIENTOS *******************************************************************'
    Private Sub Update(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs, ByVal Indice As Integer)
        Dim I As Integer
        Dim CajaTexto As TextBox
        Dim Array_Nuevos(e.Item.Cells.Count - 1) As String
        'Se quitan 2 de los 2 botones iniciales
        Session("Xdsx")(Indice).Tables(0).Columns(0).ReadOnly = False
        ReDim Array_Nuevos(e.Item.Cells.Count - 1)


        If source.id = "Datos_Usuarios" Then
            For I = 3 To e.Item.Cells.Count - 2
                CajaTexto = e.Item.Cells(I).Controls(0)
                Array_Nuevos(I - 3) = CajaTexto.Text
            Next
            Dim zz As New DropDownList
            zz = e.Item.Cells(9).FindControl("DropDownlist1")
            Array_Nuevos(9 - 3) = zz.Text
        End If
        If source.id = "Datos_Usuarios_Grupo" Or source.id = "Datos_Usuarios_Sociedades" Or source.id = "Datos_Usuarios_Centro" Then
            For I = 2 To e.Item.Cells.Count - 2
                CajaTexto = e.Item.Cells(I).Controls(0)
                Array_Nuevos(I - 2) = CajaTexto.Text
            Next
            Array_Nuevos(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
        End If


        ReDim Campos(10), Valores(10)
        Try
            If Session("Status") = "Editar" Then
                Campos(0) = source.DataKeyField
                Valores(0) = Array_Nuevos(0)
                Select Case Indice
                    Case 1
                        Campos(1) = "TIPO_GRUPO_SOCIEDAD"
                        Valores(1) = Array_Nuevos(1)
                    Case 2
                        Campos(1) = "SOCIEDAD"
                        Valores(1) = Array_Nuevos(1)
                    Case 3
                        Campos(1) = "CENTRO"
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



    Protected Sub B_1_Seguridad_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("/Menu.aspx")
    End Sub



    Protected Sub Datos_Centro_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios_Centro.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        MensajeError.Text = ""
        Session("XDatos").CurrentPageIndex = 0
        sender.FindControl("Datos_Usuarios").currentpageindex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Insertar_Usuario_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Usuario.Click
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
            Dr = Session("Xdsx")(0).Tables(0).NewRow
            Session("Xdsx")(0).Tables(0).Rows.Add(Dr)

            If Session("Xdsx")(0).Tables(0).Columns(0).DataType.ToString() = "System.Int16" Then
                Dim Comando As New SqlClient.SqlCommand
                Comando.Connection = conexion
                Cadena = "SELECT MAX( " & Session("Xdsx")(0).Tables(0).Columns(0).ColumnName() & " )FROM " & Session("XTabla")

                Dim Total As Integer
                Comando.CommandText = Cadena
                If IsDBNull(Comando.ExecuteScalar()) Then Total = 0 Else Total = Comando.ExecuteScalar()

                Dr.Item(Session("Xdsx")(0).Tables(0).Columns(0).ColumnName()) = Total + 1
            End If

            Dr.Item("TIPO_RESPONSABLE") = 1
            If (Session("Xdsx")(0).Tables(0).Rows.Count()) - (Datos_Usuarios.PageCount * 5) = 1 Then
                Datos_Usuarios.CurrentPageIndex = Datos_Usuarios.CurrentPageIndex + 1
            Else
                Datos_Usuarios.CurrentPageIndex = Datos_Usuarios.PageCount - 1
            End If
            Datos_Usuarios.DataSource = Session("Xdsx")(0)
            Datos_Usuarios.EditItemIndex = Session("Xdsx")(0).Tables(0).Rows.Count - 1 - (Datos_Usuarios.CurrentPageIndex * 5)
            Datos_Usuarios.SelectedIndex = Datos_Usuarios.EditItemIndex
            Datos_Usuarios.DataBind()

        End If
    End Sub


    Protected Sub Datos_Usuarios_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs)
        Dim Pos As Integer
        e.Item.Cells(0).Visible = True
        e.Item.Cells(7).Visible = True
        e.Item.Cells(8).Visible = True
        Pos = 3
        'Se permite cambiar el número propuesto si se desea'
        'e.Item.Cells(Pos).Enabled = False
        e.Item.Cells(Pos).Width = 20
        If Session("Xdsx")(0).Tables(0).Columns(0).DataType.ToString() = "System.String" Then
            If Session("Status") = "Insertar" Then
                e.Item.Cells(Pos).Enabled = True
            End If
        End If
    End Sub

    Protected Sub Insertar_Grupo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Grupo.Click
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
            Dr.Item("CODIGO_RESPONSABLE") = CType(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text, Int16)
            Session("Xdsx")(1).Tables(0).Rows.Add(Dr)
            Dr.Item("TIPO_GRUPO_SOCIEDAD") = 1

            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(1).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Usuarios_Grupo.PageCount * 2) = 0 Then
                Datos_Usuarios_Grupo.CurrentPageIndex = Datos_Usuarios_Grupo.PageCount
            Else
                Datos_Usuarios_Grupo.CurrentPageIndex = Datos_Usuarios_Grupo.PageCount - 1
            End If

            Datos_Usuarios_Grupo.DataSource = Session("Xdsx")(1)
            If Registros - ((Datos_Usuarios_Grupo.PageCount * 2)) < 0 Then
                Datos_Usuarios_Grupo.EditItemIndex = Registros - ((Datos_Usuarios_Grupo.PageCount - 1) * 2)
            Else
                Datos_Usuarios_Grupo.EditItemIndex = Registros - ((Datos_Usuarios_Grupo.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'

            Datos_Usuarios_Grupo.DataBind()
        End If
    End Sub

    Protected Sub Datos_Usuarios_Grupo_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Grupo.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Grupo_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Grupo.UpdateCommand
        Update(source, e, 1)
    End Sub

    Protected Sub Datos_Usuarios_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Usuarios_Grupo_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Grupo.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Grupo_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Grupo.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "TIPO_GRUPO_SOCIEDAD"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, 1)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Usuarios_Grupo_ItemCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Grupo.ItemCommand

    End Sub

    Protected Sub Datos_Usuarios_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Usuarios.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Insertar_Sociedad_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Sociedad.Click
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
            Dr = Session("Xdsx")(2).Tables(0).NewRow
            Dr.Item("CODIGO_RESPONSABLE") = CType(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text, Int16)
            Session("Xdsx")(2).Tables(0).Rows.Add(Dr)
            Dr.Item("SOCIEDAD") = "TODAS     "
            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(2).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Usuarios_Sociedades.PageCount * 2) = 0 Then
                Datos_Usuarios_Sociedades.CurrentPageIndex = Datos_Usuarios_Sociedades.PageCount
            Else
                Datos_Usuarios_Sociedades.CurrentPageIndex = Datos_Usuarios_Sociedades.PageCount - 1
            End If

            Datos_Usuarios_Sociedades.DataSource = Session("Xdsx")(2)
            If Registros - ((Datos_Usuarios_Sociedades.PageCount * 2)) < 0 Then
                Datos_Usuarios_Sociedades.EditItemIndex = Registros - ((Datos_Usuarios_Sociedades.PageCount - 1) * 2)
            Else
                Datos_Usuarios_Sociedades.EditItemIndex = Registros - ((Datos_Usuarios_Sociedades.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Datos_Usuarios_Sociedades.DataBind()
        End If
    End Sub

    Protected Sub Datos_Usuarios_Grupo_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Usuarios_Grupo.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then e.Item.Cells(3).Enabled = True Else e.Item.Cells(3).Enabled = False
    End Sub

    Protected Sub Datos_Usuarios_Grupo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios_Grupo.SelectedIndexChanged

    End Sub

    Protected Sub Datos_Usuarios_Grupo_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Usuarios_Grupo.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Usuarios_Sociedades.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Usuarios_Centro_PageIndexChanged(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs)
        source.CurrentPageIndex() = e.NewPageIndex()
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Usuarios_Grupo_ItemCreated(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Usuarios_Grupo.ItemCreated
    End Sub

    Protected Sub DropDownList1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Usuarios_Sociedades.ItemDataBound, Datos_Usuarios.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then e.Item.Cells(3).Enabled = True Else e.Item.Cells(3).Enabled = False
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Sociedades.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Sociedades.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "SOCIEDAD"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, 2)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Sociedades.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Sociedades.UpdateCommand
        Update(source, e, 2)
    End Sub

    Protected Sub Insertar_Centro_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Insertar_Centro.Click
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
            Dr.Item("CODIGO_RESPONSABLE") = CType(Datos_Usuarios.Items(Datos_Usuarios.SelectedIndex).Cells(3).Text, Int16)
            Session("Xdsx")(3).Tables(0).Rows.Add(Dr)
            Dr.Item("CENTRO") = "TODOS     "
            'Posicionamiento--------------------------------------------------------------------'
            Registros = Session("Xdsx")(3).Tables(0).Rows.Count() - 1
            If Registros - (Datos_Usuarios_Centro.PageCount * 2) = 0 Then
                Datos_Usuarios_Centro.CurrentPageIndex = Datos_Usuarios_Centro.PageCount
            Else
                Datos_Usuarios_Centro.CurrentPageIndex = Datos_Usuarios_Centro.PageCount - 1
            End If

            Datos_Usuarios_Centro.DataSource = Session("Xdsx")(3)
            If Registros - ((Datos_Usuarios_Centro.PageCount * 2)) < 0 Then
                Datos_Usuarios_Centro.EditItemIndex = Registros - ((Datos_Usuarios_Centro.PageCount - 1) * 2)
            Else
                Datos_Usuarios_Centro.EditItemIndex = Registros - ((Datos_Usuarios_Centro.PageCount * 2))
            End If
            'Posicionamiento--------------------------------------------------------------------'
            Datos_Usuarios_Centro.DataBind()
        End If
    End Sub

    Protected Sub Datos_Usuarios_Centro_CancelCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Centro.CancelCommand
        Cancelar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Centro_DeleteCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Centro.DeleteCommand
        Try
            Campos(0) = source.DataKeyField
            Valores(0) = source.Items(e.Item.ItemIndex).Cells(2).Text()
            Campos(1) = "CENTRO"
            Valores(1) = CType(e.Item.Cells(3).FindControl("DropDownlist1"), DropDownList).Text
            'If MsgBox("¿Desea Eliminar definitivamente el registro? " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1), MsgBoxStyle.YesNo, "Mensaje de Confirmacion") = 6 Then
            Borra(Campos, Valores, 3)
            'End If
        Catch ex As Exception
            MensajeError.Text = "Error al Eliminar " & Campos(0) & "-" & Campos(1) & "=" & Valores(0) & "-" & Valores(1) & " - Mensaje de Error : " & ex.Message
        Finally

            If (source.Items.Count = 1) And (source.CurrentPageIndex > 0) Then
                source.CurrentPageIndex = source.CurrentPageIndex - 1
            End If
            Actualiza_DataSet()
        End Try
    End Sub

    Protected Sub Datos_Usuarios_Centro_EditCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Centro.EditCommand
        Editar(source, e)
    End Sub

    Protected Sub Datos_Usuarios_Centro_PageIndexChanged1(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Datos_Usuarios_Centro.PageIndexChanged
        source.CurrentPageIndex() = e.NewPageIndex()
        source.SelectedIndex = 0
        Actualiza_DataSet()
    End Sub

    Protected Sub Datos_Usuarios_Centro_UpdateCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Datos_Usuarios_Centro.UpdateCommand
        Update(source, e, 3)
    End Sub

    Protected Sub Datos_Usuarios_Centro_ItemDataBound(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles Datos_Usuarios_Centro.ItemDataBound
        e.Item.Cells(2).Width = 1
        e.Item.Cells(2).Enabled = False
        If Session("Status") = "Insertar" Then e.Item.Cells(3).Enabled = True Else e.Item.Cells(3).Enabled = False
    End Sub

    Protected Sub B_1_Agrupaciones_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Seguridad.Click
        Response.Redirect("/Menu.aspx")
    End Sub

    Protected Sub Ajusta_Todos(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios.PreRender, Datos_Usuarios_Grupo.PreRender, Datos_Usuarios_Sociedades.PreRender, Datos_Usuarios_Centro.PreRender
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

    Protected Sub Datos_Usuarios_Grupo_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios_Grupo.Load
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Usuarios_Sociedades_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios_Sociedades.Load
        sender.Columns.Item(2).Visible = False
    End Sub

    Protected Sub Datos_Usuarios_Centro_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Datos_Usuarios_Centro.Load
        sender.Columns.Item(2).Visible = False
    End Sub
End Class