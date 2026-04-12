term.clear()
term.setCursorPos(1,1)

-- vars
local ans
local reboot_re
local type_install
local ver = "V0.1.1"

-- vars colors
local green = colors.green
local white = colors.white
local red = colors.red

-- Update all
print("Software updater", ver)
print("Do you want to update to the latest release:\nAvailable r/b")

type_install = read()
if type_install == "r" then
    print("Updating System apps...")

    -- Files delete
    shell.run("delete clean.lua")
    shell.run("delete startup.lua")
    shell.run("delete commands.lua")
    term.clear()
    term.setTextColor(green)
    print("Old files has been deleted")
    term.setTextColor(white)

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/commands.lua commands.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs/clean.lua clean.lua")
    term.setTextColor(green)
    print("All updates has been installed sucesffuly")
    term.setTextColor(white)
    
    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        term.setTextColor(red)
        print("Restart Canceled.")
        term.setTextColor(white)
    end
end

if type_install == "b" then
    print("Deleting old System apps...")

    -- Files delete
    shell.run("delete gui.lua")
    shell.run("delete startup.lua")
    shell.run("delete SysActions.lua")
    term.clear()
    
    term.setTextColor(green)
    print("Old files has been deleted")
    print("Downloading new System apps...")
    term.setTextColor(white)
    
    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/SysActions.lua SysActions.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Beta/shell.lua shell.lua")
    term.setTextColor(green)
    print("All Beta Updates has been installed Sucesffuly")
    term.setTextColor(white)

    -- Reboot
    print("Restartt Y/N:")
    reboot_re = read()
    if reboot_re == "y" then
        os.reboot()
    else
        term.setTextColor(red)
        print("Restart Canceled.")
        term.setTextColor(white)
    end
else
    term.setTextColor(red)
    print("Update canceled!")
    term.setTextColor(white)
end
