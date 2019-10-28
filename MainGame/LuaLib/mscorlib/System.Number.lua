---@class System.Number : System.Object
local m = {}

---@static
---@param number System.Byte*
---@param value System.Decimal
---@return boolean, System.Decimal
function m.NumberBufferToDecimal(number, value) end

---@static
---@param value System.Decimal
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatDecimal(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatDouble(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatInt32(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatUInt32(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatInt64(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatUInt64(value, format, info) end

---@static
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function m.FormatSingle(value, format, info) end

System.Number = m
return m
