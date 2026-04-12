-- Variables
local type_install
local choice
local reboot
local input_name
local file_type = ".lua"
local files = fs.list("/")

-- Startup
term.clear()
term.setCursorPos(1,1)

-- Ask
print("1 = uninstall os\n2 = OS clear\n3. Rename system")
choice = read()

-- Uninstall
if choice == "1" then
    for del_files in ipairs(files) do
        if files:sub(-#file_type) == file_type then
            fs.delete(del_files)
            print("Deleted file: del files")
        end
    
    os.reboot()
    
elseif choice == "2" then
    textutils.slowPrint("---------------------------------------------------")

    -- Release clear
    print("Clearning Unused files from updates")
    shell.run("delete UpdateBeta.lua")
    shell.run("delete start.lua")
    shell.run("delete AutoUpd.lua")
    shell.run("delete install.lua")
    shell.run("delete startupBeta.lua")
    shell.run("delete uninstall.lua")
    shell.run("delete startupBeta.lua")
    shell.run("delete gui.lua")
    shell.run("delete programs.lua")

    print("System has been clearned.")
    textutils.slowPrint("---------------------------------------------------")
    end

elseif choice == "3" then
    print("Select your name:")
    input_name = read()
    if input_name == "" then
        os.setComputerLabel(input_name)
    else
        print("Name cannot be applied, cannot be empty...")
    end
else
    print("Invalid operation, select a correct number: ")
end