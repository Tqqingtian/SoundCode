---@class System.Text.InternalEncoderBestFitFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field public Remaining number
local m = {}

---@overload fun(charUnknownHigh:number, charUnknownLow:number, index:number): @virtual
---@virtual
---@param charUnknown number
---@param index number
---@return boolean
function m:Fallback(charUnknown, index) end

---@virtual
---@return number
function m:GetNextChar() end

---@virtual
---@return boolean
function m:MovePrevious() end

---@virtual
function m:Reset() end

System.Text.InternalEncoderBestFitFallbackBuffer = m
return m
