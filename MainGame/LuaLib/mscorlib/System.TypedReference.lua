---@class System.TypedReference : System.ValueType
local m = {}

---@static
---@param target any
---@param flds System.Reflection.FieldInfo[]
---@return System.TypedReference
function m.MakeTypedReference(target, flds) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@static
---@param value System.TypedReference
---@return any
function m.ToObject(value) end

---@static
---@param value System.TypedReference
---@return System.Type
function m.GetTargetType(value) end

---@static
---@param value System.TypedReference
---@return System.RuntimeTypeHandle
function m.TargetTypeToken(value) end

---@static
---@param target System.TypedReference
---@param value any
function m.SetTypedReference(target, value) end

System.TypedReference = m
return m
