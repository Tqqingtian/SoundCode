---@class System.Text.DecoderFallback : System.Object
---@field public ReplacementFallback System.Text.DecoderFallback @static
---@field public ExceptionFallback System.Text.DecoderFallback @static
---@field public MaxCharCount number
local m = {}

---@abstract
---@return System.Text.DecoderFallbackBuffer
function m:CreateFallbackBuffer() end

System.Text.DecoderFallback = m
return m
