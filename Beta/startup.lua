-- vars
local orange = colors.orange
local white = colors.white
local green = colors.green
local version = "Build: 2"
local autor = "By m0d2r"

-- install update
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

-- Start up
term.setTextColor(colors.orange)
term.setBackgroundColor(colors.gray)
term.clear()

-- Text
term.setCursorPos(1,1)
print("---------------------------------------------------")
term.setTextColour(colors.lime)
print("LandaWasOS GUI")
print("V0.0.3")
print("by: m0d2r")
term.setTextColor(colors.orange)
term.setCursorPos(1,1)
print("You can use progrmas to show list of programs")
term.setCursorPos(1,18)
print("---------------------------------------------------")
sleep(2)
term.setCursorPos(1,2)

-- Text
term.write("Starting services")
textutils.slowPrint("........")
term.write("Starting System")
textutils.slowPrint(".......")
term.write("Starting shell")
textutils.slowPrint("......")
term.write("Loading system information")
textutils.slowPrint("..")
term.write("Loading commands")
textutils.slowPrint("...")
term.write("Loading GUI")
textutils.slowPrint(".............")

-- Load GUI
print("GUI is comming soon...")