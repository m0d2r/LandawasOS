-- vars colors
local orange = colors.orange
local white = colors.white
local green = colors.green
local gray = colors.gray
local lime = colors.lime

-- System vars
local version = "Build: 10"
local autor = "By m0d2r"
local line = "---------------------------------------------------"

-- install update for update.lua
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
term.setCursorPos(1,18)
print(line)
sleep(2)
term.clear()

-- Text
term.setCursorPos(1,1)
print(line)
term.setCursorPos(1,18)
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
term.clear()
term.setCursorPos(1,1)
print("You can use progrmas to show list of programs")
sleep(1)

-- program loop
term.setCursorPos(1,2)
while true do
    -- User
    term.setTextColor(green)
    write("LandaWasOS")
    term.setTextColor(white)
    write(" > ")
    
    local input = read()
    
    --system info
    if input == "fetch" then
        write("OS: ")
        term.setTextColor(green)
        print("LandaWasOS (BETA)")
        term.setTextColor(white)
        write("OS Version: ")
        term.setTextColor(green)
        print(version)
        print("autor", autor)
        term.setTextColor(white)
        sleep(1)
    
    -- shutdown
    elseif input == "Power" then
        print("Power options: \n1. r - reboot\n2. s - shutdown\n3. c - cancel")
        local input = read()

        if input == "r" then
            print("rebooting...")
            sleep(1)
            os.reboot()

        elseif input == "s" then 
            print("Shutting down...")
            sleep(1)
            os.shutdown()

        elseif input == "c" then
        end
    else
        shell.run(input)
    end
end