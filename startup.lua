term.clear()
term.setCursorPos(1,1)

-- install update
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/update.lua update.lua")

-- boot info
term.write("Loading system ")
textutils.slowPrint(".......")

term.clear()
term.setCursorPos(1,1)

-- info
print("Warning: Beta versions may be unstable and buggy")
sleep(2)

-- system info
term.clear()
term.setCursorPos(1,1)
term.setTextColour(colors.lime)
term.write("LandawasOS V0.05.2.0.2")
term.setTextColour(1)
print(" by: m0d3r")

-- Label
os.setComputerLabel("LandawasOS")
