term.clear()
term.setCursorPos(1,1)

-- install update
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

-- boot info
term.write("Loading Software ")
textutils.slowPrint(".....")
term.clear()
term.setCursorPos(1,1)

-- system info
term.clear()
term.setCursorPos(1,1)
term.setTextColour(colors.lime)
term.write("LandawasOS V0.6.2.1")
term.setTextColour(colors.white)
print(" by: m0d3r")

-- Label
os.setComputerLabel("Landawas Operating system")
