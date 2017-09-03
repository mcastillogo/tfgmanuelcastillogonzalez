Imports System.EnterpriseServices
Partial Public Class FichaInmueble
    Inherits System.Web.UI.Page
    Public Cadena As String
    Public Conexion As New SqlClient.SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        SqlDataSource0.ConnectionString = Session("XConexionString")
        SqlDataSource1.ConnectionString = Session("XConexionString")
        SqlDataSource2.ConnectionString = Session("XConexionString")
        SqlDataSource3.ConnectionString = Session("XConexionString")
        SqlDataSource4.ConnectionString = Session("XConexionString")
        SqlDataSource44.ConnectionString = Session("XConexionString")
        SqlDataSource5.ConnectionString = Session("XConexionString")
        SqlDataSource6.ConnectionString = Session("XConexionString")
        SqlDataSource7.ConnectionString = Session("XConexionString")
        Borrar.ConnectionString = Session("XConexionString")
        Conexion = Session("XConexion")
        If Not Page.IsPostBack Then
            Session("Status") = ""
        End If
        Panel1.Enabled = True
        Select Case Session("XPanel")
            Case 1
                FElemento.DefaultMode = FormViewMode.Insert
                Estatus.Text = "Inserción"
                Panel1.Enabled = False
            Case 2
                FElemento.DefaultMode = FormViewMode.Edit
                Estatus.Text = "Modificación"
            Case 3
                FElemento.DefaultMode = FormViewMode.ReadOnly

                Estatus.Text = "Eliminación"
            Case Else
                FElemento.DefaultMode = FormViewMode.ReadOnly
                Estatus.Text = "Visualización"
        End Select
    End Sub


    Protected Sub B_1_Inmuebles_Click1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles B_1_Inmuebles.Click
        If Session("XPanel") = 1 Then Response.Redirect("/Menu.aspx") Else Response.Redirect("/Inmuebles.aspx")
    End Sub



    Protected Sub TipoElemento_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub TipoElemento_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub



    Protected Sub Sociedad_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Sociedad_TextChanged1(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub



    Protected Sub FElemento_ItemInserting(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FElemento.ItemInserting
        MensajeError.Text = ""
    End Sub

    Protected Sub Sociedad_DataBinding1(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub Sociedad_TextChanged2(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XXSOCIEDAD") = sender.Text
    End Sub

    Protected Sub Centro_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Centro_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XCentro") = sender.text
    End Sub

    Protected Sub Centro_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Centro_Load1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X2_TIPO_PROVINCIA_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("X2_TIPO_PROVINCIA") = sender.text
        Dim ddl2 As DropDownList = FElemento.FindControl("X2_TIPO_LOCALIDAD")
        ddl2.Items.Clear()
        ddl2.Items.Add("")
        ddl2.DataBind()
    End Sub

    Protected Sub X2_TIPO_LOCALIDAD_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("X2_TIPO_LOCALIDAD") = sender.text
    End Sub

    Protected Sub Centro_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Sociedad_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub Centro_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
        sender.items.clear()
        sender.items.add("")
    End Sub

    Protected Sub X2_TIPO_LOCALIDAD_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Session("XDetalle") = 1
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Grabar_Inmueble_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            Dim Comando As New SqlClient.SqlCommand
            Comando.Connection = Conexion
            Cadena = " SELECT MAX(CODIGO) FROM dbo.ELEMENTOS WHERE SOCIEDAD = " & "'" & Session("XXSOCIEDAD") & "'"
            Dim Total As Integer
            Comando.CommandText = Cadena
            Try
                If IsDBNull(Comando.ExecuteScalar()) Then Total = 0 Else Total = Comando.ExecuteScalar()
            Catch
                Total = 0
            End Try
            Session("XCodigo") = Total + 1
            FElemento.InsertItem(True)
        Catch ex As Exception
            MensajeError.Text = "Error al insertar en Elemento - Mensaje de Error : " & ex.Message
        End Try
    End Sub

    Protected Sub FElemento_PageIndexChanging(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FElemento.PageIndexChanging

    End Sub

    Protected Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Session("XDetalle") = 2
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Session("XDetalle") = 3
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        Session("XDetalle") = 4
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        Session("XDetalle") = 5
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        Session("XDetalle") = 6
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        Session("XDetalle") = 7
        Response.Redirect("/DetalleFicha.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Sociedad_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub Sociedad_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Sociedad_DataBound1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Codigo_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XXSociedad") = Session("BSOCIEDAD")
    End Sub

    Protected Sub X3_NOTARIO_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X2_TIPO_PROVINCIA_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub X2_TIPO_PROVINCIA_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("X2_TIPO_PROVINCIA") = sender.Text
    End Sub

    Protected Sub X2_TIPO_PROVINCIA_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub X2_TIPO_PROVINCIA_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)
    End Sub

    Protected Sub X2_TIPO_PROVINCIA_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("X2_TIPO_PROVINCIA") = sender.Text
    End Sub

    Protected Sub X2_TIPO_LOCALIDAD_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)
  
    End Sub

    Protected Sub Button1_Click1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Button10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub


    Protected Sub Editar(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XPanel") = 2
        Response.Redirect("/FichaInmueble.aspx")
    End Sub

    Protected Sub Baja(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim msg As String
        Dim title As String
        Dim style As MsgBoxStyle
        Dim resultado As MsgBoxResult
        'msg = "¿Esta Vd. Seguro de querer eliminar este Inmueble y toda la Información Relacionada con él?"
        'style = MsgBoxStyle.DefaultButton2 Or _
        'MsgBoxStyle.Critical Or MsgBoxStyle.YesNo
        'title = "CONFIRMACION ELIMINACIÓN INMUEBLE"
        'resultado = MsgBox(msg, style, title)
        'If resultado = MsgBoxResult.Yes Then
        Try
                'Grabación de Datos en el Histórico
                With Borrar
                    Dim Comando As New SqlClient.SqlCommand
                    Comando.Connection = Conexion
                    'Eliminación Posibles Asociaciones
                    Comando.CommandText = "DELETE FROM dbo.ASOCIAR_GRUPO_INTERNO_INMUEBLE WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.Parameters.Add(New System.Data.SqlClient.SqlParameter("@SOCIEDAD", System.Data.SqlDbType.VarChar, 10, "SOCIEDAD"))
                    Comando.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CODIGO", System.Data.SqlDbType.VarChar, 10, "CODIGO"))
                    Comando.Parameters("@SOCIEDAD").Value = Session("BSociedad")
                    Comando.Parameters("@CODIGO").Value = Session("BCodigo")
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Datos_Economicos
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_DATOS_ECONOMICOS WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Datos_Uso
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_DATOS_USO WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Documentacion
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_DOCUMENTACION WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Estado
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_ESTADO WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Explotacion
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_EXPLOTACION WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Relacionados
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_RELACIONADOS WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Tipologia
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_TIPOLOGIA WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                    'Eliminación Elementos_Uso_Urbanistico
                    Comando.CommandText = "DELETE FROM dbo.ELEMENTOS_USO_URBANISTICO WHERE SOCIEDAD = @SOCIEDAD AND CODIGO = @CODIGO "
                    Comando.ExecuteNonQuery()
                End With
                'Eliminación Elementos
                FElemento.DeleteItem()
                ContextUtil.SetComplete()
            Catch ex As Exception
                MensajeError.Text = "Se produjo un error durante la operación de borrado, se realizara rollback"
                ContextUtil.SetAbort()
            End Try
        'End If
        Session("XPanel") = 0
        Response.Redirect("/Inmuebles.aspx")
    End Sub

    Protected Sub Actualizar(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            FElemento.UpdateItem(True)
            Session("XPanel") = 0
            Response.Redirect("/FichaInmueble.aspx")
        Catch ex As Exception
            MensajeError.Text = "Error al Actualizar el Elemento - Mensaje de Error : " & ex.Message
        End Try
    End Sub

    Protected Sub Cancelar(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XPanel") = 0
        Response.Redirect("/FichaInmueble.aspx")
    End Sub

    Protected Sub Sociedad_Init1(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("XXSociedad") = Session("BSOCIEDAD")
    End Sub

 

    Protected Sub Button2_Click1(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("/Menu.aspx")
    End Sub



    Protected Sub Button20_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("Navegar") = 0
        'Siempre uno porque solo hay un grid en Navegación.
        Session("NvXDetalle") = 1
        Response.Redirect("/NavInmueble.aspx")
    End Sub





    Protected Sub X2_TIPO_PROVINCIA_DataBound1(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim ddl1 As DropDownList = FElemento.FindControl("X2_TIPO_PROVINCIA")
        Session("X2_TIPO_PROVINCIA") = ddl1.Text
        Dim ddl2 As DropDownList = FElemento.FindControl("X2_TIPO_LOCALIDAD")
        ddl2.Items.Clear()
        ddl2.Items.Add("")
        ddl2.SelectedIndex = -1
        ddl2.DataBind()
    End Sub





    Protected Sub FElemento_DataBound(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FElemento.DataBound
        If FElemento.CurrentMode = FormViewMode.Edit Then
            Dim Dv As System.Data.DataRowView = FElemento.DataItem
            Dim ddl2 As DropDownList = FElemento.FindControl("X2_TIPO_LOCALIDAD")
            If Not IsDBNull(Dv("2_TIPO_LOCALIDAD")) Then ddl2.SelectedValue = Dv("2_TIPO_LOCALIDAD")
        End If
    End Sub

    Protected Sub FElemento_ItemUpdating1(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FElemento.ItemUpdating
        Dim dv As System.Data.DataRowView = FElemento.DataItem
        Dim ddl2 As DropDownList = FElemento.FindControl("X2_TIPO_LOCALIDAD")
        Dim dd1 As TextBox = FElemento.FindControl("X6_DESCRIPCION_CORTA")
        Dim dd2 As TextBox = FElemento.FindControl("X6_DESCRIPCION_LARGA")
        Dim dd3 As TextBox = FElemento.FindControl("X3_PROTOCOLO")
        Dim dd4 As TextBox = FElemento.FindControl("X4_NUM_FINCA")
        Dim dd5 As TextBox = FElemento.FindControl("X5_REF_CATASTRAL")
        Dim dd6 As TextBox = FElemento.FindControl("OBSERVACIONES_GENERALES")

        Try

            e.NewValues("6_DESCRIPCION_CORTA") = Trim(dd1.Text)
            e.NewValues("6_DESCRIPCION_LARGA") = Trim(dd2.Text)
            e.NewValues("3_PROTOCOLO") = Trim(dd3.Text)
            e.NewValues("4_NUM_FINCA") = Trim(dd4.Text)
            e.NewValues("5_REF_CATASTRAL") = Trim(dd5.Text)
            e.NewValues("OBSERVACIONES_GENERALES") = Trim(dd6.Text)

            ddl2.DataBind()
            e.NewValues("2_TIPO_LOCALIDAD") = ddl2.SelectedValue
        Catch ex As Exception
            MensajeError.Text = "Error al actualizar el Elemento - Mensaje de Error : " & ex.Message
        End Try
    End Sub


    Protected Sub Sociedad_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X6_DESCRIPCION_CORTA_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X6_DESCRIPCION_CORTA_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Codigo_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X6_DESCRIPCION_LARGA_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub X3_FECHA_DataBinding(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Codigo_DataBinding1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub SqlDataSource3_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

    End Sub
End Class