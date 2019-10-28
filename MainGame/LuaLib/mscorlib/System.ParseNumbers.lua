---@class System.ParseNumbers : System.Object
local m = {}

---@overload fun(value:string, fromBase:number, flags:number, parsePos:System.Int32*): @static
---@static
---@param value string
---@param fromBase number
---@param flags number
---@return number
function m.StringToInt(value, fromBase, flags) end

---@static
---@param value number
---@param toBase number
---@param width number
---@param paddingChar number
---@param flags number
---@return string
function m.LongToString(value, toBase, width, paddingChar, flags) end

---@overload fun(value:string, fromBase:number, flags:number, parsePos:System.Int32*): @static
---@static
---@param value string
---@param fromBase number
---@param flags number
---@return number
function m.StringToLong(value, fromBase, flags) end

---@static
---@param value number
---@param toBase number
---@param width number
---@param paddingChar number
---@param flags number
---@return string
function m.IntToString(value, toBase, width, paddingChar, flags) end

System.ParseNumbers = m
return m
