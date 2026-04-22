-- Variables
local type_install
local choice
local reboot
local input_name

-- short
local line = "---------------------------------------------------"

-- Startup
term.clear()
term.setCursorPos(1,1)

-- Ask
print("Sys actions V0.1")
print("1 = uninstall os\n2 = OS clear\n3 = Rename computer")
choice = read()

-- Uninstall
if choice == "1" then
    print("Uninstaller")
    
    print("Do you want to uninstall LandaWasOS?: ")
    choice = read()

    if choice == "y" then
        shell.run("delete update.lua")
        shell.run("delete startup.lua")
        shell.run("delete commands.lua")
        shell.run("delete programs.lua")
        shell.run("delete shell.lua")
        shell.run("delete cůean.lua")
    else
        print("Uninstallation canceled")
    end
    
elseif choice == "2" then
    term.setCursorPos(1,1)
    term.clear()
    
    print(line)
    print("Do you want to clean your system?: Y/N")
    choice = read()

    -- clean
    if choice == "y" then
        print("Clearning Unused files from updates")
        shell.run("delete UpdateBeta.lua")
        shell.run("delete start.lua")
        shell.run("delete cleaner.lua")
        shell.run("delete AutoUpd.lua")
        shell.run("delete install.lua")
        shell.run("delete startupBeta.lua")
        shell.run("delete uninstall.lua")
        shell.run("delete startupBeta.lua")
        shell.run("delete gui.lua")
        shell.run("delete programs.lua")
        shell.run("delete shell.lua")

        print("System has been clearned.")
        print(line)
    else
        print("Operation canceled")
        print(line)
    end

elseif choice == "3" then
    print("New name: ")
    input_name = read()
    if input_name == "" then
        os.setComputerLabel(input_name)
    else
        print("Name cannot be applied, cannot be empty...")
    end
    
else
    print("Invalid operation, select a correct number: ")
end