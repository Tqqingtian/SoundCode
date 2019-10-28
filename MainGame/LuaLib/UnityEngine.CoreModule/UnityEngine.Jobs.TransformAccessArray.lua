---@class UnityEngine.Jobs.TransformAccessArray : System.ValueType
---@field public isCreated boolean
---@field public Item UnityEngine.Transform
---@field public capacity number
---@field public length number
local m = {}

---@static
---@param capacity number
---@param desiredJobCount number
---@return UnityEngine.Jobs.TransformAccessArray
function m.Allocate(capacity, desiredJobCount) end

---@virtual
function m:Dispose() end

---@param transform UnityEngine.Transform
function m:Add(transform) end

---@param index number
function m:RemoveAtSwapBack(index) end

---@param transforms UnityEngine.Transform[]
function m:SetTransforms(transforms) end

UnityEngine.Jobs.TransformAccessArray = m
return m
