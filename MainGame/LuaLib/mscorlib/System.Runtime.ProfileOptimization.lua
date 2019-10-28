---@class System.Runtime.ProfileOptimization : System.Object
local m = {}

---@static
---@param directoryPath string
function m.SetProfileRoot(directoryPath) end

---@static
---@param profile string
function m.StartProfile(profile) end

System.Runtime.ProfileOptimization = m
return m
