-- Variables
local Type_install
local choice
local reboot

-- Ask
print("Uninstall LandaWasOS. Y/N")
choice = read()

-- Uninstall
if choice == "y" then
    print("Uninstalling: clearner.lua")
    shell.run("delete clearner.lua")
    print("Uninstalling: programs.lua")
    shell.run("delete programs.lua")
    print("Uninstalling: startup.lua")
    shell.run("delete startup.lua")
    print("Uninstalling: update.lua")
    shell.run("delete update.lua")

    print("Do you wanna uninstall Beta apps")
    Type_install = read()

    -- beta uninstall
    if Type_install == "y" then
        print("Uninstalling beta packeges...")
        shell.run("delete gui.lua")
        shell.run("delete startupBeta.lua")
        shell.run("delete BetaPrograms.lua")
        shell.run("delete uninstall.lua")

    print("Uninstalling: uninstall.lua")
    shell.run("delete uninstall.lua")

else
    print("Uninstallation canceled!")

print("LandaWasOS is uninstalled please restart the computer. Y/N")
reboot = read()

-- Reboot
if reboot == "y" then
    os.reboot()
else
    print("Reboot canceled!")
end