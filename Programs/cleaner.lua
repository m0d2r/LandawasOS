-- vars
local Type_install
local choice

-- Startup
term.clear()
term.setCursorPos(1,1)
print("Cleaner version 0.4.1")

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
else
    print("Beta files are not clearned!")
end

print("System has been clearned.")
textutils.slowPrint("---------------------------------------------------")