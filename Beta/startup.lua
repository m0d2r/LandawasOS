term.clear()
term.setCursorPos(1,1)

-- Install update
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

-- Boot info
term.write("Loading Software ")
textutils.slowPrint(".....")
term.clear()
term.setCursorPos(1,1)

-- System info
term.clear()
term.setCursorPos(1,1)
term.setTextColour(colors.lime)
term.write("LandawasOS V0.7 beta 2")

-- MOTD
if settings.get("motd.enable") then
    term.setCursorPos(1,2)
    shell.run("/rom/programs/motd")
end

term.setTextColour(colors.white)
print(" by: m0d3r")

-- Label
os.setComputerLabel("Landawas Operating system Beta")
