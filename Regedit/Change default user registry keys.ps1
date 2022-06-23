reg load HKU\Defuser C:\Users\Default\ntuser.dat

New-Item -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\AVDisplay" -Force
New-Item -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\Originals" -Force


New-ItemProperty -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\AVDisplay" -Name "bSmoothZooming" -Value "00000001" -PropertyType DWORD -Force
New-ItemProperty -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\AVDisplay" -Name "bUseThinCode" -Value "00000001" -PropertyType DWORD -Force


New-ItemProperty -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\Originals" -Name "bAntialiasGraphics" -Value "00000001" -PropertyType DWORD -Force
New-ItemProperty -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\Originals" -Name "bAntialiasImages" -Value "00000001" -PropertyType DWORD -Force
New-ItemProperty -Path "Registry::HKEY_USERS\Defuser\Software\Adobe\Acrobat Reader\DC\Originals" -Name "bUsePageCache" -Value "00000001" -PropertyType DWORD -Force

[gc]::Collect()

reg unload HKU\Defuser
