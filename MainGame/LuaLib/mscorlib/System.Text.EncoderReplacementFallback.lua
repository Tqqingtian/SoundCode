---@class System.Text.EncoderReplacementFallback : System.Text.EncoderFallback
---@field public DefaultString string
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

System.Text.EncoderReplacementFallback = m
return m
