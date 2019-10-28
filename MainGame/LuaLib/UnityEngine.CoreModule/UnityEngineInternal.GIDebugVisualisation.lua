---@class UnityEngineInternal.GIDebugVisualisation : System.Object
---@field public cycleMode boolean @static
---@field public pauseCycleMode boolean @static
---@field public texType UnityEngineInternal.GITextureType @static
local m = {}

---@static
function m.ResetRuntimeInputTextures() end

---@static
function m.PlayCycleMode() end

---@static
function m.PauseCycleMode() end

---@static
function m.StopCycleMode() end

---@static
---@param skip number
function m.CycleSkipSystems(skip) end

---@static
---@param skip number
function m.CycleSkipInstances(skip) end

UnityEngineInternal.GIDebugVisualisation = m
return m
