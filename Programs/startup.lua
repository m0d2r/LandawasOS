-- vars
local orange = colors.orange
local white = colors.white
local green = colors.green

-- Beggining
term.clear()
term.setCursorPos(1,1)

-- install update
print("Updating update.lua")
shell.run("delete update.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")

term.clear()
term.setCursorPos(1,1)

-- Text
term.write("Starting services")
textutils.slowPrint("........")
term.write("Starting System")
textutils.slowPrint(".......")
term.write("Starting shell")
textutils.slowPrint("......")

print("")
print("boot completed...")

-- clean
sleep(1)
term.clear()
term.setCursorPos(1,1)

-- OS info
term.setTextColor(green)
term.write("LandaWasOS V0.7.3")
term.setTextColor(orange)
term.setCursorPos(1,2)
term.write("By: M0d2r")

-- Information
term.setCursorPos(1,4)
term.setTextColor(white)
print("Type programs for all programs")

-- program loop
term.setCursorPos(1,6)
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
        term.setTextcolor(green)
        print("V0.7.3")
        sleep(1)
        term.setTextColor(white)
        
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
