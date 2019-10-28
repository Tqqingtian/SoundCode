---@class UnityEngine.Diagnostics.Utils : System.Object
local m = {}

---@static
---@param crashCategory UnityEngine.Diagnostics.ForcedCrashCategory
function m.ForceCrash(crashCategory) end

---@static
---@param message string
function m.NativeAssert(message) end

---@static
---@param message string
function m.NativeError(message) end

---@static
---@param message string
function m.NativeWarning(message) end

UnityEngine.Diagnostics.Utils = m
return m
