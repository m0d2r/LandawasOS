term.clear()
term.setCursorPos(1,1)

-- updater
print("Manual update V0.0")

local ans
print("Do you want to update Y/N: ")
ans = read()
if ans == "y" then
    print("Updating system...")

    -- Files delete
    shell.run("delete start.lua")
    shell.run("delete startup.lua")
    shell.run("delete Programs.lua")

    -- Files download
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/start.lua start.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/startup.lua startup.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/Programs.lua programs.lua")
    shell.run("wget https://raw.githubusercontent.com/m0d2r/LandawasOS/main/cleaner.lua cleaner.lua")

    print("Starting start script...")
    shell.run("startup.lua")
else
    print("Update canceled!")
end