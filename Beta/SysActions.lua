-- Variables
local type_install
local choice
local reboot
local input_name

-- Startup
term.clear()
term.setCursorPos(1,1)
print("System Actions V0.0.2")

-- Ask
print("1 = uninstall os\n2 = OS clear\n3. Rename system")
choice = read()

-- Uninstall
if choice == "1" then
    print("Uninstalling packeges...")
    shell.run("delete clearner.lua")
    shell.run("delete programs.lua")
    shell.run("delete startup.lua")
    shell.run("delete update.lua")

    -- Ask user about Beta uninstallation
    print("Do you wanna uninstall Beta apps: Y/N")
    type_install = read()

    -- Beta uninstall
    if type_install == "y" then
        print("Uninstalling beta packeges...")
        shell.run("delete gui.lua")
        shell.run("delete uninstall.lua")
        shell.run("delete SysActions.lua")
        print("All Beta packeges has been uninstalled succesfuly")
    end
    
elseif choice == "2" then
    textutils.slowPrint("---------------------------------------------------")

    -- Release clear
    print("Clearning Unused files from updates")
    shell.run("delete UpdateBeta.lua")
    shell.run("delete start.lua")
    shell.run("delete AutoUpd.lua")
    shell.run("delete install.lua")
    shell.run("delete startupBeta.lua")
    shell.run("delete uninstall.lua")
    shell.run("delete startupBeta.lua")

    print("System has been clearned.")
    textutils.slowPrint("---------------------------------------------------")
    end

elseif choice == "3" then
    print("Select your name:")
    input_name = read()
    if input_name == "" then
        os.setComputerLabel(input_name)
    else
        print("Name cannot be ampty")
    end
else
    print("Invalid operation, select a correct number")
end