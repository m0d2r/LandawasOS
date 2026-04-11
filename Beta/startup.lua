-- vars
local orange = colors.orange
local white = colors.white
local green = colors.green
local version = "Build: 4"
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
print(version)
print(autor)
term.setTextColor(colors.orange)
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
term.setCursorPos(1,8)
print("You can use progrmas to show list of programs")

-- program loop
term.setCursorPos(1,8)
while true do
    -- User
    term.setTextColor(green)
    write("LandaWasOS")
    term.setTextColor(white)
    write(" > ")
    
    local input = read()
    
    -- Build in commands
    if input == "exit" then
        break

    elseif input == "fetch" then
        write("OS: ")
        term.setTextColor(green)
        print("LandaWasOS")
        term.setTextColor(white)
        write("OS Version: ")
        term.setTextColor(green)
        print(version)
        print("autor", autor)
        term.setTextColor(white)
        sleep(1)
        
    elseif input == "reboot" then
        term.setTextColor(orange)
        print("Rebooting...")
        sleep(1)
        os.reboot()
    
    elseif input == "shutdown" then
        tern.setTextColor(orange)
        print("Shutting down...")
        sleep(1)
        os.shutdown()
    
    else
        shell.run(input)
    end
end