term.clear()
term.setCursorPos(1,1)

-- vars
local ans
local reboot_re
local type_install

-- Update all
print("Software updater V0.0.3")
print("Do you want to update to the latest release:\nAvailable r/b")

type_install = read()
if type_install == "r" then
    print("Updating System apps...")

    -- Files delete
    shell.run("delete cleaner.lua")
    shell.run("delete startup.lua")
    shell.run("delete programs.lua")
    term.clear()
    print("Old files has been deleted")

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/cleaner.lua cleaner.lua")
    print("All updates has been installed succesfuĺy")

    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        print("Restart Canceled.")
    end
end

if type_install == "b" then
    print("Updating System apps...")

    -- Files delete
    shell.run("delete gui.lua")
    shell.run("delete startup.lua")
    shell.run("delete SysActions.lua")
    term.clear()
    print("Old files has been deleted")

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/gui.lua gui.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/SysActions.lua SysActions.lua")
    print("All Beta Updates has been installed Sucesfuly")

    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        print("Restart Canceled.")
    end
else
    print("Update canceled!")
end