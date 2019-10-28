---@class UnityEngine.TrackedReference : System.Object
local m = {}

---@static
---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return boolean
function m.op_Equality(x, y) end

---@static
---@param x UnityEngine.TrackedReference
---@param y UnityEngine.TrackedReference
---@return boolean
function m.op_Inequality(x, y) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param exists UnityEngine.TrackedReference
---@return boolean
function m.op_Implicit(exists) end

UnityEngine.TrackedReference = m
return m
