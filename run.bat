cd build\auth
start "auth" cmd /c dotnet ProjectVindictive.Service.Authentication.dll --usehttps=Certs/TLSCert.pfx --url=http://localhost:5001
cd ..
cd ucm
start "ucm" cmd /c dotnet ProjectVindictive.Service.UserContentManagement.dll --usehttps=Certs/TLSCert.pfx --url=http://localhost:5002
cd ..
cd world
start "world" cmd /c dotnet ProjectVindictive.Service.WorldService.dll --usehttps=Certs/TLSCert.pfx --url=http://localhost:5003