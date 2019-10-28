---@class UnityEngine.PropertyName : System.ValueType
local m = {}

---@static
---@param prop UnityEngine.PropertyName
---@return boolean
function m.IsNullOrEmpty(prop) end

---@static
---@param lhs UnityEngine.PropertyName
---@param rhs UnityEngine.PropertyName
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.PropertyName
---@param rhs UnityEngine.PropertyName
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.PropertyName): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(id:number): @static
---@static
---@param name string
---@return UnityEngine.PropertyName
function m.op_Implicit(name) end

---@virtual
---@return string
function m:ToString() end

UnityEngine.PropertyName = m
return m
