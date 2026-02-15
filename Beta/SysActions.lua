-- Variables
local type_install
local choice
local reboot

-- Startup
term.clear()
term.setCursorPos(1,1)
print("System Actions V0.0.1")

-- Ask
print("1 = uninstall os\n2 = OS clear")
choice = read()

-- Uninstall
if choice == "1" then
    print("Uninstalling packeges...")
    print("Uninstalling: clearner.lua")
    shell.run("delete clearner.lua")
    print("Uninstalling: programs.lua")
    shell.run("delete programs.lua")
    print("Uninstalling: startup.lua")
    shell.run("delete startup.lua")
    print("Uninstalling: update.lua")
    shell.run("delete update.lua")
    print("Do you wanna uninstall Beta apps: Y/N")
    type_install = read()

    -- beta uninstall
    if type_install == "y" then
        print("Uninstalling beta packeges...")
        print("Uninstalling: gui.lua")
        shell.run("delete gui.lua")
        print("Uninstalling: uninstall.lua")
        shell.run("delete uninstall.lua")
    end

    print("Uninstalling: uninstall.lua")
    shell.run("delete uninstall.lua")

    if choice == "2" then
        textutils.slowPrint("---------------------------------------------------")

        -- Release clear
        print("Clearning Unused files from updates")
        shell.run("delete UpdateBeta.lua")
        shell.run("delete start.lua")
        shell.run("delete AutoUpd.lua")
        shell.run("delete install.lua")

        -- Beta clear
        type_install = read("Do you want to clear beta files? Y/N: ")

        if type_install == "y" then
            shell.run("delete startupBeta.lua")
            shell.run("delete uninstall.lua")
            shell.run("delete startupBeta.lua")
        else
            print("Beta files are not clearned!")
        end

        print("System has been clearned.")
        textutils.slowPrint("---------------------------------------------------")
    end
else
    print("Uninstallation canceled!")
end
print("LandaWasOS is uninstalled please restart the computer. Y/N")
reboot = read()

-- Reboot
if reboot == "y" then
    os.reboot()
else
    print("Reboot canceled!")
end
