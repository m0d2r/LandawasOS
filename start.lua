print("Updates has been installed....")
sleep(1)

term.clear()
term.setCursorPos(1,1)
disk.setLabel("disk", "Landawas Operating System")

shell.run("delete startup.lua")
term.clear()
term.setCursorPos(1,1)
local sucess =  shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua startup.lua")
term.clear()
term.setCursorPos(1,1)

-- OS info
term.setTextColour(colors.lime)
term.write("LandawasOS V0.02.9")
term.setTextColour(colors.white)
print(" m0d3r")

--boot info
term.write("Loading system:")
textutils.slowPrint("....")

print("")
print("Warning: Beta versions may be unstable and buggy")