local Type_install
local choice

term.clear()
term.setCursorPos(1,1)
print("Cleaner version 0.4")

-- cůear
textutils.slowPrint("---------------------------------------------------")
print("Clearning Unused files from updates")

shell.run("delete UpdateBeta.lua")
shell.run("delete start.lua")
shell.run("delete AutoUpd.lua")
shell.run("delete install.lua")

-- Beta clear
print("Do you want to delete old beta files?: Y/N")
type_install = read("")

if type_install == "y" then
    shell.run("delete startupBeta.lua")
    shell.run("delete uninstall.lua")
else
    print("Beta files was not clearned! Rejectted by the user.")
end

print("System has been clearned.")
textutils.slowPrint("---------------------------------------------------")