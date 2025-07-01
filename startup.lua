print("Checking for updates..")
print("Installing Updates...")

-- StartUp update
shell.run("delete start.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start. start.lua")¨
print("Start.lua has been updated")
shell.run("start.lua")