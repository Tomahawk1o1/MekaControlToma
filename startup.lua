local rla = peripheral.find("fissionReactorLogicAdapter")

local programName = "TomaMekaReactor.lua"
local programCode = "8vWVGYvn"
local index = "mekastartup"

if (fs.exists(programName) == false) then
    shell.run("rm " .. programName)
    shell.run("pastebin get " .. programCode .. " " .. programName)
end

shell.run(programName .. " " .. index)

if shell.run() == false then
    rla.scram()
end
