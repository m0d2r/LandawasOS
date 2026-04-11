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
shell.run("delete cleaner.lua")
shell.run("delete programs.lua")

else
    print("Beta files was not clearned! Rejectted by the user.")
end

print("System has been clearned.")
textutils.slowPrint("---------------------------------------------------")