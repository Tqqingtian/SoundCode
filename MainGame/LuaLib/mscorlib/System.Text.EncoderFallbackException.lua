---@class System.Text.EncoderFallbackException : System.ArgumentException
---@field public CharUnknown number
---@field public CharUnknownHigh number
---@field public CharUnknownLow number
---@field public Index number
local m = {}

---@return boolean
function m:IsUnknownSurrogate() end

System.Text.EncoderFallbackException = m
return m
