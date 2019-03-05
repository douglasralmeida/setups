; Instalador personalizado do pdf24 8.8.2

[Setup]
DisableReadyMemo=True
AppName=PDF24
AppVersion=8.8.2
CreateAppDir=False
UsePreviousGroup=False
AppendDefaultGroupName=False
Uninstallable=no
VersionInfoVersion=8.8.2
OutputBaseFilename=pdf24
WizardSmallImageFile=inssdigital_ico.bmp

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
Source: "pdf24-882.msi"; DestDir: "{tmp}"; DestName: "pdf24setup.msi"; Flags: deleteafterinstall
Source: "inssdigital_logo.jpg"; DestDir: "{pf32}\PDF24"; DestName: "logo.jpg"
Source: "logoclick.reg"; DestDir: "{tmp}"; Flags: deleteafterinstall

[Run]
Filename: "msiexec"; Parameters: "/i {tmp}\pdf24setup.msi /l 1046 AUTOUPDATE=No FAXPRINTER=No REGISTERREADER=No /qb!"; StatusMsg: "Configurando o PDF24...";
Filename: "reg"; Parameters: "import {tmp}\logoclick.reg /reg:32"; StatusMsg: "Salvando configurações...";

[Registry]
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: string; ValueName: "Language"; ValueData: "PortugueseBrazilian"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: string; ValueName: "LogoClickUrl"; ValueData: "http://10.32.97.160/"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoCloudPrint"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoEmbeddedBrowser"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoFax"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoFaxProfile"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoMail"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoOCR"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoOnlineConverter"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoOnlinePdfTools"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoPDF24MailInterface"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint"; ValueType: dword; ValueName: "NoScreenCapture"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint\Services\PDF"; ValueType: dword; ValueName: "LoadInCreatorIfOpen"; ValueData: "1"; Flags: createvalueifdoesntexist
Root: "HKLM32"; Subkey: "SOFTWARE\PDFPrint\Services\PDF"; ValueType: string; ValueName: "Handler"; ValueData: "creator"; Flags: createvalueifdoesntexist