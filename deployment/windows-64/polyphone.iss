; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{83549E04-CB44-4E12-85B6-9FBBA3B0FE65}
AppName=Polyphone
AppVersion=1.7
AppPublisher=Davy Triponney
AppPublisherURL=http://www.polyphone.fr/
AppSupportURL=http://www.polyphone.fr/
AppUpdatesURL=http://www.polyphone.fr/
ChangesAssociations=yes
DefaultDirName={pf64}\Polyphone
DefaultGroupName=Polyphone
LicenseFile=license.txt
OutputBaseFilename=Polyphone_v1.7_win64  
SetupIconFile=polyphone.ico
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french";  MessagesFile: "compiler:Languages\French.isl"
Name: "german";  MessagesFile: "compiler:Languages\German.isl" 
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "polyphone.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\icudt53.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\icuin53.dll"; DestDir: "{app}"; Flags: ignoreversion    
Source: "lib\icuuc53.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\libogg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\libvorbis.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\libvorbisfile.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\portaudio_x64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion   
Source: "lib\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion   
Source: "lib\msvcp120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Polyphone"; Filename: "{app}\polyphone.exe"
Name: "{commondesktop}\Polyphone"; Filename: "{app}\polyphone.exe"; Tasks: desktopicon

[Registry]
Root: HKCR; Subkey: ".sf2"; ValueType: string; ValueName: ""; ValueData: "PolyphoneFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: ".sf3"; ValueType: string; ValueName: ""; ValueData: "PolyphoneFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: ".sfz"; ValueType: string; ValueName: ""; ValueData: "PolyphoneFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: ".sfArk"; ValueType: string; ValueName: ""; ValueData: "PolyphoneFile"; Flags: uninsdeletevalue 
Root: HKCR; Subkey: "PolyphoneFile"; ValueType: string; ValueName: ""; ValueData: "soundfont"; Flags: uninsdeletekey 
Root: HKCR; Subkey: "PolyphoneFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\polyphone.exe,1" 
Root: HKCR; Subkey: "PolyphoneFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\polyphone.exe"" ""%1""" 

[Run]
Filename: "{app}\polyphone.exe"; Description: "{cm:LaunchProgram,Polyphone}"; Flags: nowait postinstall skipifsilent

