---@class System.MulticastDelegate : System.Delegate
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return fun(...:any|any[]):[]
function m:GetInvocationList() end

---@static
---@param d1 fun(...:any|any[]):
---@param d2 fun(...:any|any[]):
---@return boolean
function m.op_Equality(d1, d2) end

---@static
---@param d1 fun(...:any|any[]):
---@param d2 fun(...:any|any[]):
---@return boolean
function m.op_Inequality(d1, d2) end

System.MulticastDelegate = m
return m
