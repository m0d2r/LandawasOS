print("Checking for updates..")
print("Installing Updates...")

-- StartUp update
shell.run("delete start.lua")
shell.run("delete startup.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua start.lua")
shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua startup.lua")

print("Start.lua has been updated")
print("Startup.lua has been updated")
sleep(1)
shell.run("start.lua")
