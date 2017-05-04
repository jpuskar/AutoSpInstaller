Build with:

```powershell
# zip it up
Compress-Archive -Path .\src\* -DestinationPath .\tools\autospinstaller.zip
choco pack
```