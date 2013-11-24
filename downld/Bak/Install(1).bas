dim as string link1 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/OpenJDK.7z"

dim as string link2 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Busybox.7z"

dim as string link3 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/GCC.7z"

dim as string link4 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Groovy.7z"

dim as string link5 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/IGCC.7z"

dim as string link6 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JavaRepl.7z"

dim as string link7 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JRuby.7z"

dim as string link8 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Jython.7z"

dim as string wget = "wget\wget.exe -dc"
chdir exepath


? "Welcome to SIMPLL installer"
? "This process will take time so please be patient"
?
?

? "Downloading OpenJDK.."

shell(wget + " " + link1) 

? "Downloading Busybox.."

shell(wget + " " + link2) 

? "Downloading GCC.."

shell(wget + " " + link3) 

? "Downloading Groovy.."

shell(wget + " " + link4) 

? "Downloading IGCC.."

shell(wget + " " + link5) 

? "Downloading JavaRepl.."

shell(wget + " " + link6) 

? "Downloading JRuby.."

shell(wget + " " + link7) 

? "Downloading Jython.."

shell(wget + " " + link8) 

? "Downloading Complete"
? "Extracting..."

shell("7zip\7z x -an -ai!*.7z")

? "Extracting Completed"
? "Cleaning up..."

shell("del /F /Q *.7z")

? "All complete"
