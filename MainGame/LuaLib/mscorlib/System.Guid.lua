---@class System.Guid : System.ValueType
---@field public Empty System.Guid @static
local m = {}

---@static
---@param input string
---@return System.Guid
function m.Parse(input) end

---@static
---@param input string
---@return boolean, System.Guid
function m.TryParse(input) end

---@static
---@param input string
---@param format string
---@return System.Guid
function m.ParseExact(input, format) end

---@static
---@param input string
---@param format string
---@return boolean, System.Guid
function m.TryParseExact(input, format) end

---@return string
function m:ToByteArray() end

---@overload fun(format:string):
---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(g:System.Guid): @virtual
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@overload fun(value:System.Guid): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@static
---@param a System.Guid
---@param b System.Guid
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Guid
---@param b System.Guid
---@return boolean
function m.op_Inequality(a, b) end

---@static
---@return System.Guid
function m.NewGuid() end

System.Guid = m
return m
