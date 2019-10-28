---@class System.Enum : System.ValueType
local m = {}

---@overload fun(value:string, ignoreCase:boolean):(, any) @static
---@static
---@param value string
---@return boolean, any
function m.TryParse(value) end

---@overload fun(enumType:System.Type, value:string, ignoreCase:boolean): @static
---@static
---@param enumType System.Type
---@param value string
---@return any
function m.Parse(enumType, value) end

---@static
---@param enumType System.Type
---@return System.Type
function m.GetUnderlyingType(enumType) end

---@static
---@param enumType System.Type
---@return System.Array
function m.GetValues(enumType) end

---@static
---@param enumType System.Type
---@param value any
---@return string
function m.GetName(enumType, value) end

---@static
---@param enumType System.Type
---@return string[]
function m.GetNames(enumType) end

---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@overload fun(enumType:System.Type, value:number): @static
---@static
---@param enumType System.Type
---@param value any
---@return any
function m.ToObject(enumType, value) end

---@static
---@param enumType System.Type
---@param value any
---@return boolean
function m.IsDefined(enumType, value) end

---@static
---@param enumType System.Type
---@param value any
---@param format string
---@return string
function m.Format(enumType, value, format) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@overload fun(format:string):
---@overload fun(provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@virtual
---@param target any
---@return number
function m:CompareTo(target) end

---@param flag System.Enum
---@return boolean
function m:HasFlag(flag) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

System.Enum = m
return m
