---@class System.Text.InternalEncoderBestFitFallback : System.Text.EncoderFallback
---@field public MaxCharCount number
local m = {}

---@virtual
---@return System.Text.EncoderFallbackBuffer
function m:CreateFallbackBuffer() end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

System.Text.InternalEncoderBestFitFallback = m
return m
