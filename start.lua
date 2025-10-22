term.clear()
term.setCursorPos(1,1)

--boot info
term.write("Loading system ")
textutils.slowPrint("......")

-- info
print("")
print("Warning: Beta versions may be unstable and buggy")
sleep(2)

-- system info
term.clear()
term.setCursorPos(1,1)
term.setTextColour(colors.lime)
term.write("LandawasOS V0.05.1.3 BETA")
term.setTextColour(colors.white)
print(" by: m0d3r")

-- Label
os.setComputerLabel("LandawasOS")