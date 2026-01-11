term.clear()
term.setCursorPos(1,1)

-- cůear
textutils.slowPrint("---------------------------------------------------")
print("Cleaming: UpdateBeta.lua...")
shell.run("delete UpdateBeta.lua")
print("File deleted!")
print("Cleaming: start.lua...")
shell.run("delete start.lua")
print("File deleted!")
print("Cleaming: AutoUpd.lua...")
shell.run("delete AutoUpd.lua")

print("3 file/s deleted.")
textutils.slowPrint("---------------------------------------------------")