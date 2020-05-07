#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include csv.ahk
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Gui,New
Gui,Add,Text,,Bienvenido al programa de manejo de datos para la empresa
Gui,Add,Text,,Hacer una Cotizacion
Gui,Add,Button,-Wrap,Cotizacion
Gui,Add,Text,,Ir al inventario
Gui,Add,Button,-Wrap,Inventario
Gui,Add,Text,,Manejar Clientes
Gui,Add,Button,-Wrap,Clientes

Gui,Show
return

ButtonCotizacion:
	Run, Template.xlsx
	MsgBox,,,Esto abre la ventana de Cotizaciones
	Gui,Hide
	return 
ButtonInventario:
	CSV_Load(InventarioCSV.csv,"LeInventario",",")
	MsgBox,,,Esto abre el Inventario
	return
ButtonClientes:
	MsgBox,,,Esto abre la ventana de clientes
	return