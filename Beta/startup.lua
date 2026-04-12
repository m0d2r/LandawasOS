-- vars colors
local orange = colors.orange
local white = colors.white
local green = colors.green
local gray = colors.gray
local lime = colors.lime

-- System vars
local version = "Build: 8"
local autor = "By m0d2r"
local line = "---------------------------------------------------"

-- install update
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

-- Start up
term.setTextColor(orange)
term.setBackgroundColor(gray)
term.clear()

-- Text
term.setCursorPos(1,1)
print(line)
term.setTextColour(lime)

print("LandaWasOS GUI")
print(version)
print(autor)

term.setTextColor(orange)
term.setCursorPos(1,19)
print(line)
sleep(2)
term.clear()

-- Text
term.setCursorPos(1,1)
print(line)
term.setCursorPos(1,19)
print(line)
term.setCursorPos(1,2)
term.setTextColor(white)

-- Status
term.write("Starting services")
textutils.slowPrint(".........")
term.write("Starting System")
textutils.slowPrint(".......")
term.write("Starting shell")
textutils.slowPrint("......")
term.write("Loading system information")
textutils.slowPrint("..")
term.write("Loading commands")
textutils.slowPrint("....")
term.write("Loading GUI")
textutils.slowPrint("......")

-- Information
term.setCursorPos(1,9)
print("You can use progrmas to show list of programs")
sleep(1)

-- program loop
term.setCursorPos(1,8)

shell.run("shell.lza")