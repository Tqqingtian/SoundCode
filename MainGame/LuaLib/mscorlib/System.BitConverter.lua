---@class System.BitConverter : System.Object
---@field public IsLittleEndian boolean @static
local m = {}

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@static
---@param value boolean
---@return string
function m.GetBytes(value) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToChar(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToInt16(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToInt32(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToInt64(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToUInt16(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToUInt32(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToUInt64(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToSingle(value, startIndex) end

---@static
---@param value string
---@param startIndex number
---@return number
function m.ToDouble(value, startIndex) end

---@overload fun(value:string): @static
---@overload fun(value:string, startIndex:number): @static
---@static
---@param value string
---@param startIndex number
---@param length number
---@return string
function m.ToString(value, startIndex, length) end

---@static
---@param value string
---@param startIndex number
---@return boolean
function m.ToBoolean(value, startIndex) end

---@static
---@param value number
---@return number
function m.DoubleToInt64Bits(value) end

---@static
---@param value number
---@return number
function m.Int64BitsToDouble(value) end

System.BitConverter = m
return m
