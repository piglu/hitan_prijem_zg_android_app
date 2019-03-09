B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Service
Version=7.3
@EndOfDesignText@
#Region  Service Attributes 
	#StartAtBoot: False
	#ExcludeFromLibrary: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.
	Dim DBFileName As String			: DBFileName = "hp.db"
	Dim DBFileDir As String				: DBFileDir = File.DirInternal
	Dim DBTableName1 As String			: DBTableName1 = "cetvrti"
	Dim DBTableName2 As String			: DBTableName2 = "odjeli"
	Dim DBTableName3 As String			: DBTableName3 = "bolnice"
	Dim DBTableName4 As String			: DBTableName4 = "tagovi"
	Dim DBTableName5 As String			: DBTableName5 = "dz_centar"
	Dim DBTableName6 As String			: DBTableName6 = "dz_istok"
	Dim DBTableName7 As String			: DBTableName7 = "dz_zapad"
	Dim DBTableName8 As String			: DBTableName8 = "hp"
	Dim DBTableName9 As String			: DBTableName9 = "md"
	Dim DBTableName10 As String			: DBTableName10 = "duzs"
	Dim upit As SQL
End Sub

Sub Service_Create
	'This is the program entry point.
	'This is a good place to load resources that are not specific to a single activity.
	If File.Exists(DBFileDir, DBFileName) = False Then
		DBFileDir = DBUtils.CopyDBFromAssets(DBFileName)
	End If

	upit.Initialize(DBFileDir, DBFileName, True)
End Sub

Sub Service_Start (StartingIntent As Intent)

End Sub

'Return true to allow the OS default exceptions handler to handle the uncaught exception.
Sub Application_Error (Error As Exception, StackTrace As String) As Boolean
	Return True
End Sub

Sub Service_Destroy

End Sub
