print("Welcome to LandawasOS easy installation script\nTHIS IS SCRIPT IS EARLY DEVELEPOMENT PLEASE IGNOR BUGS")
print("Install types: All")
ans = read()
if ans == "all" then
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/cleaner.lua cleaner.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/update.lua update.lua")¨
    shell.run("delete install.lua")

    print("Reboot?")
    local reboot_re
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        print("reboot stopped")
    end
end