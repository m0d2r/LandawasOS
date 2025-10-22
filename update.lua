term.clear()
term.setCursorPos(1,1)

-- Updater versuin
print("Updater V1.0.0")

-- Updater info
print("Deleting old files...")
shell.run("delete start.lua")
shell.run("delete startup.lua")
shell.run("delete Programs.lua")

print("Downloading new files...")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua start.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs.lua Programs.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/UpdateBeta.lua UpdateBeta.lua")
print("Old files has been deleted successfully.")

print("Start.lua has been downloaded...")
print("Startup.lua has been downloaded...")
print("Programs.lua has been downloaded...")
print("UpdateBeta.lua has been downloaded...")

print("All programs and system modules has been downloaded")

-- startup
print("Starting start script...")
sleep(1)
shell.run("start.lua")