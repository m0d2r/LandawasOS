print("Checking for updates..")
print("Installing Updates...")

-- StartUp update
shell.run("delete start.lua")
local sucess = shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua start.lua")
if sucess then
    print("Start.lua has been updated")
    shell.run("start.lua")
end