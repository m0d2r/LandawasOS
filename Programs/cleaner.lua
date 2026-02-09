term.clear()
term.setCursorPos(1,1)
print("Cleaner version 0.3")

-- cůear
textutils.slowPrint("---------------------------------------------------")
print("Clearning Unused files from updates")

shell.run("delete UpdateBeta.lua")
shell.run("delete start.lua")
shell.run("delete AutoUpd.lua")
shell.run("delete install.lua")
shell.run("delete Programs.lua")

print("System has been clearned.")
textutils.slowPrint("---------------------------------------------------")