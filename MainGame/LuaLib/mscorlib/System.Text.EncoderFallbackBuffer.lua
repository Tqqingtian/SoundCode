---@class System.Text.EncoderFallbackBuffer : System.Object
---@field public Remaining number
local m = {}

---@overload fun(charUnknownHigh:number, charUnknownLow:number, index:number): @abstract
---@abstract
---@param charUnknown number
---@param index number
---@return boolean
function m:Fallback(charUnknown, index) end

---@abstract
---@return number
function m:GetNextChar() end

---@abstract
---@return boolean
function m:MovePrevious() end

---@virtual
function m:Reset() end

System.Text.EncoderFallbackBuffer = m
return m
