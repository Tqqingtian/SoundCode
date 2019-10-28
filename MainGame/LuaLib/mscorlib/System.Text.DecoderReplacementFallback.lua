---@class System.Text.DecoderReplacementFallback : System.Text.DecoderFallback
---@field public DefaultString string
---@field public MaxCharCount number
local m = {}

---@virtual
---@return System.Text.DecoderFallbackBuffer
function m:CreateFallbackBuffer() end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

System.Text.DecoderReplacementFallback = m
return m
