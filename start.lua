term.clear()
term.setCursorPos(1,1)
disk.setLabel("disk", "Landawas Operating System")

-- Startup update
shell.run("delete startup.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
if sucess them
    shell.run("startup.lua")
else:
    print("Failed to update AutoUpdater")

-- OS info
term.setTextColour(colors.lime)
term.write("LandawasOS V0.02.2")
term.setTextColour(colors.white)
print(" m0d3r")

--boot info
term.write("Loading system:")
textutils.slowPrint("...")

print("")
print("Warning: Beta versions may be unstable and buggy")