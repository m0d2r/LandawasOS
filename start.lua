term.clear()
term.setCursorPos(1,1)
disk.setLabel("disk", "Landawas Operating System")

-- OS info
term.setTextColour(colors.lime)
term.write("LandawasOS V0.04")
term.setTextColour(colors.white)
print(" by: m0d3r")

--boot info
term.write("Loading system ")
textutils.slowPrint(".....")

local tips = math.random(1)
if tips == 1 then
    print("To see all programs type programs")
end

print("")
print("Warning: Beta versions may be unstable and buggy")