---@class UnityEngine.Scripting.GarbageCollector : System.Object
---@field public GCMode UnityEngine.Scripting.GarbageCollector.Mode @static
local m = {}

---@static
---@param value fun(obj:UnityEngine.Scripting.GarbageCollector.Mode)
function m.add_GCModeChanged(value) end

---@static
---@param value fun(obj:UnityEngine.Scripting.GarbageCollector.Mode)
function m.remove_GCModeChanged(value) end

UnityEngine.Scripting.GarbageCollector = m
return m
