---@class System.IConvertible : table
local m = {}

---@abstract
---@return System.TypeCode
function m:GetTypeCode() end

---@abstract
---@param provider System.IFormatProvider
---@return boolean
function m:ToBoolean(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToChar(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToSByte(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToByte(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToInt16(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToUInt16(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToInt32(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToUInt32(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToInt64(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToUInt64(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToSingle(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return number
function m:ToDouble(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return System.Decimal
function m:ToDecimal(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return System.DateTime
function m:ToDateTime(provider) end

---@abstract
---@param provider System.IFormatProvider
---@return string
function m:ToString(provider) end

---@abstract
---@param conversionType System.Type
---@param provider System.IFormatProvider
---@return any
function m:ToType(conversionType, provider) end

System.IConvertible = m
return m
