---@class UnityEngine.SendMouseEvents.HitInfo : System.ValueType
---@field public target UnityEngine.GameObject
---@field public camera UnityEngine.Camera
local m = {}

---@param name string
function m:SendMessage(name) end

---@static
---@param exists UnityEngine.SendMouseEvents.HitInfo
---@return boolean
function m.op_Implicit(exists) end

---@static
---@param lhs UnityEngine.SendMouseEvents.HitInfo
---@param rhs UnityEngine.SendMouseEvents.HitInfo
---@return boolean
function m.Compare(lhs, rhs) end

UnityEngine.SendMouseEvents.HitInfo = m
return m
