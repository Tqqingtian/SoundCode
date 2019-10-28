---@class StructTest : System.ValueType
local m = {}

---@param a number
---@param b any
---@return UnityEngine.GameObject
function m:GetGo(a, b) end

---@virtual
---@return string
function m:ToString() end

---@return string
function m:Proxy() end

StructTest = m
return m
