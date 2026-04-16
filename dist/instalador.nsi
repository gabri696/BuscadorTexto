Name "BuscadorTexto"
OutFile "InstaladorBuscadorTexto.exe"
InstallDir "$PROGRAMFILES\BuscadorTexto"

Section "Instalar"
  SetOutPath "$INSTDIR"
  File "Fuentes_Tarea_U07.jar"

  SetOutPath "$INSTDIR\lib"
  File "lib\swing-layout-1.0.4.jar"

  SetOutPath "$INSTDIR"
  WriteUninstaller "$INSTDIR\desinstalar.exe"

  CreateShortcut "$DESKTOP\BuscadorTexto.lnk" "javaw.exe" '-jar "$INSTDIR\Fuentes_Tarea_U07.jar"'
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\Fuentes_Tarea_U07.jar"
  Delete "$INSTDIR\lib\swing-layout-1.0.4.jar"
  Delete "$DESKTOP\BuscadorTexto.lnk"
  RMDir /r "$INSTDIR"
SectionEnd