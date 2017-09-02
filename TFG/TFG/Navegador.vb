Imports Microsoft.VisualBasic
Imports System.Web.UI
Imports System.Web.UI.WebControls



Public Class Navegador

    Private Pag As Page


    ' Constructor
    Public Sub New(ByRef Pagina As Page)
        Pag = Pagina
    End Sub

    ' Destructor
    Protected Overrides Sub Finalize()
        Pag = Nothing
    End Sub


    ' Este método se aplica a la ventana padre.
    ' Este método se encarga de abrir una ventana hija
    ' -->>  Como entrada recibe la url de la página a abrir, el ancho y alto de la ventana y determinar si 
    '      ha de estar centrada de forma opcional una serie de strings "yes"|"no"|"auto" 
    '      para determinar la forma de la ventana.
    '
    Public Sub Abrir_Ventana_Hija( _
    ByVal Url As String, ByVal width As Integer, ByVal height As Integer, ByVal CentrarPopUp As Boolean, _
    Optional ByVal toolbar As String = "no", Optional ByVal directories As String = "no", _
    Optional ByVal titlebar As String = "no", Optional ByVal status As String = "no", _
    Optional ByVal resizable As String = "no", Optional ByVal menubar As String = "no", _
    Optional ByVal scrollbars As String = "no")

        Dim strScript As String = String.Empty
        Dim script As String = Abrir_PopUP()

        ' Construcción de los atributos de la ventana
        strScript &= "<script type='text/javascript'> " & vbCrLf
        strScript &= "var atributos='width=" & width & ",height=" & height & ",titlebar=" & titlebar & ","
        strScript &= "toolbar=" & toolbar & ",directories=" & directories & ",status=" & status & ","
        strScript &= "resizable=" & resizable & ",menubar=" & menubar & ", scrollbars=" & scrollbars & "';" & vbCrLf

        ' Centrar la ventana 
        If CentrarPopUp = True Then
            strScript &= "var H = (screen.height - " & height & ") / 2;" & vbCrLf
            strScript &= "var L = (screen.width - " & width & ") / 2;" & vbCrLf
            strScript &= "var fin = ',top='+ H +',left='+ L;" & vbCrLf
            strScript &= "atributos=atributos + fin;" & vbCrLf
        End If

        ' Abrir la ventana
        strScript &= "openChild('" & Url & "',atributos)" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterStartupScript("AbrirPopUp", script)
        'Pag.RegisterStartupScript("VentanaHija", strScript)

    End Sub


    ' Abrir una Ventana Hija
    '
    Private Function Abrir_PopUP() As String

        Dim strScript As String = String.Empty
        strScript &= "<script language='jscript'>" & vbCrLf
        strScript &= "function openChild(URL,winAtts)" & vbCrLf
        strScript &= "{" & vbCrLf
        strScript &= "var winName='child'" & vbCrLf
        strScript &= "myChild= window.open(URL,winName,winAtts);" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "</script>" & vbCrLf

        Return strScript

    End Function


    ' Este método se aplica a la ventana Hija
    ' Este método se encarga de Redireccionar en la ventana Padre cuando se cierra la ventana Hija.
    ' -->> Como entrada recibe la Url de la página padre y un string con las variables de url ** SIN: ? **
    '
    Public Sub EstablecerUrl_VentanaPadre(ByVal url As String, ByVal Variables As String)

        Dim strScript As String = String.Empty
        strScript &= "<script language='jscript'>" & vbCrLf
        strScript &= "var pWin" & vbCrLf
        strScript &= "function setParent(){" & vbCrLf
        strScript &= "pWin = top.window.opener" & vbCrLf
        strScript &= "}" & vbCrLf

        strScript &= "function reloadParent(){" & vbCrLf
        strScript &= "pWin.location.href='" & url & "?" & Variables & "'" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterStartupScript("VentanaHija", strScript)

    End Sub


    ' Este método se aplica a la ventana Hija
    ' Este método inicializa el método de actualizar la ventana padre al cerrar la ventana hija.
    ' -->>  De forma opcional recibe un Integer con el número de segundos que transcurriran 
    '      para cerrar la ventana hija.
    '
    Public Sub ActualizarVentanaPadre_CerrarVentanaHija(Optional ByVal Segundos As Integer = 0)

        Dim strScript As String = String.Empty
        strScript &= "<script languaje='javascript'>" & vbCrLf
        strScript &= "setParent();" & vbCrLf
        strScript &= "reloadParent();" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterStartupScript("Cargar", strScript)
        CerrarPantalla_TimeOut(Segundos)

    End Sub


    ' Método para cerrar la ventana del navegador transcurrido un determinado tiempo.
    ' -->> Como entrada recibe el número de segundos tras los cuales se cerrará la ventana del navegador.
    '
    Public Sub CerrarPantalla_TimeOut(ByVal Segundos As Integer)

        Dim strScript As String = String.Empty
        Segundos = Segundos * 1000

        strScript = "<script type='text/javascript'>" & vbCrLf
        strScript &= "function cerrar() " & vbCrLf
        strScript &= "{" & vbCrLf
        strScript &= "var ventana = window.self" & vbCrLf
        strScript &= "ventana.opener = window.self" & vbCrLf
        strScript &= "ventana.close()" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "setTimeout(""cerrar()"", " & Segundos & ")" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterStartupScript("CerrarVentanaTimeOut", strScript)

    End Sub


    ' Método que Deshabilita el Click derecho del ratón en una página.
    '
    Public Sub Deshabilitar_ClickDerecho()

        Dim strScript As String = String.Empty
        strScript &= "<script language='JavaScript'>" & vbCrLf
        strScript &= "var message='';" & vbCrLf
        strScript &= "function clickIE() {if (document.all) {(message);return false;}}" & vbCrLf
        strScript &= "function clickNS(e) {if " & vbCrLf
        strScript &= "(document.layers||(document.getElementById&&!document.all)) {" & vbCrLf
        strScript &= "if (e.which==2||e.which==3) {(message);return false;}}}" & vbCrLf
        strScript &= "if (document.layers)" & vbCrLf
        strScript &= "{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}" & vbCrLf
        strScript &= "else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}" & vbCrLf
        strScript &= "document.oncontextmenu=new Function(""return false"")" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterClientScriptBlock("noClickDerecho", strScript)

    End Sub


    ' Método que maximiza el tamaño de la ventana del navegador hasta la resolución
    ' que tenga el cliente establecida.
    '
    Public Sub MaximizarVentana_ResolucionCliente()

        Dim strScript As String = String.Empty
        strScript &= "<script language='JavaScript1.2'>" & vbCrLf
        strScript &= "window.moveTo(0,0);" & vbCrLf
        strScript &= "if (document.all) {" & vbCrLf
        strScript &= "top.window.resizeTo(screen.availWidth,screen.availHeight);" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "else if (document.layers||document.getElementById) {" & vbCrLf
        strScript &= "if (top.window.outerHeight<screen.availHeight||top.window.outerWidth<screen.availWidth){" & vbCrLf
        strScript &= "top.window.outerHeight = screen.availHeight;" & vbCrLf
        strScript &= "top.window.outerWidth = screen.availWidth;" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "}" & vbCrLf
        strScript &= "</script>" & vbCrLf

        'Pag.RegisterClientScriptBlock("MaximizarPantalla", strScript)
        
    End Sub


    ' Función que deshabilita la tecla intro en una página.
    '
    Public Sub Deshabilitar_Intro()

        Dim script As String = String.Empty
        script = "<script language = 'javascript'>"
        script &= "function keydown(){"
        script &= "var keycode = event.keyCode;"
        script &= "if (keycode == 13){"
        script &= "return false;"
        script &= "}"
        script &= "}"
        script &= "document.onkeydown = keydown;"
        script &= "</script>"

        'Pag.RegisterClientScriptBlock("noIntro", script)

    End Sub

