---@class System.Text.EncoderFallback : System.Object
---@field public ReplacementFallback System.Text.EncoderFallback @static
---@field public ExceptionFallback System.Text.EncoderFallback @static
---@field public MaxCharCount number
local m = {}

---@abstract
---@return System.Text.EncoderFallbackBuffer
function m:CreateFallbackBuffer() end

System.Text.EncoderFallback = m
return m
