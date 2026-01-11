-- information
os.setComputerLabel("Landawas Operating system")
print("installer version: 0.1")
term.setCursorPos(1,1)
sleep(3)

term.clear()
print("Welcome to LandawasOS easy installation script\nTHIS IS SCRIPT IS EARLY DEVELEPOMENT PLEASE IGNOR BUGS")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs.lua Programs.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/cleaner.lua cleaner.lua")
shell.run("delete install.lua")
term.clear()

-- Reboot
print("Reboot?")
local reboot_re
reboot_re = read()
if reboot_re == "y" then
    os.reboot()
else
    print("reboot stopped")
end