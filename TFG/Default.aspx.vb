Partial Public Class _Default
    Inherits System.Web.UI.Page

    Public fconexion As New SqlClient.SqlConnection

    Protected Sub Login_Authenticate(ByVal sender As System.Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login.Authenticate


        'fconexion.ConnectionString = "Data Source=LABESTIAOSCURA;Initial Catalog=ACS_CONSTRUCCION;Integrated Security=True"
        fconexion.ConnectionString = "Data Source=WIN-LAAQ6PICNV6;Initial Catalog=GESTOR_ACTIVOS;Persist Security Info=True;User ID=CONEXION;Password=ProyectoTFG@2017"
        Session("XConexion") = fconexion
        Session("XConexionString") = fconexion.ConnectionString
        Session("XConexionString2") = fconexion.ConnectionString
        Session("XConexion").Open()

        Dim Comando As New SqlClient.SqlCommand
        Comando.Connection = Session("XConexion")
        '***Acceso***'
        Comando.CommandText = "SELECT COUNT(*) AS TOTAL FROM dbo.CODIGO_RESPONSABLE WHERE USUARIO = @USUARIO AND CLAVE = @CLAVE "
        Comando.Parameters.Add(New System.Data.SqlClient.SqlParameter("@USUARIO", System.Data.SqlDbType.VarChar, 10, "USUARIO"))
        Comando.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CLAVE", System.Data.SqlDbType.VarChar, 10, "CLAVE"))
        Comando.Parameters("@USUARIO").Value = Login.UserName
        Comando.Parameters("@CLAVE").Value = Login.Password



        Dim Total As Integer
        If IsDBNull(Comando.ExecuteScalar()) Then Total = 0 Else Total = Comando.ExecuteScalar()


        '***Derechos *** CENTROS'
        Comando.CommandText = "SELECT DISTINCT COUNT(*) AS TOTAL FROM dbo.derechos_totales WHERE USUARIO = @USUARIO AND CENTRO='TODOS     ' "
        Comando.Parameters("@USUARIO").Value = Login.UserName

        Dim TCentros As Integer
        If IsDBNull(Comando.ExecuteScalar()) Then TCentros = 0 Else TCentros = Comando.ExecuteScalar()

        '***Derechos *** SOCIEDADES'
        Comando.CommandText = "SELECT COUNT(*) AS TOTAL FROM dbo.derechos_totales WHERE USUARIO = @USUARIO AND SOCIEDAD='TODAS     ' "
        Comando.Parameters("@USUARIO").Value = Login.UserName

        Dim TSociedades As Integer
        If IsDBNull(Comando.ExecuteScalar()) Then TSociedades = 0 Else TSociedades = Comando.ExecuteScalar()

        '***Derechos *** GRUPOS'
        Comando.CommandText = "SELECT COUNT(*) AS TOTAL FROM dbo.derechos_totales WHERE USUARIO = @USUARIO AND TIPO_GRUPO_SOCIEDAD=0 "
        Comando.Parameters("@USUARIO").Value = Login.UserName

        Dim TGrupos As Integer
        If IsDBNull(Comando.ExecuteScalar()) Then TGrupos = 0 Else TGrupos = Comando.ExecuteScalar()

        Dim TResponsable As Integer
        Comando.CommandText = "SELECT TIPO_RESPONSABLE AS TOTAL FROM dbo.CODIGO_RESPONSABLE WHERE USUARIO = @USUARIO"
        Comando.Parameters("@USUARIO").Value = Login.UserName
        If IsDBNull(Comando.ExecuteScalar()) Then TResponsable = 0 Else TResponsable = Comando.ExecuteScalar()


        Session("TCentros") = TCentros
        Session("TSociedades") = TSociedades
        Session("TGrupos") = TGrupos
        Session("TResponsable") = TResponsable


        If Total = 1 Then
            Dim Pagina As String
            Pagina = "/Menu.aspx"
            Session("EntUsuario") = Login.UserName
            Response.Redirect(Pagina)
        End If

    End Sub



    Private Sub InitializeComponent()

    End Sub



    Private Sub SqlC_InfoMessage(ByVal sender As System.Object, ByVal e As System.Data.SqlClient.SqlInfoMessageEventArgs)

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        conexion = Session("XConexion")

        If Not Page.IsPostBack Then
            '-----------------------------------------------------------------------------------------'
            Session("Status") = ""
            'NOTAS TRABAJOS A REALIZAR----------------------------------------------------------------'
            '-Matriz para claves y campos datakeys
            'Corregir fuentes en edicion
            'Posicionarse en el texto que corresponda en el datagrid
            'Eliminar todos los select mediante OOP
            'Corregir tamaños campos 
            '-----------------------------------------------------------------------------------------'
        End If
    End Sub

    Private Sub _Default_CommitTransaction(sender As Object, e As EventArgs) Handles Me.CommitTransaction

    End Sub

    Private Sub _Default_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete

    End Sub
End Class