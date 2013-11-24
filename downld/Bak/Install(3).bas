dim as string link1 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/OpenJDK.7z"

dim as string link2 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Busybox.7z"

dim as string link3 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/GCC.7z"

dim as string link4 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Groovy.7z"

dim as string link5 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/IGCC.7z"

dim as string link6 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JavaRepl.7z"

dim as string link7 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/JRuby.7z"

dim as string link8 = "http://dl.dropboxusercontent.com/u/17358151/simpllpackages/Jython.7z"

dim as string wget = "wget\wget.exe"
chdir exepath

color 10 
? "Welcome to SIMPLL installer"
? "This process will take time so please be patient"
?
?
color 13
? "Downloading OpenJDK.."
color 7
shell(wget + " " + link1) 
color 13
? "Downloading Busybox.."
color 7
shell(wget + " " + link2) 
color 13
? "Downloading GCC.."
color 7
shell(wget + " " + link3) 
color 13
? "Downloading Groovy.."
color 7
shell(wget + " " + link4) 
color 13
? "Downloading IGCC.."
color 7
shell(wget + " " + link5) 
color 13
? "Downloading JavaRepl.."
color 7
shell(wget + " " + link6) 
color 13
? "Downloading JRuby.."
color 7
shell(wget + " " + link7) 
color 13
? "Downloading Jython.."
color 7
shell(wget + " " + link8) 
color 13
? "Downloading Complete"
? "Extracting..."
color 7
shell("7zip\7z x -an -ai!*.7z")
color 13
? "Extracting Completed"
? "Cleaning up..."
color 7
shell("del /F /Q *.7z")
color 13
? "All complete"
