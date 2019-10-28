---@class System.Runtime.Serialization.FormatterConverter : System.Object
local m = {}

---@overload fun(value:any, typeCode:System.TypeCode): @virtual
---@virtual
---@param value any
---@param type System.Type
---@return any
function m:Convert(value, type) end

---@virtual
---@param value any
---@return boolean
function m:ToBoolean(value) end

---@virtual
---@param value any
---@return number
function m:ToChar(value) end

---@virtual
---@param value any
---@return number
function m:ToSByte(value) end

---@virtual
---@param value any
---@return number
function m:ToByte(value) end

---@virtual
---@param value any
---@return number
function m:ToInt16(value) end

---@virtual
---@param value any
---@return number
function m:ToUInt16(value) end

---@virtual
---@param value any
---@return number
function m:ToInt32(value) end

---@virtual
---@param value any
---@return number
function m:ToUInt32(value) end

---@virtual
---@param value any
---@return number
function m:ToInt64(value) end

---@virtual
---@param value any
---@return number
function m:ToUInt64(value) end

---@virtual
---@param value any
---@return number
function m:ToSingle(value) end

---@virtual
---@param value any
---@return number
function m:ToDouble(value) end

---@virtual
---@param value any
---@return System.Decimal
function m:ToDecimal(value) end

---@virtual
---@param value any
---@return System.DateTime
function m:ToDateTime(value) end

---@virtual
---@param value any
---@return string
function m:ToString(value) end

System.Runtime.Serialization.FormatterConverter = m
return m
