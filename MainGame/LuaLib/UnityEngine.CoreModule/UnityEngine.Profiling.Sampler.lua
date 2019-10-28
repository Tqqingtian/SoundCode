---@class UnityEngine.Profiling.Sampler : System.Object
---@field public isValid boolean
---@field public name string
local m = {}

---@return UnityEngine.Profiling.Recorder
function m:GetRecorder() end

---@static
---@param name string
---@return UnityEngine.Profiling.Sampler
function m.Get(name) end

---@static
---@param names string[]
---@return number
function m.GetNames(names) end

UnityEngine.Profiling.Sampler = m
return m
