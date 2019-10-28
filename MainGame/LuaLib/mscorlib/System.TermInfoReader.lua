---@class System.TermInfoReader : System.Object
local m = {}

---@overload fun(number:System.TermInfoNumbers):
---@overload fun(tstr:System.TermInfoStrings):
---@param boolean System.TermInfoBooleans
---@return boolean
function m:Get(boolean) end

---@param tstr System.TermInfoStrings
---@return string
function m:GetStringBytes(tstr) end

System.TermInfoReader = m
return m
