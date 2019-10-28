---@class System.Boolean : System.ValueType
---@field public TrueString string @static
---@field public FalseString string @static
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@overload fun(obj:boolean): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@overload fun(value:boolean): @virtual
---@virtual
---@param obj any
---@return number
function m:CompareTo(obj) end

---@static
---@param value string
---@return boolean
function m.Parse(value) end

---@static
---@param value string
---@return boolean, System.Boolean
function m.TryParse(value) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

---@overload fun(message:string) @extension
---@extension
function m.MustBeTrue() end

---@overload fun(message:string) @extension
---@extension
function m.MustBeFalse() end

System.Boolean = m
return m
