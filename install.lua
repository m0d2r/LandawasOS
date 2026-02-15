-- variables
local reboot_re
local Type_install

-- information
os.setComputerLabel("Landawas Operating system")
print("installer version: 0.2")
term.setCursorPos(1,1)
sleep(3)
term.clear()

print("select install type: r, b")
Type_install = read()

-- Release install
if Type_install == "r" then
    term.clear()
    print("Welcome to LandawasOS easy installation script\nTHIS IS SCRIPT IS EARLY DEVELEPOMENT PLEASE IGNOR BUGS")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/cleaner.lua cleaner.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/update.lua update.lua")
    term.clear()
end 

-- Beta install
if Type_install == "b" then
    term.clear()

    print("Warning: This programs are for testing")
    sleep(2)

    print("Installing all beta packeges...")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/uninstall.lua uninstall.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/gui.lua gui.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/startup.lua startup.lua")

else
    shell.run("start install.lua")
end

-- Reboot
print("Restartt Y/N:")
reboot_re = read()
if reboot_re == "y" then
    os.reboot()
else
    print("reboot stopped")
end
