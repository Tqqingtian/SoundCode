---@class System.TypeNames.ATypeName : System.Object
---@field public DisplayName string
local m = {}

---@abstract
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

---@overload fun(other:any): @virtual
---@virtual
---@param other System.TypeName
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

System.TypeNames.ATypeName = m
return m
