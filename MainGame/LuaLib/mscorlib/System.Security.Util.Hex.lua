---@class System.Security.Util.Hex : System.Object
local m = {}

---@static
---@param sArray string
---@return string
function m.EncodeHexString(sArray) end

---@static
---@param val number
---@return number
function m.ConvertHexDigit(val) end

---@static
---@param hexString string
---@return string
function m.DecodeHexString(hexString) end

System.Security.Util.Hex = m
return m
