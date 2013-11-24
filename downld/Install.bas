Dim As String link1 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/OpenJDK.7z"

Dim As String link2 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Busybox.7z"

Dim As String link3 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/GCC.7z"

Dim As String link4 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Groovy.7z"

Dim As String link5 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/IGCC.7z"

Dim As String link6 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JavaRepl.7z"

Dim As String link7 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JRuby.7z"

Dim As String link8 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Jython.7z"

Dim As String wget = "wget\wget.exe -dc"
ChDir ExePath


? "Welcome to SIMPLL installer"
? "This process will take time so please be patient"
?
?

? "Downloading OpenJDK.."

Shell(wget + " " + link1)

? "Downloading Busybox.."

Shell(wget + " " + link2)

? "Downloading GCC.."

Shell(wget + " " + link3)

? "Downloading Groovy.."

Shell(wget + " " + link4)

? "Downloading IGCC.."

Shell(wget + " " + link5)

? "Downloading JavaRepl.."

Shell(wget + " " + link6)

? "Downloading JRuby.."

Shell(wget + " " + link7)

? "Downloading Jython.."

Shell(wget + " " + link8)

? "Downloading Complete"
? "Extracting..."

Shell("7zip\7z x -an -ai!*.7z")

? "Extracting Completed"
? "Cleaning up..."

Shell("del /F /Q *.7z")

? "All complete"
