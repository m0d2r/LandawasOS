term.clear()
term.setCursorPos(1,1)

-- vars
local ans
local reboot_re

-- updater
print("Software update V0.0.1")
print("Do you want to update Y/N: ")

ans = read()
if ans == "y" then
    print("Updating your Software and systen...")

    -- Files delete
    shell.run("delete cleaner.lua")
    shell.run("delete startup.lua")
    shell.run("delete programs.lua")
    print("Old files has been deleted")

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/cleaner.lua cleaner.lua")
    print("All updates has been installed successfuĺy")

    -- Reboot
    print("Reboot?")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        print("Restart Canceled.")
    end
else
    print("Update canceled!")
end
