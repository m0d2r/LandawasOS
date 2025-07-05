term.clear()
term.setCursorPos(1,1)

print("Deleting old files...")

shell.run("delete start.lua")
shell.run("delete startup.lua")
shell.run("delete Programs.lua")

term.clear()
term.setCursorPos(1,1)
print("Start.lua has been deůeted")
print("Startup.lua has been deleted")
print("Programs.lua has been deleted")
sleep(0,3)

term.clear()
term.setCursorPos(1,1)
print("downloading new files...")

shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua start.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs.lua Programs.lua")

term.clear()
term.setCursorPos(1,1)
sleep(0,3)
print("Start.lua has been downloaded")
print("Startup.lua has been downloaded")
print("Programs.lua has been downloaded")

print("Starting start script...")
sleep(1)
shell.run("start.lua")