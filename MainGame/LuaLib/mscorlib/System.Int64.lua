---@class System.Int64 : System.ValueType
---@field public MaxValue number @static
---@field public MinValue number @static
local m = {}

---@overload fun(value:number): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@overload fun(obj:number): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(provider:System.IFormatProvider): @virtual
---@overload fun(format:string):
---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@overload fun(s:string, style:System.Globalization.NumberStyles): @static
---@overload fun(s:string, provider:System.IFormatProvider): @static
---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider): @static
---@static
---@param s string
---@return number
function m.Parse(s) end

---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):(, System.Int64) @static
---@static
---@param s string
---@return boolean, System.Int64
function m.TryParse(s) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

System.Int64 = m
return m