End Class

'Abrir una Ventana Hija
'Bien para usar esta clase debemos primero abrir una ventana hija de la siguiente forma

Public Class WebForm1

    Inherits System.Web.UI.Page


    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents LinkButton2 As System.Web.UI.WebControls.LinkButton

#Region " Código generado por el Diseñador de Web Forms "

    'El Diseñador de Web Forms requiere esta llamada.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTA: el Diseñador de Web Forms necesita la siguiente declaración del marcador de posición.
    'No se debe eliminar o mover.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: el Diseñador de Web Forms requiere esta llamada de método
        'No la modifique con el editor de código.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Introducir aquí el código de usuario para inicializar la página

        Dim texto As String = Request.QueryString("texto")
        Me.Label1.Text = texto

        Dim Navegador As New Navegador(Me.Page)
        Navegador.Deshabilitar_ClickDerecho()
        Navegador.MaximizarVentana_ResolucionCliente()
        Navegador = Nothing

    End Sub

    Private Sub LinkButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LinkButton1.Click

        Dim Navegador As New Navegador(Me.Page)
        Navegador.Abrir_Ventana_Hija("WebForm2.aspx", 400, 300, True)
        Navegador = Nothing

    End Sub

    Private Sub LinkButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LinkButton2.Click

        Dim Navegador As New Navegador(Me.Page)
        Navegador.Abrir_Ventana_Hija("http://www.google.es", 600, 400, True)
        Navegador = Nothing

    End Sub

End Class

'Como podemos ver la función para abrir ventana hija nos permite aparte de abrir el popup centrado en pantalla, abrir cualquier clase de popup sin necesidad de que se actualice la ventana padre cuando se cierre la hija. 

'Método de actualizar la ventana padre al cerrar la hija 
'Para actualizar la ventana padre al cerrar la hija lo haremos de la siguiente forma 

Public Class WebForm2
    Inherits System.Web.UI.Page

    Private Navegador As New Navegador(Me.Page)

    Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button

#Region " Código generado por el Diseñador de Web Forms "

    'El Diseñador de Web Forms requiere esta llamada.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTA: el Diseñador de Web Forms necesita la siguiente declaración del marcador de posición.
    'No se debe eliminar o mover.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: el Diseñador de Web Forms requiere esta llamada de método
        'No la modifique con el editor de código.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Introducir aquí el código de usuario para inicializar la página

    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Me.TextBox1.Text = "" Then
            Me.TextBox1.Text = "Escriba algo aquí"
        Else
            Navegador.EstablecerUrl_VentanaPadre("webForm1.aspx", "texto=" & Me.TextBox1.Text.Trim)
            Navegador.ActualizarVentanaPadre_CerrarVentanaHija()
            Navegador = Nothing

        End If
    End Sub


End Class

