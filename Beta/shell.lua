-- color vars
local white = colors.white
local green = colors.green

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
    
    --system info
    elseif input == "fetch" then
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
        
    -- reboot
    elseif input == "reboot" then
        term.setTextColor(orange)
        print("Rebooting...")
        sleep(1)
        os.reboot()
    
    -- shutdown
    elseif input == "shutdown" then
        tern.setTextColor(orange)
        print("Shutting down...")
        sleep(1)
        os.shutdown()
    
    else
        shell.run(input)
    end
end