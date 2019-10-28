---@class UnityEngine.Experimental.LowLevel.PlayerLoop : System.Object
local m = {}

---@static
---@return UnityEngine.Experimental.LowLevel.PlayerLoopSystem
function m.GetDefaultPlayerLoop() end

---@static
---@param loop UnityEngine.Experimental.LowLevel.PlayerLoopSystem
function m.SetPlayerLoop(loop) end

UnityEngine.Experimental.LowLevel.PlayerLoop = m
return m
