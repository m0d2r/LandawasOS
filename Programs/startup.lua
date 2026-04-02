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
term.setTextColor(colors.green)
term.write("LandaWasOS V0.7")
term.setTextColor(colors.orange)
term.setCursorPos(1,2)
term.write("By: M0d2r")

-- Information
term.setCursorPos(1,4)
term.setTextColor(colors.white)
print("Type programs for all programs")

-- program loop
term.setCursorPos(1,6)
while true do

    -- User
    term.setTextColor(colors.green)
    write("LandaWasOS")
    term.setTextColor(colors.white)
    write(" > ")
    
    local input = read()
    
    -- Build in commands
    if input == "exit" then
        break
        
    elseif input == "reboot" then
        print("Rebooting...")
        sleep(1)
        os.reboot()
    else
        shell.run(input)
    end
end
