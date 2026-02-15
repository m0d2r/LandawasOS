term.clear()
term.setCursorPos(1,1)

-- vars
local ans
local reboot_re
local type_install

-- Update all
print("Software updater V0.0.3")
print("Do you want to update to the latest release:\nAvaible R/B")

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
    print("All updates has been installed successfuĺy")

    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        print("Restart Canceled.")
    end

if type_install == "b" then
    print("Updating System apps...")

    -- Files delete
    shell.run("delete cleaner.lua")
    shell.run("delete startup.lua")
    shell.run("delete programs.lua")
    term.clear()
    print("Old files has been deleted")

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/gui.lua gui.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/uninstall.lua uninstall.lua")
    print("All Beta Updates has been installed successfuĺy")


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